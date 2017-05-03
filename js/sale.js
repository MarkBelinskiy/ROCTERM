if(!basket_animation) {
	var animation = 0;
}
if(basket_animation) {
	var animation = 600;
}
if(!basket_direction) {
	var direction = ["fixed-right", "opened-right"];
}
if(basket_direction == 1) {
	var direction = ["fixed-left", "opened-left"];
}
if(basket_direction == 2) {
	var direction = ["fixed-top", "opened-top"];
}
if(basket_direction == 3) {
	var direction = ["fixed-bottom", "opened-bottom"];
}
$(document).ready(function () {
	$("body").append('<div class="sale-popup"></div>');
	if(basket_type == 1) {
		$('body').append('<div class="sale-basket-overlay"></div>');
		$('#sale-basket-goods').wrap('<div class="sale-basket-animation-' + direction[0] + ' sale-toshow"></div>').before('<div class="sale-basket-title">Моя корзина</div>');
	}
	$(".sale-basket-overlay").on("click", function () {
		$(".sale-toshow").removeClass(direction[1]);
		$(".sale-basket-overlay").fadeOut(600);
	});
	// currency
	$("select#sale-currencies").on("change", function () {
		var curr = $(this).val(), course = $(this).data('course');
		if($.cookie('sale-user-course') != curr) {
			$.cookie('sale-user-course', curr, {
				path: '/'
			});
			if(course != "") {
				$.cookie('sale-course', course, {
					path: '/'
				});
			} else {
				$.removeCookie('sale-course', {
					path: '/'
				});
			}
			if (typeof clear_filters != 'undefined' && $.isFunction(clear_filters)) {
				clear_filters();
			}
			replace_prices(curr);
		}
	});
	$("#sale-currencies>a").on("click", function (e) {
		e.preventDefault();
		$("#sale-currencies>a").removeClass('selected');
		$(this).addClass('selected');
		var curr = $(this).attr('href'), course = $(this).data('course');
		if($.cookie('sale-user-course') != curr) {
			$.cookie('sale-user-course', curr, {
				path: '/'
			});
			if(course != "") {
				$.cookie('sale-course', course, {
					path: '/'
				});
			} else {
				$.removeCookie('sale-course', {
					path: '/'
				});
			}
			if (typeof clear_filters != 'undefined' && $.isFunction(clear_filters)) {
				clear_filters();
			}
			replace_prices(curr);
		}
	});
	// pagination
	$(document).on("click", "#sale-user-pagination>a", function (e) {
		e.preventDefault();
		$("#sale-user-orders").addClass('loading');
		$.post("/engine/ajax/sale.php", {
			action: 'userpagination',
			userpage: $(this).data('page')
		}, function (result) {
			if(result != "error") {
				$("#sale-user-orders").stop().fadeOut(250, function () {
					$(this).html(result).hide().fadeIn(250);
					$("#sale-user-orders").removeClass('loading');
					sale_reinit();
				});
			}
		});
	});
	// sort
	$(document).on("click", "#sale-user-sort>a", function (e) {
		e.preventDefault();
		if($(this).hasClass('active')) return;
		$("#sale-user-orders").addClass('loading');
		var sort = $(this).data("sort"),
			sortval = $(this).data("sortval");
		if(sort == "clear") {
			$.removeCookie('sale-user-sort', {
				path: '/'
			});
		} else {
			$.cookie('sale-user-sort', JSON.stringify({
				"sort": [sort, sortval]
			}), {
				path: '/'
			});
		}
		$.post("/engine/ajax/sale.php", {
			action: 'usersort',
			sort: sort,
			sortval: sortval
		}, function (result) {
			if(result != "error") {
				$("#sale-user-orders").stop().fadeOut(250, function () {
					$(this).html(result).hide().fadeIn(250);
					$("#sale-user-orders").removeClass('loading');
					sale_reinit();
				});
			}
		});
	});
	// устанавливает новые цены в зависимости от опций
	if(typeof generate_gs !== "undefined") {
		var sale_price_change = generate_gs.join(', ');
		$(sale_price_change).on("change click", function (event) {
			// false as select click
			if((event.type == "click" && $(this).prop("tagName").toLowerCase() == "select") || $(this).data("status") == "disabled" || $(event.target).hasClass('active')) {
				return false;
			}
			var what_element_changed = $(this).prop("tagName").toLowerCase(),
				clicked_index, get_real_prices = {},
				type_clicked = $(this).attr("type");
			// add active class
			if(event.type == "click" && $(event.target).prop("tagName").toLowerCase() == "button") {
				$(this).find("button").removeClass("active");
				$(event.target).addClass("active");
			}
			if(event.type == "click" && $(event.target).prop("tagName").toLowerCase() == "span") {
				$(this).find("span").removeClass("active");
				$(event.target).addClass("active");
			}
			// indexes
			if(what_element_changed == "select") {
				clicked_index = $(this).find("option:selected").index();
			}
			if(what_element_changed == "div") {
				clicked_index = $(this).find("button.active").index();
			}
			if(what_element_changed == "color") {
				clicked_index = $(this).find("span.active").index();
			}
			$.each(generate_gs, function (i, e) {
				var active_index, this_elem = $(e).prop("tagName").toLowerCase(),
					type_this = $(e).attr("type");
				// indexes
				if(this_elem == "select") {
					get_real_prices[generate_en[i]] = $(e).val();
					active_index = $(e).find("option:selected").index();
				}
				if(this_elem == "div") {
					get_real_prices[generate_en[i]] = $(e).find("button.active").data("option");
					active_index = $(e).find("button.active").index();
				}
				if(this_elem == "color") {
					get_real_prices[generate_en[i]] = $(e).find("span.active").data("option");
					active_index = $(e).find("span.active").index();
				}
				// check enebled/disabled
				if(type_clicked == "replace" && type_this != "replace" && clicked_index != 0) {
					if(this_elem == "select") {
						$(e).find("option:first-child").prop("selected", true);
						$(e).data("status", "disabled").prop("disabled", true);
					}
					if(this_elem == "div") {
						$(e).find("button").removeClass("active");
						$(e).find("button:first-child").addClass("active");
						$(e).data("status", "disabled").find("button").prop("disabled", true);
					}
					if(this_elem == "color") {
						$(e).find("span").removeClass("active");
						$(e).find("span:first-child").addClass("active");
						$(e).data("status", "disabled").find("span").addClass("disabled");
					}
				} else {
					if(this_elem == "select") {
						$(e).data("status", "enabled").prop("disabled", false);
					}
					if(this_elem == "div") {
						$(e).data("status", "enabled").find("button").prop("disabled", false);
					}
					if(this_elem == "color") {
						$(e).data("status", "enabled").find("span").removeClass("disabled");
					}
				}
			});
			$.ajax({
				url: "/engine/ajax/sale.php",
				data: {
					action: 'get_real_prices',
					options: get_real_prices,
					xfields: generate_xf
				},
				type: "POST",
				async: false,
				success: function (data) {
					if(!isObject(data)) {
						data = JSON.parse(data);
					}
					if(data.error !== undefined) {
						console.log("Ошибка");
					} else {
						$('.sale-price-real[data-module="show"]').data("base", data.real.real).text(data.course.real);
						$('.sale-price-old[data-module="show"]').data("base", data.real.old).text(data.course.old);
					}
				}
			});
		});
	}
	$(window).resize(function () {
		basket_resize();
	});
	$(document).on("click", ".ui-widget-overlay", function (e) {
		$("#sale-basket-goods").dialog("close");
	});
	$(document).on("click", "#sale-box", function (e) {
		e.preventDefault();
		if(sale_basket_click) {
			location.href = "/order.html";
		} else {
			basket();
		}
	});
	$(".sale-gen-pm i.sale-minus").click(function () {
		var iv = $(this).next("input").val();
		if(iv > 1) {
			$(this).next("input").val(Number(iv) - 1);
		}
	});
	$(".sale-gen-pm i.sale-plus").click(function () {
		var iv = $(this).prev("input").val();
		$(this).prev("input").val(Number(iv) + 1);
	});
	// поиск куки и наполнение корзины
	//$(".sale-empty-tr").css("display", "none");
	if(document.location.pathname != "/order.html") {
		$.ajax({
			url: "/engine/ajax/sale.php",
			data: {
				action: 'add_to_cart',
			},
			type: "POST",
			async: false,
			success: function (data) {
				$(".sale-goods").html(data);
			}
		});
	} else {
		$("#sale-basket").hide().remove();
	}
	if($.cookie('sale-cookie-info')) {
		sale_order();
		sale_count();
		sale_calc();
		sale_reinit();
	}
	// show hide click
	$(document).on("click", ".sale-show-hide", function () {
		$(".sale-show-hide-items").slideToggle(150, function () {
			if($(this).is(":visible")) {
				s_h = "open"
			} else {
				s_h = "close"
			}
			$.cookie('sale-show-hide', s_h, {
				path: '/'
			});
		});
	});
	// перемещение продукта
	$(".sale-news").draggable({
		revert: true,
		drag: function () {
			$(this).addClass("active");
			$(this).closest("#dle-content").addClass("active");
		},
		stop: function () {
			$(this).removeClass("active").closest("#dle-content").removeClass("active");
		}
	});
	// кнопка купить
	$(document).on("click", ".sale-buy", function (e) {
		e.preventDefault();
		var sale_moved = $(this).data("id");
		sale_func(sale_moved);
	});
	// кнопка упаковку
	$(document).on("click", ".sale-buy-pack", function (e) {
		e.preventDefault();
		var sale_moved = $(this).data("id");
		var how_many = $(this).data("how");
		sale_func(sale_moved, how_many);
	});
	// быстрый заказ
	$(document).on("click", ".sale-buy-fast", function (e) {
		e.preventDefault();
		var sale_moved = $(this).data("id");
		sale_func(sale_moved, false, "/order.html");
	});
	// закидывание в корзину
	if(typeof droppable == 'function') {
		$("#sale-basket").droppable({
			activeClass: "active",
			hoverClass: "hover",
			tolerance: "touch",
			drop: function (event, ui) {
				var sale_moved = ui.draggable;
				sale_func(sale_moved);
			}
		});
	}
	// обновить
	$(document).on("click", ".sale-refresh", function () {
		location.reload();
	});
	// изменение количества
	$(document).on("keyup", ".sale-goods-item-count", function () {
		if($(this).val() < 1) {
			$(this).val(1);
			return false;
		}
		sale_recount($(this));
	});
	// изменение количества плюс/минус
	$(document).on("click", ".sale-count-og>.sale-minus, .sale-count-og>.sale-plus", function (e) {
		var allready = Number($(this).parent().children(".sale-goods-item-count").val());
		if($(e.target).hasClass("sale-plus")) {
			var count_that = $(this).parent().children(".sale-goods-item-count").val(allready + 1);
			sale_recount(count_that);
		} else {
			if(allready > 1) {
				var count_that = $(this).parent().children(".sale-goods-item-count").val(allready - 1);
				sale_recount(count_that);
			} else {
				$(this).parent().children(".sale-goods-item-count").val(1);
			}
		}
	});
	// Функция для удаления товара из списка
	$(document).on("click", ".sale-goods-delete", function () {
		var delete_id = $(this).attr("sale-id");
		$(this).closest("tr").fadeOut(150, function () {
			$(this).remove();
			if($.cookie('sale-cookie-info')) {
				var cookie_arr = JSON.parse($.cookie('sale-cookie-info'));
				if(count(cookie_arr) > 1) {
					delete cookie_arr[delete_id];
					var save_sale_cookie = JSON.stringify(cookie_arr);
					$.cookie('sale-cookie-info', save_sale_cookie, {
						path: '/'
					});
				} else {
					$.removeCookie('sale-cookie-info', {
						path: '/'
					});
					$.ajax({
						url: "/engine/ajax/sale.php",
						data: {
							action: 'add_to_cart',
						},
						type: "POST",
						async: false,
						success: function (data) {
							$(".sale-goods").html(data);
						}
					});
					if(document.location.pathname == "/order.html") {
						$("#sale-order-form").remove();
						//location.reload();
					}
				}
			}
			if(document.location.pathname == "/order.html" && refresh_ajax) {
				$.ajax({
					url: "/engine/ajax/sale.php",
					data: {
						action: 'refresh_items',
					},
					type: "POST",
					success: function (data) {
						$(".sale-order-page").next("script").remove();
						$(".sale-order-page").replaceWith(data);
						sale_reinit();
						replace_prices(false, false, true);
					}
				});
			} else {
				basket_resize();
				sale_order();
				sale_count();
			}
		});
	});
	// errors
	function sale_errors(field) {
		$.each(field, function (key, val) {
			$(".sale-finish-" + val).addClass("sale-order-error");
			setTimeout(function () {
				$(".sale-finish-" + val).removeClass("sale-order-error");
			}, 2000);
		});
	}
	// заказ
	$(".sale-finish").on("click", function () {
		var name = $(".sale-finish-name").val();
		var userid = $(".sale-finish-name").attr("user");
		var email = $(".sale-finish-email").val();
		var payment = $(".sale-finish-payment option:selected").text();
		var method = $(".sale-finish-payment option:selected").val();
		var delivery = $(".sale-finish-delivery option:selected").text();
		var comment = $(".sale-finish-comment").val();
		var total = $(".sale-price-total").text();
		var count = $(".sale-goods-count").text();
		var xf = [];
		$(".xf-sale").each(function (i, v) {
			xf[i] = {
				name: $(this).attr("name"),
				value: $(this).val()
			}
		});
		var items = [];
		$(".sale-goods-item-count").each(function (i, v) {
			items[i] = {
				id: $(this).attr("sale-id"),
				sku: $(this).attr("sale-sku"),
				count: $(this).val(),
				options: $(this).attr("sale-options")
			}
		});
		$.ajax({
			url: "/engine/ajax/sale.php",
			data: {
				action: 'sale_finish',
				name: name,
				userid: userid,
				xf: xf,
				email: email,
				payment: payment,
				method: method,
				delivery: delivery,
				comment: comment,
				total: total,
				count: count,
				items: items
			},
			type: "POST",
			success: function (data) {
				if(data.error !== undefined) {
					sale_errors(data.error);
				} else if(data.liqpay !== undefined) {
					location.href = data.liqpay[0];
				} else if(data.unitpay !== undefined) {
					location.href = data.unitpay[0];
				} else {
					$(sale_finish_replace).slideUp(750, function () {
						$(this).replaceWith(data).slideDown(750);
						$("html, body").animate({
							scrollTop: 0
						}, 750);
						$.removeCookie('sale-cookie-info', {
							path: '/'
						});
					});
				}
			}
		});
	});
	replace_prices();
});

