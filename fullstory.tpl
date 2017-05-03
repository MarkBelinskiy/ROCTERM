[catlist=139]
<div class="row">
	<div class="col-main-news col-xs-12 ">
		<div class="post-container">
			<div id="messages_product_view">
			</div>
			<div class="postWrapper">
				<div class="postTitle page-title">
					<h2>{title}</h2>
				</div>
				<div class="row-fluid">
					[xfgiven_photo-news]
					<div class="postImage col-sm-4 col-xs-12 pull-left">
						<ul class="newsgal">
							{gallery_photo-news}
						</ul>
					</div>
					[/xfgiven_photo-news]
					<div class="postContent">
						<p>
							{full-story}
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
[/catlist]
[not-catlist=139]
<div class="product-view large-image-type" itemscope itemtype="//schema.org/product">
	<div class=" product-essential row">
		<form action="" method="post" id="product_addtocart_form">
			<div class="col-md-8">
				<div class="paramik-slider">
					<div class="bigimages">
						<a href="[xfvalue_image_url_photo]" class="bigestimg" rel="gal" itemprop="url">
							<img src="[xfvalue_image_url_photo]" alt="" itemprop="image" />
						</a>
						[xfgiven_photo-all]
							{gallery_photo-all}
						[/xfgiven_photo-all]
					</div>
					<div class="thumbnails">
						<a itemprop="url">
							<img src="[xfvalue_image_url_photo]" alt="" itemprop="image" />
						</a>
						[xfgiven_photo-all]
							{gallerythumb_photo-all}
						[/xfgiven_photo-all]
					</div>
				</div>
			</div>
			<div class=" col-xs-12  col-md-4">
				<div class="product-shop">
					<div class="additional-info">
						<div class="product-sku">Код товара:
							<span class="sku-number">[xfvalue_artlul]</span>
						</div>
						<!-- <p class="availability in-stock m0">
							<span class="label">Доступность:</span>
							<span class="value">На складе</span>
						</p>
						<p class="availability-only m0">
							<span title="">Только <strong>119</strong> осталось</span>
						</p> -->
						<div class="clear"></div>
					</div>
					<div class="product-name secondary" itemprop="name">
						<span class="h1">{title}
						</span>
					</div>
					<div class="extra-info">
						<div class="ratings">
							[rating]
							<div class="rate">
								[rating-type-1]
								<div class="rate_stars">{rating}</div>[/rating-type-1] [rating-type-2]
								<div class="rate_like">
									[rating-plus]
									<svg class="icon icon-love">
										<use xlink:href="#icon-love"></use>
									</svg>
									{rating} [/rating-plus]
								</div>
								[/rating-type-2] [rating-type-3]
								<div class="rate_like-dislike">
									[rating-plus]
									<span title="Нравится">
										<svg class="icon icon-like">
											<use xlink:href="#icon-like"></use>
										</svg>
									</span>[/rating-plus] {rating} [rating-minus]
									<span title="Не нравится">
										<svg class="icon icon-dislike">
											<use xlink:href="#icon-dislike"></use>
										</svg>
									</span>[/rating-minus]
								</div>
								[/rating-type-3]
							</div>
							[/rating]
						</div>
					</div>
				</div>
				<div class="price-info" itemscope itemtype="//schema.org/product">
					<div class="price-box">
						[if-discount]
						<p class="old-price">
							<span class="price">{price-old}</span>
						</p>
						<p class="special-price">
							<span class="price">{price-real}</span>
						</p>
						[/if-discount] [if-notdiscount]
						<span class="regular-price">
							<span class="price">{price-real}</span>
						</span>
						[/if-notdiscount]
					</div>
				</div>
				<div class="clear">
				</div>
				<div class="add-to-cart-wrapper">
					<div class="add-to-box">
						<div class="add-to-cart">
							{options}
							<div class="add-to-cart-buttons">
								[buy]
								<button type="button" title="" class="button btn-cart" id="add_to_cart">
									<span>
										<span>Добавить в корзину
										</span>
									</span>
								</button>
								[/buy]
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<div class="product-collateral toggle-content tabs">
	<ul class="toggle-tabs">
		<li class="current">
			<span id="description">Описание</span>
		</li>
		<li>
			<span id="additional">Характеристики</span>
		</li>
		[xfgiven_certificates]
		<li>
			<span id="certificates">Сертификиты</span>
		</li>
		[/xfgiven_certificates] [xfgiven_pdf]
		<li>
			<span id="instructions">Инструкции</span>
		</li>
		[/xfgiven_pdf]
		<li>
			<span id="dillers">Дилерам</span>
		</li>
	</ul>
	<dl id="collateral-tabs" class="collateral-tabs">
		<dt class="tab current">
			<span id="description">Описание</span>
		</dt>
		<dd class="tab-container current">
			<div class="tab-content">
				<h2>Детали</h2>
				<div class="std">
					<p>{short-story}</p>
					<p>{full-story}</p>
				</div>
			</div>
		</dd>
		<dt class="tab">
			<span id="additional">Характеристики</span>
		</dt>
		<dd class="tab-container">
			<div class="tab-content">
				<h2>Характеристики</h2>
				<table class="data-table" id="product-attribute-specs-table">
					<col width="25%" />
					<col/>
					<tbody>
						{xfields}
					</tbody>
				</table>
			</div>
		</dd>
		[xfgiven_certificates]
		<dt class="tab">
			<span id="certificates">Сертификиты</span>
		</dt>
		<dd class="tab-container">
			<div class="tab-content">
				<h2>Сертификиты</h2>
				<div class="std">
					<ul class="certificates">
						{gallery_certificates}
					</ul>
				</div>
			</div>
		</dd>
		[/xfgiven_certificates]
		[xfgiven_pdf]
		<dt class="tab">
			<span id="instructions">Инструкции</span>
		</dt>
		<dd class="tab-container">
			<div class="tab-content">
				<h2>Инструкции</h2>
				<div class="std">
					[xfvalue_pdf]
				</div>
			</div>
		</dd>
		[/xfgiven_pdf]
		<dt class="tab">
			<span id="dillers">Дилерам</span>
		</dt>
		<dd class="tab-container">
			<div class="tab-content">
				<h2>Диллерам</h2>
				<div class="std">
					[xfvalue_pdf]
				</div>
			</div>
		</dd>
	</dl>
</div>
<div id="upsell-product">
	<h2>Похожие товары</h2>
	<div class="widget-products">
		<ul class="products-grid homeSider">
			{custom category="{category-id}" idexclude="{news-id}" template="custom/products-main" available="global" navigation="no" order="date" sort="desc" cache="no"}
		</ul>
	</div>
</div>
[/not-catlist]
