<div class="sale-order-page">
	<table class="sale-full-order">
		<tbody>
			{items}
		</tbody>
	</table>
	[discount]
	[discounts]
	<div class="sale-order-discounts">
		{discounts}
	</div>
	[/discounts]
	[discount-user]
	<div>
		[method-include]
			Ваша накопленная скидка
		[/method-include]
		[method-checkout]
			Включая накопленную скидку
		[/method-checkout]
		<b>{discount-user}%</b>
	</div>
	[/discount-user]
	[discount-next]
	<div>
		[method-include]
			Ваша скидка
		[/method-include]
		[method-checkout]
			Включая скидку
		[/method-checkout]
		на <b>{next}-ю</b> покупку <b>{discount-next}%</b>
	</div>
	[/discount-next]
	[discount-group]
	<div>
		[method-include]
			Диллерская скидка
		[/method-include]
		[method-checkout]
			Включая диллерскую скидку
		[/method-checkout]
		<b>{discount-group}%</b>
	</div>
	[/discount-group]
	[discount-stock]
	<div>
		[method-include]
			Акционная скидка
		[/method-include]
		[method-checkout]
			Включая акционную скидку
		[/method-checkout]
		<b>{discount}%</b>
	</div>
	[/discount-stock]
	{text}
	[next]
	<div class="sale-reg-for-dis">
		<i class="fa fa-info"></i> <a href="/index.php?do=register"><b>Зарегистрируйся</b></a> и получи скидку в <b>{next}%</b> на первую покупку!
	</div>
	[/next]
	[/discount]
	<div class="sale-buy-info">
		[discount]Без скидок: {no-discount}[/discount]<span>Товаров: <b>{count}</b> / На сумму: <b>{total}</b></span>
	</div>
</div>