function isObject(str) {
	return(typeof str === "object" && !Array.isArray(str) && str !== null);
}
// корзина
function basket() {
	if(!basket_type) {
		$('#sale-basket-goods').dialog({
			autoOpen: true,
			resizable: false,
			modal: true,
			draggable: false,
			width: "auto",
			height: "auto",
			title: "Корзина",
			closeText: "",
			hide: {
				delay: animation
			},
			dialogClass: "modalfixed dle-popup-alert",
			create: function (event, ui) {
				if(basket_animation) {
					$('.modalfixed.ui-dialog').addClass(direction[0]);
				}
			},
			open: function (event, ui) {
				if(basket_animation) {
					$('.modalfixed.ui-dialog').addClass(direction[1]);
				}
				$('#sale-basket-goods').dialog("option", "position", {
					my: "center",
					at: "center",
					of : window
				});
				sale_reinit();
			},
			beforeClose: function (event, ui) {
				if(basket_animation) {
					$('.modalfixed.ui-dialog').removeClass(direction[1]);
				} else {
					$(".ui-widget, .ui-widget-overlay").remove();
				}
			},
			buttons: {
				'Оформить заказ': function () {
					location.href = "/order.html";
				}
			}
		});
	}
	if(basket_type == 1) {
		$(".sale-toshow").addClass(direction[1]);
		$(".sale-basket-overlay").fadeIn(600);
	}
}
// Установка цен
function clear_price_replace() {
	sale_ready = false;
	// filters
	$('.sale-price-real, .sale-price-old, .sale-price-total, .sale-price-nodiscount, .filters_d').each(function () {
		$(this).removeClass("sale-replaced");
	});
}

