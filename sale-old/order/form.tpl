<div class="row" id="sale-order-form">
	<div class="col-sm-12">
		<br><br><br><br>
		<div class="page-title">
			<h1>Получатель заказа</h1>
		</div>
		<form action id="sale-form">
			<div class="row">
				<div class="col-sm-6">
					<div>
						<label>Имя:</label>
						{user}
					</div>
					<div>
						<label>E-mail:</label>
						{email}
					</div>
					{xf}
					<div>
						<label>Метод оплаты:</label>
						{payment}
					</div>
					[delivery]
					<div>
						<label>Доставка:</label>
						{delivery}
					</div>
					[/delivery]
				</div>
				<div class="col-sm-6">
					<div>
						<label>Комментарий к заказу:</label>
						{comment}
					</div>
				</div>
			</div>
		</form>
		<hr>
		<ul class="list-unstyled">
			<li><button type="submit" class="sale-finish btn btn-big"><i class="fa fa-paper-plane" aria-hidden="true"></i> Отправить заказ</button></li>
		</ul>
	</div>
</div>