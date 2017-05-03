<div class="custom-page custom-style-2">
	<div class="page-title title-big without-border">
		<h1>{title}</h1>
	</div>
	<div class="a-center">
		<p>{short-story}</p>
	</div>
	<div class="bg-without">
		<div class="page-title without-border">
			<h1>Методы доставки</h1>
		</div>
		<ul class="custom-pag-list">
			{custom category="144" template="custom/delivery-methods" available="cat" navigation="no" order="date" sort="asc" cache="no"}
		</ul>
	</div>
	<div class="page-title without-border">
		<h1>Методы оплаты</h1>
	</div>
	<ul class="custom-pag-list color-2">
		{custom category="145" template="custom/delivery-pay" available="cat" navigation="no" order="date" sort="asc" cache="no"}	
	</ul>
</div>