function replace_prices_check(name) {
	var arr = {};
	// filters
	if($(".sale-price-" + name).length || $(".filters_d."+name).length) {
		$(".sale-price-" + name+", .filters_d").each(function () {
			if($(this).data("replaced") != precurr && !$(this).hasClass("sale-replaced")) {
				arr[$(this).data("obj")] = $(this).data('base');
			}
		});
		if(arr.length !== 0) {
			sale_prereplace[name] = arr;
			return true;
		} else {
			return false;
		}
	} else {
		return false;
	}
}

function replace_prices(curr = false, clear = false, module = false) {
	if(clear) {
		clear_price_replace();
	}
	if(!curr && $("#sale-currencies>option").length) {
		curr = $("#sale-currencies").val();
	}
	if(precurr != curr) {
		clear_price_replace();
		precurr = curr;
	}

	replace_prices_check("real");
	replace_prices_check("old");
	replace_prices_check("total");
	replace_prices_check("nodiscount");

	if((Object.keys(sale_prereplace).length > 0 && !sale_ready) || (Object.keys(sale_prereplace).length > 0 && module)) {
		sale_ready = 1;
		var count = 0;
		$('.sale-goods-item-count').each(function () {
			count += Number($(this).val());
		});
		sale_prereplace['count'] = count;
		// filters
		$('.sale-price-real, .sale-price-old, .sale-price-total, .sale-price-nodiscount, .filters_d').each(function () {
			if($(this).data("replaced") != precurr) {
				$(this).addClass('sale-prereplaced');
			}
		});

		$.post("/engine/ajax/sale.php", {
			action: "currency",
			sale_prereplace
		}, function (result) {
			var courses = $.parseJSON(result);
			if(typeof courses.erorr === 'undefined') {
				$.each(courses, function (name, arr) {
					$.each(arr, function (key, price) {
						if($(this).data("replaced") != precurr) {
							if(!isNaN(key)) {
								$('[data-obj="' + key + '"]').removeClass('sale-prereplaced').data("replaced", curr).html(price).addClass("sale-replaced");
							} else {
								var sarr = key.split("_");
								$('[data-obj="' + key + '"]').removeClass('sale-prereplaced').data("replaced", curr).val(price).attr("default", price).addClass("sale-replaced");
							}
						}
					});
				});
			}
		});
	} else {
		sale_ready++;
	}
}
// ресайз
function basket_resize() {
	if($(".ui-dialog").length) $("#sale-basket-goods").dialog("option", "position", {
		my: "center",
		at: "center",
		of : window
	});
}
// пересчет количества в корзине
function sale_recount(elem) {
	var t_id = $(elem).attr("sale-id");
	var changed_value = $(elem).val();
	var cookie_arr = JSON.parse($.cookie('sale-cookie-info'));
	cookie_arr[t_id] = {
		"id": cookie_arr[t_id]['id'],
		"options": cookie_arr[t_id]['options'],
		"title": cookie_arr[t_id]['title'],
		"price": cookie_arr[t_id]['price'],
		"img": cookie_arr[t_id]['img'],
		"full_img": cookie_arr[t_id]['full_img'],
		"count": changed_value
	};
	var save_sale_cookie = JSON.stringify(cookie_arr);
	sale_cookie(save_sale_cookie);
	sale_count();
	sale_calc();
	if(document.location.pathname == "/order.html" && refresh_ajax) {
		$.ajax({
			url: "/engine/ajax/sale.php",
			data: {
				action: 'refresh_items',
			},
			type: "POST",
			success: function (data) {
				$(".sale-order-page").next("script").remove();
				$(".sale-order-page").replaceWith(data);
				sale_reinit();
				replace_prices(false, false, true);
			}
		});
	}
}
// запись/перезапись в куки
function sale_cookie(save_sale_cookie) {
	$.cookie('sale-cookie-info', save_sale_cookie, {
		path: '/'
	});
}
// показать/скрыть кнопку
function sale_order() {
	var if_find = $("#sale-basket").find(".sale-goods-item").length;
	var if_find_button = $("#sale-basket").find(".sale-goods-order").length;
	if(if_find > 0) {
		$(".sale-goods-order").show();
	} else {
		$(".sale-goods-order").hide();
	}
}
// калькулятор
function sale_calc() {
	var calc = 0;
	$(".sale-goods-item").each(function () {
		var price = $(this).find(".sale-goods-item-price").html();
		var count = $(this).find(".sale-goods-item-count").val();
		calc = (Number(price) * Number(count)) + Number(calc);
	});
	if(document.location.pathname != "/order.html") {
		$(".sale-price-total").html(calc);
	}
}
// товаров в корзине
function sale_count() {
	var items_count = 0;
	$(".sale-goods-item-count").each(function () {
		items_count = Number($(this).val()) + Number(items_count);
	});
	$(".sale-goods-count").html(items_count);
}
// base64
function base64_encode(stringToEncode) {
	if(typeof window !== 'undefined') {
		if(typeof window.btoa !== 'undefined') {
			return window.btoa(escape(encodeURIComponent(stringToEncode)))
		}
	} else {
		return new Buffer(stringToEncode).toString('base64')
	}
	var b64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='
	var o1
	var o2
	var o3
	var h1
	var h2
	var h3
	var h4
	var bits
	var i = 0
	var ac = 0
	var enc = ''
	var tmpArr = []
	if(!stringToEncode) {
		return stringToEncode
	}
	stringToEncode = unescape(encodeURIComponent(stringToEncode))
	do {
		o1 = stringToEncode.charCodeAt(i++)
		o2 = stringToEncode.charCodeAt(i++)
		o3 = stringToEncode.charCodeAt(i++)
		bits = o1 << 16 | o2 << 8 | o3
		h1 = bits >> 18 & 0x3f
		h2 = bits >> 12 & 0x3f
		h3 = bits >> 6 & 0x3f
		h4 = bits & 0x3f
		tmpArr[ac++] = b64.charAt(h1) + b64.charAt(h2) + b64.charAt(h3) + b64.charAt(h4)
	} while (i < stringToEncode.length)
	enc = tmpArr.join('')
	var r = stringToEncode.length % 3
	return(r ? enc.slice(0, r - 3) : enc) + '==='.slice(r || 3)
}

