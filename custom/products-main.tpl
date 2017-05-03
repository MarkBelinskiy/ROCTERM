<li class="item first col-sm-[available=favorites|search]3[/available][not-available=favorites|search]4[/not-available] col-xs-12" itemscope itemtype="//schema.org/product">
	<div class="wrapper-hover">
		<div class="product-image-container">
			<a href="{full-link}" class="product-image" itemprop="url">
				<img src="[xfvalue_image_url_photo]" alt="" itemprop="image" />
			</a>
			<ul class="product-thumbs">
				<li class="product-thumb">
					<a href="[xfvalue_image_url_photo]">
						<img src="[xfvalue_thumb_url_photo]" alt="{title}" />
					</a>
				</li>
				[gallery_photo-all=1]
				<li class="product-thumb">
					<a href="{gallery_photo-all=1}">
						<img src="{gallerythumb_photo-all=1}" alt="{title}" />
					</a>
				</li>
				[/gallery_photo-all=1]
				[gallery_photo-all=2]
				<li class="product-thumb">
					<a href="{gallery_photo-all=2}">
						<img src="{gallerythumb_photo-all=2}" alt="{title}" />
					</a>
				</li>
				[/gallery_photo-all=2]
			</ul>
		</div>
		<div class="product-info">
			<h3 class="product-name noSwipe text-center" itemprop="name"><a href="{full-link}" >{title}</a></h3>
			<div class="price-box">
				[if-discount]
				<p class="old-price">
					<span class="price"> {price-old} </span>
				</p>
				<p class="special-price">
					<span class="price"> {price-real} </span>
				</p>
				[/if-discount]
				[if-notdiscount]
				<span class="regular-price">
					<span class="price">{price-real}</span>
				</span> 
				[/if-notdiscount]
			</div>
			<div class="wrapper-relative">
				<div class="wrapper-hover-hiden">
					<div class="actions">
						[buy]
						<button type="button" class="button btn-cart noSwipe"><span><span><i class="material-design-shopping232"></i>Добавить в корзину</span></span>
						</button>
						[/buy]
					</div>
				</div>
			</div>
		</div>
		<div class="label-product">
			[xfgiven_new_good]<span class="new">Новинка</span>[/xfgiven_new_good]
			[if-discount]<span class="sale">Скидка</span>[/if-discount]
		</div>
	</div>
</li>