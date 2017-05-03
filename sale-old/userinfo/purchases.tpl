[if-items]
<div class="sale-user-order[accepted] accepted[/accepted][sold] sold[/sold]">
	<div class="row">
		<div class="col-sm-9 col-xs-6 sale-user-info">
			<span class="num tt" title="Номер заказа">{num}</span>
			<span class="date tt" title="Дата оформления"><i class="fa fa-calendar-o" aria-hidden="true"></i> {date}</span>
			<span class="name hidden-xs tt" title="На имя"><i class="fa fa-user-circle" aria-hidden="true"></i> {name}</span>
			<span class="email hidden-xs tt" title="На email"><i class="fa fa-envelope" aria-hidden="true"></i> {email}</span>
		</div>
		<div class="col-sm-3 col-xs-6 text-right sale-user-status">
			[ordered]<span class="tt" title="Статус заказа"><i class="fa fa-battery-empty fa-lg" aria-hidden="true"></i> Заказан</span>[/ordered]
			[accepted]<span class="tt" title="Статус заказа"><i class="fa fa-battery-half fa-lg" aria-hidden="true"></i> Принят</span>[/accepted]
			[sold]<span class="tt" title="Статус заказа"><i class="fa fa-battery-full fa-lg" aria-hidden="true"></i> Оплачен</span>[/sold]
		</div>
	</div>
	<div class="row">
		{items}
	</div>
	<div class="row">
		<div class="col-sm-6 sale-user-info text-xs-center sale-user-bottom">
			[payment]<span class="payment"><i class="fa fa-money" aria-hidden="true"></i> {payment}</span>[/payment]
			[delivery]<span class="delivery"><i class="fa fa-truck" aria-hidden="true"></i> {delivery}</span>[/delivery]
		</div>
		<div class="col-sm-6 text-right text-xs-center sale-user-info sale-user-bottom">
			<span class="discount">Скидка: <b>{discount}%</b></span>
			<span class="total">Сумма: <b[if-discount] class="tt" title="Без скидок: {no-discounts}"[/if-discount]>{total}</b></span>
		</div>
		<div class="col-sm-12 sale-user-info sale-user-xfcomm">
			[xf]<div class="xf"><b>Дополнительная информация:</b><br>{xf}</div>[/xf]
			[comment]<div class="comment"><b>Комментарий к заказу:</b><br>{comment}</div>[/comment]
		</div>
	</div>
</div>
[/if-items]
[if-empty]
<info>Вы еще не совершали покупок!</info>
[/if-empty]
[if-status]
<info>Товары отсутствуют!</info>
[/if-status]