function base64_decode(encodedData) {
	if(typeof window !== 'undefined') {
		if(typeof window.atob !== 'undefined') {
			return decodeURIComponent(unescape(window.atob(encodedData)))
		}
	} else {
		return new Buffer(encodedData, 'base64').toString('utf-8')
	}
	var b64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='
	var o1
	var o2
	var o3
	var h1
	var h2
	var h3
	var h4
	var bits
	var i = 0
	var ac = 0
	var dec = ''
	var tmpArr = []
	if(!encodedData) {
		return encodedData
	}
	encodedData += ''
	do {
		h1 = b64.indexOf(encodedData.charAt(i++))
		h2 = b64.indexOf(encodedData.charAt(i++))
		h3 = b64.indexOf(encodedData.charAt(i++))
		h4 = b64.indexOf(encodedData.charAt(i++))
		bits = h1 << 18 | h2 << 12 | h3 << 6 | h4
		o1 = bits >> 16 & 0xff
		o2 = bits >> 8 & 0xff
		o3 = bits & 0xff
		if(h3 === 64) {
			tmpArr[ac++] = String.fromCharCode(o1)
		} else if(h4 === 64) {
			tmpArr[ac++] = String.fromCharCode(o1, o2)
		} else {
			tmpArr[ac++] = String.fromCharCode(o1, o2, o3)
		}
	} while (i < encodedData.length)
	dec = tmpArr.join('')
	return decodeURIComponent(escape(dec.replace(/\0+$/, '')))
}
// корзина функция
function sale_func(sale_moved, how_many, fast) {
	// получаем куки
	if(!$.cookie('sale-cookie-info')) {
		var cookie_arr = {};
	} else {
		var cookie_arr = JSON.parse($.cookie('sale-cookie-info'));
	}
	var func = "on";
	// наполняем опции, если есть
	var sale_options = {};
	if(typeof generate_en !== "undefined") {
		$.each(generate_en, function (i, e) {
			if(generate_gv[i] == "select") {
				sale_options[e] = $(".sale-gen-select-" + e + " option:selected").val();
			}
			if(generate_gv[i] == "button") {
				sale_options[e] = $(".sale-gen-select-" + e + ">button.active").data("option");
			}
			if(generate_gv[i] == "color") {
				sale_options[e] = $(".sale-gen-select-" + e + ">span.active").data("option");
			}
		});
	}
	// наполняем строки и заголовки
	var string_options = [];
	var title_options = "";
	$.each(sale_options, function (i, e) {
		string_options.push(e);
		title_options += " (" + e + ")";
	});
	// очищаем заголовки и объеденяем куки
	var sale_opt_for_title = eval("sale_goods_info_" + sale_moved).sale_gettitle + " " + title_options.trim();
	var sale_opt_for_cookie = JSON.stringify(sale_options);
	sale_to_title = sale_opt_for_title.replace(/\(\)/g, "").trim(); // replace title
	var sale_to_cookie = string_options.join("_");
	// проверяем количество
	if(!how_many) {
		if($(".sale-count-buy").val()) {
			var new_count = $(".sale-count-buy").val();
		} else {
			var new_count = 1;
		}
	} else {
		var new_count = how_many;
	}
	// проверяем товар в корзине, если не включено количество
	$(document).find(".sale-goods-item").each(function () {
		if(sale_count_onoff == "0" && sale_to_title == $(this).find(".sale-goods-item-name").text()) {
			$(".sale-popup").html('Товар уже в корзине').addClass("moved").delay(2000).queue(function () {
				$(this).removeClass("moved").dequeue()
			});
			func = "off";
		}
	});
	if(func == "off") return false;
	// сообщение
	$(".sale-popup").removeClass("moved").html('Товар &laquo;' + sale_to_title + '&raquo; успешно добавлен в корзину').addClass("moved").delay(2000).queue(function () {
		$(this).removeClass("moved").dequeue()
	});
	// проверяем в цикле товары в корзине
	$(document).find(".sale-goods-item").each(function () {
		if(sale_to_title == $(this).find(".sale-goods-item-name").text().trim() && $(this).attr("sale-id") == sale_moved + "_" + sale_to_cookie) {
			var item_count = $(this).find(".sale-goods-item-count");
			var item_count_this = Number(item_count.val()) + Number(new_count);
			item_count.val(item_count_this);
			cookie_arr[sale_moved + "_" + sale_to_cookie] = {
				"id": sale_moved,
				"options": sale_opt_for_cookie,
				//"title" : sale_to_title,
				//"price" : sale_price,
				//"img" : sale_img,
				//"full_img" : sale_full_img,
				"count": item_count_this,
				//"type" : eval("sale_goods_info_" + sale_moved).sale_type
			};
			var save_sale_cookie = JSON.stringify(cookie_arr);
			sale_cookie(save_sale_cookie);
			sale_count();
			func = "off";
		}
	});
	if(func == "off") return false;
	// запись в куки
	cookie_arr[sale_moved + "_" + sale_to_cookie] = {
		"id": sale_moved,
		"options": sale_opt_for_cookie,
		"count": new_count
	};
	var save_sale_cookie = JSON.stringify(cookie_arr);
	sale_cookie(save_sale_cookie);
	// проверка корзины
	//$(".sale-empty-tr").css("display", "none");
	// проверка количества
	$.ajax({
		url: "/engine/ajax/sale.php",
		data: {
			action: 'add_to_cart',
		},
		type: "POST",
		async: false,
		success: function (data) {
			$(".sale-goods").html(data);
			sale_reinit();
			replace_prices(false, false, true);
		}
	});
	sale_count();
	sale_order();
	// если быстрая покупка то переходим
	if(fast) {
		location.href = fast;
	}
}
// количество куки в объекте
function count(obj) {
	var count = 0;
	for(var prs in obj) {
		if(obj.hasOwnProperty(prs)) count++;
	}
	return count;
}
// таймер
var days = 24 * 60 * 60,
	hours = 60 * 60,
	minutes = 60;
