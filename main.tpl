<!DOCTYPE html>
<html lang="ru" id="top" class="no-js">

<head>
    {headers}
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0" />
    <!--<link rel="stylesheet" href="//cdn.materialdesignicons.com/1.7.22/css/materialdesignicons.min.css">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.css" />
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Raleway:300,400,500,700,600" />
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;subset=latin,cyrillic" />
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Ubuntu:400,300,500,700&amp;subset=latin,cyrillic" />
    <!-- NEWS -->
    <link rel="stylesheet" type="text/css" href="{THEME}/css/aw_blog.css" media="all" />
    <!-- ICONS -->
    <link rel="stylesheet" type="text/css" href="{THEME}/css/font-awesome.min.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/styles.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/global.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/header.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/header-nav.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/header-search.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/header-cart.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/footer.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/catalog-product.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/product-list.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/cms.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/contacts.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/sidebar.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/megamenu.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/jquery.fancybox.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/sale.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/filters_xf.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/tooltipster.bundle.min.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/tooltipster-sideTip-borderless.min.css" media="all" />
    <link rel="stylesheet" type="text/css" href="{THEME}/css/style.css" media="all" />
</head>

<body class="ps-static  cms-index-index cms-home">
    <div class="wrapper ps-static en-lang-class">
        <div class="page">
            <div class="skip-links2">
                <span class="skip-link2 skip-account2">
                </span>
            </div>
            <div id="header-account2" class="skip-content2">
            </div>
            <header id="header" class="page-header whi">
                <div class="header-row-background">
                    <div class="header-row">
                        <div class="header-switchers">
                            <div class="header-button currency-list full_mode">
                                {currency}
                            </div>
                        </div>

                        <ul class="list-inline pull-right-600">
                            {login}
                        </ul>
                        <ul class="phone-head list-inline pull-right-600">
                            <li>
                                <a href="tel:+380577388303" class="profilemini tt ">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    +38 (057) 738 83 03
                                </a>
                            </li>
                            <li>
                                <a href="tel:+380509057547" class="profilemini tt">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    +38 (050) 905 75 47
                                </a>
                            </li>
                            <li>
                                <a href="tel:+380680254892" class="profilemini tt">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    +38 (068) 025 48 92
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="page-header-container">
					<div id="mmenu"><span></span></div>
                    <a class="logo" href="/"><img src="{THEME}/img/logo-blue.png" /></a>
                    <div class="f-right">
                        <div class="header-minicart">
                            <div id="sale-basket" class="ajaxcart ajaxcart-link skip-cart no-count">
                                <div id="sale-box" class="ajaxcart-count">
                                    <a class="icon"></a>
                                    <span class="value count sale-goods-count">0</span>
                                </div>
                                <div id="sale-basket-goods">
                                    <table class="sale-goods">
                                        <!-- товары -->
                                        <tr class="sale-empty-tr">
                                            <td>Ваша корзина пуста</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="header-search">
                            <a href="#" class="skip-link search-dropdown" id="fastsearchdd">
                                <span class="label">Поиск</span>
                            </a>
                            <div id="fastsearchddinfo">
                                <form id="search_mini_form">
                                    <div class="input-box">
                                        <input id="fastsearch" type="text" autocomplete="off" class="input-text required-entry" placeholder="Введите название или артикул товара" />
                                        <button id="fastsearchbutton">
                                            <i class="fa fa-paper-plane" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="main-menu">
                        <div id="header-nav" class="skip-content nav-content">
                            <div class="nav-container">
                                <div class="nav">
                                <ul id="nav"  class="grid-full nav">
                                        {categories-header} {static-header}
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            [aviable=main]
            <div class="top-container">
                <div class="widget widget-static-block slick b-g">
                    {custom category="137" template="custom/slider-main" available="main" navigation="no" order="date" sort="desc" cache="no"}
                </div>
                <div class="widget widget-static-block">
                    <div class="block-row-4">
                        <div class="row-box-container">
                            {custom category="151" template="custom/block-big" limit="3" available="main" navigation="no" order="date" sort="desc" cache="no"}
                            <div class="row-box-2 ">
                                <ul>
                                    {custom category="152" template="custom/block-small" limit="4" available="main" navigation="no" order="date" sort="desc" cache="no"}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-container col1-layout">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="main">
                                <div class="col-main">
                                    <div class="padding-s">
                                        <div class="widget widget-new-products sliderClass">
                                            <div class="widget-title">
                                                <h2>Новинки
                                                </h2>
                                            </div>
                                            <div class="widget-products">
                                                <ul class="products-grid  homeSider">
                                                    {custom categoryexclude="137-145,151,152,158,159,161,162" template="custom/products-main" limit="8" available="main" navigation="no" order="date" sort="desc" cache="no"}
                                                </ul>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="widget widget-catalogsale-products sliderClass">
                                            <div class="page-title category-title">
                                                <h1>Специальное предложение
                                                </h1>
                                            </div>
                                            <ul class="products-grid homeSider_1">
                                                {custom categoryexclude="137-145,151,152,158,159,161,162" xfields="price_new" template="custom/products-main" available="main" navigation="no" order="date" sort="desc" cache="no"}
                                            </ul>
                                        </div>
                                        <br>
                                        <!--
                                        <div class="widget widget-static-block">
                                            <ul class="row list-2">
                                                {custom category="159" template="custom/partners" available="main" navigation="no" order="date" sort="desc" cache="no"}
                                            </ul>
                                        </div> -->
                                        <div class="widget widget-static-block">
                                            <div class="list-3">
                                                <ul class="row">
                                                    {custom category="138" template="custom/feedback-main" available="main" navigation="no" order="date" sort="desc" cache="no"}
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="widget-latest">
                                            <div class="page-title category-title center">
                                                <h1>Последние новости
                                                </h1>
                                            </div>
                                            <ul class="row">
                                                {custom category="139" template="custom/news-main" available="main" limit="2" navigation="no" order="date" sort="desc" cache="no"}
                                            </ul>
                                            <a href="/news/" class="aw-blog-read-more all-blog button">Посметреть все новости
                                            </a>
                                        </div>
                                        <div class="content-column-center">
                                        </div>
                                        <div class="wrapper-content">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            [/aviable] [not-available=main]
            <div class="main-container col1-layout">
                <div class="breadcrumbs">
                    <div class="container">
                        {speedbar}
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="main col-main padding-s">
                                <div class="std">
                                    <div class="custom-page">
                                        [available=cat|filters_xf] [category=140] {custom category="140" template="custom/about" available="cat" navigation="no" order="date" sort="desc" cache="no"} [/category] [category=143] {custom category="143" template="custom/delivery" available="cat" navigation="no" order="date" sort="desc" cache="no"} [/category] [category=139]
                                        <div class="row">
                                            <div class="col-main-news  col-md-12 ">
                                                <div class="page-title category-title center">
                                                    <h1 class="title-border">Новости</h1>
                                                </div>
                                                <ul class="blog-list">
                                                    {custom category="139" template="custom/news" available="cat" navigation="no" order="date" sort="desc" cache="no"}
                                                </ul>
                                            </div>
                                        </div>
                                        [/category]
                                        [aviable=cat]
											[if-maincat]
		                                        [not-category=139,140,143,160]
		                                            <ul class="products-grid products-grid--max-3-col row first odd">
		                                                {include file="engine/modules/getcats.php?check=main"}
		                                            </ul>
		                                        [/not-category]
		                                    [/if-maincat]
                                        [/aviable]
										[not-category=139,140,143]
	                                        [if-notmaincat]
		                                        <div class="sidebar col-xs-12 col-sm-3">
		                                            <div class="main-col-left">
		                                                <div class="block block-layered-nav block-layered-nav--no-filters">
		                                                    <div class="block-title">
		                                                        <strong>
		                                                            <span>Фильтры</span>
		                                                        </strong>
		                                                    </div>
		                                                    <div class="block-content toggle-content">
		                                                        <div class="selected-filter">
		                                                        </div>
		                                                        <p class="block-subtitle block-subtitle--filter">Сортировка</p>
		                                                        <dl>
		                                                            {include file="engine/modules/filters_xf.php"}
		                                                        </dl>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <div class=" col-left col-main-goods col-xs-12 col-sm-9">
		                                            <div class="page-title category-title">
		                                                <h1>Каталог</h1>
		                                            </div>
		                                            <div class="clear">
		                                            </div>
		                                            <div class="category-products">
		                                                <div class="toolbar">
		                                                    {include file="engine/modules/filters_xf.php?do=sort"}
		                                                </div>
		                                                {info}
		                                                <ul class="products-grid products-grid--max-3-col row first odd">
		                                                    {content}
		                                                </ul>
		                                            </div>
		                                        </div>
	                                        [/if-notmaincat]
                                        [/not-category]
										[/available]
										[available=showfull|static|userinfo|register|lostpassword]
											{info}
											{content}
										[/available]
										[available=favorites|search]
											{info}
	                                        <ul class="products-grid products-grid--max-3-col row first odd">
	                                            {content}
	                                        </ul>
                                        [/available]
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            [/not-available]
            <p id="back-top">
                <a href="{THEME}/#">
                    <span>
                    </span>
                </a>
            </p>
            <div class="footer-container">
                <div class="container">
                    <div class="footer">
                        <div class="footer-cols-wrapper">
                            <div class="footer-col exta-width">
                                <!-- <h1 class="logo-f">ЛОГО
                        </h1> -->
                                <img src="{THEME}/img/logo-blue.png" alt="" />
                                <div class="footer-slog">
                                    Разнообразный и богатый опыт новая модель организационной деятельности позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач.
                                </div>
                            </div>
                            <div class="footer-col">
                                <h4>
                                    <a href="http://dle.idteam.info/about/">О нас</a>
                                </h4>
                                <div class="footer-col-content">
                                    <ul>
                                        <li>
                                            <a href="/service-centers.html">Сервисные центры
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/delivery/">Доставка и оплата
                                            </a>
                                        </li>
                                        <li class="last privacy">
                                            <a href="/contacts.html">Контакты
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="footer-col">
                                <h4>Полезные ссылки
                                </h4>
                                <div class="footer-col-content">
                                    <ul>
                                        {custom category="162" template="custom/useful-link" available="global" order="date" sort="desc" cache="no"}
                                    </ul>
                                </div>
                            </div>
                            <div class="footer-col">
                                <h4>Учетная запись
                                </h4>
                                <div class="footer-col-content">
                                    <ul>
                                        {login}
                                </div>
                            </div>
                            <div class="footer-col exta-width last">
                                <div class="block block-subscribe">
                                    <div class="block-title">
                                        <strong>
                                            <span>Подписка на новости
                                            </span>
                                        </strong>
                                    </div>
                                    <form action="newsletter/subscriber/new/" method="post" id="newsletter-validate-detail">
                                        <div class="block-content">
                                            <div class="form-subscribe-header">
                                                <label for="newsletter">Sign Up for Our Newsletter:
                                                </label>
                                            </div>
                                            <div class="input-box">
                                                <input type="email" spellcheck="false" name="email" id="newsletter" class="input-text required-entry validate-email" />
                                            </div>
                                            <div class="actions">
                                                <button type="submit" class="button">
                                                    <span>
                                                        <span>Ок!
                                                        </span>
                                                    </span>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <ul class="list-icon">
                                    <li>
                                        <a class="fa fa-twitter" target="_blank" href="{THEME}/#">
                                        </a>
                                    </li>
                                    <li>
                                        <a class="fa fa-facebook" target="_blank" href="{THEME}/#">
                                        </a>
                                    </li>
                                    <li>
                                        <a class="fa fa-google-plus" target="_blank" href="{THEME}/#">
                                        </a>
                                    </li>
                                    <li>
                                        <a class="fa fa-youtube" target="_blank" href="{THEME}/#">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                        <address>
                            &copy;
                            <script type="text/javascript">
                            var mdate = new Date();
                            document.write(mdate.getFullYear());
                            </script> Все права защищены.
                        </address>
                        <!--                -->
                        <!--{%FOOTER_LINK}-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="fb-root">
    </div>
    <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="newsletterpopup" aria-hidden="true" id="newsletterpopup">
        <div class="modal-dialog">
            <div class="newsletterpopup-content">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">
                        <i class="fa fa-times">
                        </i>
                    </span>
                    <span class="sr-only">Close
                    </span>
                </button>
                <div class="newsletterpopup-indent">
                    <div class="modal-body">
                        <div class="newsletter-title">Newsletter
                        </div>
                        <div class="newsletter-slogan">Subscribe to the
                            <span>KETTY
                            </span> mailing list to receive updates on new arrivals, special offers and other discount information.
                        </div>
                        <form action="newsletter/subscriber/new/" method="post" id="newsletter-validate-detail2">
                            <div class="block-content">
                                <div class="form-group">
                                    <input type="text" name="email" id="newsletter-popup" class="input-text required-entry validate-email" />
                                </div>
                                <div class="actions">
                                    <button type="submit" class="button" name="newsletter_submit">
                                        <span>
                                            <span>Subscribe
                                            </span>
                                        </span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
{jsfiles} {AJAX}
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="{THEME}/js/cookies.js"></script>
<script type="text/javascript" src="{THEME}/js/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="{THEME}/js/tooltipster.bundle.min.js"></script>
<script type="text/javascript" src="{THEME}/js/filters_xf.js"></script>
<script type="text/javascript" src="{THEME}/js/jquery.form.min.js"></script>
<script type="text/javascript" src="{THEME}/js/jquery.sticky.js"></script>
<script type="text/javascript" src="{THEME}/js/script.js"></script>
<script type="text/javascript" src="{THEME}/js/sale.js"></script>
[available=static]
<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<script type="text/javascript">
var info = {};
{custom category="158" template="custom/map" available="global" limit="99" navigation="no" order="date" sort="desc" cache="yes"}
$('.servtable tr').each(function(index, el) {
    var td = $(this).find('td.phone'), numbers = td.html().split('<br>'), result = "";
    $.each(numbers, function(index, el) {
        ( ~el.indexOf("Тел")) ? result += el : result += '<br><a href="tel:'+el.replace(/[^0-9\+]/gim,'')+'">'+el+'</a>';
    });
    td.html(result);
});

