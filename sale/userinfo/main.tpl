<div class="sale-accumulation">
	<div class="sale-count">
		<div class="sale-count-title">Покупок на сумму</div>
		<font>{accumulation}</font>
	</div>
	<div class="sale-count-info">
		<b>Ваша общая скидка: <span>{discount}%</span></b>
		[discount]
			<discounts>
				[discount-next]<div>Скидка на следующую покупку: {discount-next}%</div>[/discount-next]
				[discount-group]<div>Скидка группы: {discount-group}%</div>[/discount-group]
				[discount-user]<div>Накопительная: {discount-user}%</div>[/discount-user]
			</discounts>
		[/discount]
	</div>
	{recount}
</div>