$.fn.countdown = function (prop) {
	var options = $.extend({
		callback: function () {},
		timestamp: 0,
		nleft: 0
	}, prop);
	var left,
		d,
		h,
		m,
		s,
		positions;
	init(this, options);
	test = options.nleft - Math.floor((options.timestamp - (new Date())) / 1000);
	if(test < 0) {
		mp = 0;
	} else {
		mp = 1;
	}
	positions = this.find('.position');
	(function tick() {
		left = Math.floor((options.timestamp - (new Date())) / 1000) + Number(test);
		if(left < 0) {
			left = 0;
		}
		d = Math.floor(left / days);
		updateDuo(0, 1, d);
		left -= d * days;
		h = Math.floor(left / hours);
		updateDuo(2, 3, h);
		left -= h * hours;
		m = Math.floor(left / minutes);
		updateDuo(4, 5, m);
		left -= m * minutes;
		s = left;
		updateDuo(6, 7, s);
		options.callback(d, h, m, s);
		setTimeout(tick, 1000);
	})();

	function updateDuo(minor, major, value) {
		switchDigit(positions.eq(minor), Math.floor(value / 10) % 10);
		switchDigit(positions.eq(major), value % 10);
	}
	return this;
};

function init(elem, options) {
	elem.addClass('countdownHolder');
	$.each(['Days', 'Hours', 'Minutes', 'Seconds'], function (i) {
		$('<span class="count' + this + '">').html('<span class="position"><span class="digit static">0</span></span><span class="position"><span class="digit static">0</span></span>').appendTo(elem);
		if(this != "Seconds") {
			elem.append('<span class="countDiv countDiv' + i + '"></span>');
		}
	});
}

function switchDigit(position, number) {
	var digit = position.find('.digit')
	if(position.data('digit') == number) {
		return false;
	}
	position.data('digit', number);
	var replacement = $('<span>', {
		'class': 'digit',
		html: number
	});
	digit.before(replacement).removeClass('static').addClass('delete').delay(500).queue(function () {
		$(this).remove();
		$(this).dequeue();
	});
	replacement.delay(500).queue(function () {
		$(this).addClass('static');
		$(this).dequeue();
	});
}
if(typeof sale_timer !== "undefined") {
	$('#sale-countdown').countdown({
		timestamp: sale_timer,
		nleft: sale_howleft,
		callback: function (days, hours, minutes, seconds) {
			if(days == 0 && hours == 0 && minutes == 0 && seconds == 0) {
				location.reload();
			}
		}
	});
}