ymaps.ready(init);

function init() {
    var myMap = new ymaps.Map("ya_map", {
        center: [49.428673, 31.530111],
        zoom: 6,
		controls: ['smallMapDefaultSet']
    }, {
        searchControlProvider: 'yandex#search'
    })
    $.each(info, function(key, value) {
        var geocoder = new ymaps.geocode(value.address, {
            results: 1
        });
        geocoder.then(function(res) {
            var point = res.geoObjects.get(0).geometry.getCoordinates();
            start = new ymaps.Placemark(point, {
                balloonContent: '<b>' + value.name + '</b><br>' + value.workTime + '<br>' + value.address
            });
            myMap.geoObjects.add(start);
        });
    });
    $('.servtable tr>td:first-child').on('click', function() {
        event.preventDefault();
        var addr = $(this).html();
        ymaps.geocode(addr, {
            results: 1
        }).then(function (res) {
            var firstGeoObject = res.geoObjects.get(0),
                coords = firstGeoObject.geometry.getCoordinates(),
                bounds = firstGeoObject.properties.get('boundedBy');
            myMap.setBounds(bounds, {
                checkZoomRange: true
            });
        });
        $('body,html').animate({
            scrollTop: 0
        }, 800);

    });

	// var geo = new ymaps.geocode("г. Кобеляки, Полтавская обл., ул. Касьяна 43/16", {
	// 	results: 1
	// });
	//
	// geo.then(function(res) {
	// 	var point = res.geoObjects.get(0).geometry.getCoordinates();
	// 	// console.log(myMap);
	// 	// myMap.panTo(point).openBalloon();
	// 	myMap.panTo("г. Кобеляки, Полтавская обл., ул. Касьяна 43/16".getGeoPoint(),{
	// 	   flying : true,
	// 	   callback : function () {
	// 	      "г. Кобеляки, Полтавская обл., ул. Касьяна 43/16".openBalloon();
	// 	   }
	// 	});
	// });
	// myMap.panTo(markers[i].getGeoPoint(),{
	//    flying : true,
	//    callback : function () {
	//       markers[i].openBalloon();
	//    }
	// });
	// var geocoder = new YMaps.Geocoder("Москва");
	// YMaps.Events.observe(geocoder, geocoder.Events.Load, function () {
	//     if (this.length()) {
	//         alert("Найдено :" + this.length());
	//         map.addOverlay(this.get(0));
	//         map.panTo(this.get(0).getGeoPoint())
	//     } else {
	//         alert("Ничего не найдено");
	//     }
	// })
}
</script>
[/available]

</html>
