var isMobile = false; //initiate as false
// device detection
if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0, 4))) isMobile = true;

function disable_scroll() {
	$('body').bind('touchmove', function(e) {
		e.preventDefault()
	});
}

function enable_scroll() {
	$('body').unbind('touchmove');
}

function validatePollAnswerIsSelected() {
	var options = $$('input.poll_vote');
	for (i in options) {
		if (options[i].checked == true) {
			return true;
		}
	}
	return false;
}

$(window).on("load resize", function() {
	if (isMobile) {
		$(".page-header-container").sticky({
			topSpacing: 0,
			zIndex: 10
		});
	} else {
		$("#header").sticky({
			topSpacing: 0,
			zIndex: 10
		});
	}

});
$(document).ready(function() {
	$("#mmenu").on('click', function(event) {
		$(".nav ul.nav").addClass('active');
	});
	$(".nav ul.nav").on('click', function(event) {
		if($(event.target).hasClass('nav active')) {
			$(".nav ul.nav").removeClass('active');
		}
	});
	$(".nav ul.nav").on('click', function(event) {
		if($(event.target).hasClass('nav active')) {
			$(".nav ul.nav").removeClass('active');
		}
	});
	$(".products-grid>li").each(function(i, e) {
		i++;
		if (!(i % 3)) {
			$(this).after('<div class="clearfix">');
		}
	});
	$('#fastsearchdd').on("click", function(e) {
		e.preventDefault();
		$('#fastsearchddinfo').toggleClass('active');
	});

	// fastsearch start
	var fastsearch = $('#fastsearch'),
		fastsearchtimer, fastsearchhtml = "",
		fastsearchwidth = fastsearch.outerWidth(true);

	function fastsearchselect(key) {
		var fsr = $("#fastresults");
		if (fsr.length) {
			var fsra = fsr.find("div.ready.active");
			if (!fsra.length && !fsr.find("div.error").length) {
				if (key == 38) {
					fsr.find("div.ready:last-child").addClass('active');
				}
				if (key == 40) {
					fsr.find("div.ready:first-child").addClass('active');
				}
			}
			if (fsra.length) {
				if (key == 38) {
					fsra.removeClass('active').prev().addClass('active');
				}
				if (key == 40) {
					fsra.removeClass('active').next().addClass('active');
				}
			}
		}
	}
	$("#fastsearchbutton").on("click", function(e) {
		e.preventDefault();
		location.href = "/search/" + fastsearch.val();
	});
	fastsearch.on("paste keyup", function(e) {
		if (e.keyCode == 38 || e.keyCode == 40) {
			fastsearchselect(e.keyCode);
			return;
		}
		setTimeout(function() {
			clearTimeout(fastsearchtimer);
			var q = $(e.target).val();
			if (e.keyCode == 13) {
				if ($("#fastresults").find("div.ready.active").length) {
					location.href = $("#fastresults").find("div.ready.active>a").attr('href');
				} else {
					location.href = "/search/" + q;
				}
			}
			if ($("#fastresults").length) {
				$("#fastresults").slideUp(150, function() {
					$(this).remove();
					fastsearchhtml = "";
				});
			}
			fastsearchtimer = setTimeout(function() {
				$.post("/engine/ajax/search.php", {
					query: q
				}, function(result) {
					var goods = jQuery.parseJSON(result);
					$.each(goods, function(i, e) {
						console.log(e);
						if (e.error) {
							fastsearchhtml += '<div class="error">\
						<div>\
							<span>' + e.error + '</span>\
						</div>\
					</div>';
							return;
						}
						fastsearchhtml += '<div class="ready">\
					<a href="' + e.url + '">\
					<img src="/uploads/posts/' + e.img + '">\
					<div>\
						<span>' + e.title + '</span>\
						<span>Артикул: ' + e.desc + '</span>\
					</div>\
					</a>\
				</div>';
					});

					fastsearch.after('<div id="fastresults" style="width:' + fastsearchwidth + 'px">' + fastsearchhtml + '</div>');
					$("#fastresults").stop().slideDown(250);
				});
			}, 750);
		}, 100);
	});

	$(document).on("mousedown", function(e) {
		if ($(e.target).attr('id') == "fastresults" || $(e.target).closest("#fastresults").length || $(e.target).attr('id') == "fastsearch" || $(e.target).attr('id') == "fastsearchbutton" || $(e.target).closest("#fastsearchbutton").length || $(e.target).attr('id') == "fastsearchdd") return; //  || $(this).closest("#fastresults")
		fastsearch.val("");
		if ($('#fastsearchddinfo').hasClass('active')) $('#fastsearchddinfo').removeClass('active');
		if ($("#fastresults").length) {
			$("#fastresults").stop().slideUp(150, function() {
				$(this).remove();
			});
			fastsearchhtml = "";
		}
	});
	// fastsearch finish

	// tip
	$('.tt').tooltipster({
		theme: 'tooltipster-borderless',
		delay: 10
	});
	$('.footer .tt').tooltipster('disable');
	$('.ttb').tooltipster({
		theme: 'tooltipster-borderless',
		delay: 10,
		side: ['bottom', 'top', 'right', 'left']
	});
	$('.ttr').tooltipster({
		theme: 'tooltipster-borderless',
		delay: 10,
		side: ['right', 'top', 'bottom']
	});
	$('.ttl').tooltipster({
		theme: 'tooltipster-borderless',
		delay: 10,
		side: ['left', 'top', 'bottom']
	});
	$("#useredit, #myorders").on("click", function(e) {
		e.preventDefault();
		var cl = $(this).attr('id');
		if ($("." + cl).is(":visible")) {
			$("." + cl).slideUp(500);
			return;
		} else {
			$(".useredit, .myorders").slideUp(500);
			$("." + cl).slideDown(500);
		}
	});
	$(".product-collateral>.toggle-tabs li").on("click", function() {
		$(".tab, .tab-container, .toggle-tabs>li").removeClass("current");
		var id = $(this).children().attr("id");
		$(this).addClass("current");
		$("#collateral-tabs>.tab>span#" + id).parent().addClass("current").next().addClass("current");
	});
	if (isMobile) {
		$(".product-collateral").removeClass("accordion-open");
		$(".tab, .tab-container, .toggle-tabs>li").removeClass("current");
		$("#collateral-tabs>.tab").on("click", function() {
			if ($(this).hasClass('current')) {
				$(".product-collateral").removeClass("accordion-open");
				$(".tab, .tab-container, .toggle-tabs>li").removeClass("current");

			} else {
				$(".tab, .tab-container, .toggle-tabs>li").removeClass("current");
				var id = $(this).children().attr("id");
				$(this).addClass("current");
				$(".product-collateral").addClass("accordion-open");
				$("#collateral-tabs>.tab>span#" + id).parent().addClass("current").next().addClass("current");
			}
		});
	}

	// menu
	$('#nav>.level.parent').on("mouseenter mouseleave", function(e) {
		if (e.type == "mouseenter") {
			$(this).children(".level-top").stop().fadeIn(250);
		}
		if (e.type == "mouseleave") {
			$(this).children(".level-top").stop().fadeOut(250);
		}
	});
	//img replace
	$(".product-thumb>a").on("click", function(e) {
		e.preventDefault();
		$(this).closest(".product-image-container").children("a").children("img").attr("src", $(this).attr("href"));
	});
	//sliders
	if ($(".homeSider").length || $(".homeSider_1").length) {
		$('.homeSider, .homeSider_1').slick({
			dots: false,
			infinite: true,
			speed: 500,
			slidesToShow: 4,
			slidesToScroll: 4,
			autoplay: false,
			fade: false,
			arrows: true,
			prevArrow: '<i class="fa fa-angle-left slick-prev" aria-hidden="true"></i>',
			nextArrow: '<i class="fa fa-angle-right slick-next" aria-hidden="true"></i>',
			responsive: [{
				breakpoint: 1250,
				settings: {
					slidesToShow: 3
				}
			}, {
				breakpoint: 768,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 2,
					autoplay: true
				}
			}, {
				breakpoint: 580,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1,
					arrows: false
				}
			}]
		});
	}
	if ($('.certificates').length) {
		$('.certificates').slick({
			dots: false,
			infinite: true,
			speed: 500,
			arrows: true,
			slidesToShow: 1,
			slidesToScroll: 1,
			centerMode: true,
			variableWidth: true,
			autoplay: false,
			prevArrow: '<i class="fa fa-angle-left slick-prev" aria-hidden="true"></i>',
			nextArrow: '<i class="fa fa-angle-right slick-next" aria-hidden="true"></i>'
		});
	}
	// main slider
	$('.widget-static-block.slick').on('init', function(event, slick) {
		$(slick.$slides[0]).find(".detail").addClass("active");
	});
	$('.widget-static-block.slick').slick({
		arrows: true,
		nextArrow: '<i class="fa fa-angle-right slick-next"></i>',
		prevArrow: '<i class="fa fa-angle-left slick-prev"></i>',
		infinite: true,
		autoplay: true,
		speed: 1250,
		autoplaySpeed: 5000,
	});
	$('.widget-static-block.slick').on('beforeChange', function(event, slick, currentSlide, nextSlide) {
		$(slick.$slides[currentSlide]).find(".detail").removeClass("active");
	});
	$('.widget-static-block.slick').on('afterChange', function(event, slick, currentSlide) {
		$(slick.$slides[currentSlide]).find(".detail").addClass("active");
	});
	// full slider
	$('.paramik-slider>.bigimages').slick({
		dots: false,
		arrows: false,
		fade: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		asNavFor: '.paramik-slider>.thumbnails',
		autoplay: true,
		autoplaySpeed: 2000
	});
	$('.paramik-slider>.thumbnails').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		asNavFor: '.paramik-slider>.bigimages',
		dots: false,
		arrows: true,
		focusOnSelect: true,
		centerMode: true,
		variableWidth: true,
		prevArrow: '<i class="fa fa-angle-left slick-prev" aria-hidden="true"></i>',
		nextArrow: '<i class="fa fa-angle-right slick-next" aria-hidden="true"></i>'
	});
	$('.newsgal').slick({
		arrows: true,
		nextArrow: '<i class="fa fa-angle-right slick-next"></i>',
		prevArrow: '<i class="fa fa-angle-left slick-prev"></i>',
		infinite: true,
		autoplay: true,
		speed: 500,
		autoplaySpeed: 3000,
	});
	$('.bigestimg[rel="gal"], .fancybox').fancybox({
		openEffect: "elastic",
		closeEffect: "elastic",
		loop: false,
		helpers: {
			overlay: {
				locked: false
			}
		},
		afterLoad: function(current, previous) {
			if (previous) {
				(current.index > previous.index ? $('.paramik-slider>.thumbnails').slick('slickNext') : $('.paramik-slider>.thumbnails').slick('slickPrev'));
			}
		}
	});
	$('.fb').fancybox({
		openEffect: "elastic",
		closeEffect: "elastic",
		loop: true,
		helpers: {
			overlay: {
				locked: false
			}
		}
	});
	// Back To Top
	$(window).scroll(function() {
		if ($(this).scrollTop() > 100) {
			$('#back-top').fadeIn();
		} else {
			$('#back-top').fadeOut();
		}
	});
	$('#back-top a').click(function() {
		$('body,html').stop(false, false).animate({
			scrollTop: 0
		}, 800);
		return false;
	});
	// Animation Skills
	if ($('.skills .number').length > 0) {
		var number = $('.skills .number');
		number.each(function() {
			var finish = $(this).data('finish');
			$(this).animateNumber({
				number: finish
			}, 2000);
		});
	}
	if (!$('.row-box-1').length) {
		$('.row-box-2').addClass('w100');
		$('.row-box-2 li').addClass('w25');
	}

	/**
	 * SENDMAIL
	 *
	 */
	var form = $('#contact');
	form.ajaxForm({
		beforeSubmit: function() {
			form.addClass("sendloading");
		},
		success: function(data) {
			form.delay(1000).queue(function() {
				$(this).removeClass("sendloading");
				$.each(data, function(i, e) {
					if (e == "error") {
						form.addClass("senderror").delay(2000).queue(function() { $(this).removeClass("senderror").dequeue() });
						return false;
					}
					if (e == "good") {
						form[0].reset();
						form.addClass("sendgood").delay(2000).queue(function() { $(this).removeClass("sendgood").dequeue() });
						return false;
					}
					form.find('input[name="' + e + '"], textarea[name="' + e + '"]').addClass("error").delay(2000).queue(function() { $(this).removeClass("error").dequeue() });
				});
				$(this).dequeue();
			});
		}
	});

});
