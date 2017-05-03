<div>
	<div class="row">
		<div class="col-sm-12">
			<h1>[group=5]Пользователь[/group][not-group=5]
				<b>{usertitle}</b>[/not-group]</h1>
		</div>
	</div>
	<div class="row classes">
		<div class="col-sm-2 col-xs-4 col-xxs-12 col-xxxs-12">
			<div class="avatar">
				<img src="{foto}" class="img-responsive img-thumbnail">
			</div>
		</div>
		<div class="col-sm-4 col-xs-8 col-xxs-12 col-xxxs-12">
			{include file="engine/modules/sale.php?do=discount"}
		</div>
		<div class=" col-sm-6 col-xs-12 col-xxs-12 col-xxxs-12">
			<ul class="usinf">
				<li>
					<div class="ui-c1 grey">Имя</div>
					<div class="ui-c2">{fullname}[not-fullname]Неизвестно[/not-fullname]</div>
				</li>
				<li>
					<div class="ui-c1 grey">Город</div>
					<div class="ui-c2">{land}[not-land]Неизвестно[/not-land]</div>
				</li>
				<li>
					<div class="ui-c1 grey">Группа</div>
					<div class="ui-c2">{status}</div>
				</li>
				<li>
					<div class="ui-c1 grey">Статус</div>
					<div class="ui-c2">[online]
						<span style="color: #70bb39;">Онлайн</span>[/online][offline]Офлайн[/offline]</div>
				</li>
			</ul>
			[signature]
			<h4 class="heading">Подпись</h4>
			{signature} [/signature]
		</div>
		[not-logged]
		<div class="col-sm-12">
			<a href="#" class="button" id="useredit">
				<i class="fa fa-address-card" aria-hidden="true"></i> Редактировать профиль</a>
			<a href="#" class="button" id="myorders">
				<i class="fa fa-cart-arrow-down" aria-hidden="true"></i> Мои заказы</a>
		</div>
		[/not-logged] [not-logged]
		<div class="col-xs-12 useredit">
			<br>
			<br>
			<h1>Редактирование</h1>
			<div class="tab-pane">
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="fullname">Ваше имя</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-user" aria-hidden="true"></i>
								</div>
								<input type="text" name="fullname" id="fullname" value="{fullname}" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="email">Ваш e-mail</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-envelope" aria-hidden="true"></i>
								</div>
								<input type="email" name="email" id="email" value="{editmail}" class="form-control" readonly required>
							</div>
							<div class="checkbox">
								<label>{hidemail}</label>
							</div>
						</div>
						<div class="form-group">
							<label for="landi">Город</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-map-marker" aria-hidden="true"></i>
								</div>
								<input type="text" name="land" id="landi" value="{land}" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="timezone">Часовой пояс</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-clock-o" aria-hidden="true"></i>
								</div>
								{timezones}
							</div>
						</div>
						<hr>
						<div class="form-group">
							<label for="altpass">Старый пароль</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-unlock-alt" aria-hidden="true"></i>
								</div>
								<input type="password" name="altpass" id="altpass" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="password1">Новый пароль</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-lock" aria-hidden="true"></i>
								</div>
								<input type="password" name="password1" id="password1" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="password2">Повторите новый пароль</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-quote-right" aria-hidden="true"></i>
								</div>
								<input type="password" name="password2" id="password2" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="form-group">
									<label for="image">Загрузите аватар</label>
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-picture-o" aria-hidden="true"></i>
										</div>
										<input type="file" name="image" id="image" class="form-control">
									</div>
									<div class="checkbox">
										<label>
											<input type="checkbox" name="del_foto" id="del_foto" value="yes" /> Удалить аватар</label>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-12">
								<div class="form-group">
									<label>или</label>
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-link" aria-hidden="true"></i>
										</div>
										<input placeholder="Ссылка с Gravatar" type="text" name="gravatar" id="gravatar" value="{gravatar}" class="form-control">
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="info">Подпись</label>
							<textarea name="signature" id="signature" rows="3" class="form-control">{editsignature}</textarea>
						</div>
						<hr>
						<div class="form-group">
							<label for="signature">Список игнорируемых пользователей: </label>
							{ignore-list}
						</div>
						[group=1,2,3]
						<div class="form-group">
							<label for="allowed_ip">Блокировка по IP</label>
							<textarea placeholder="Примеры: 192.48.25.71 or 129.42.*.*" name="allowed_ip" id="allowed_ip" rows="5" class="form-control">{allowed-ip}</textarea>
						</div>
						[/group]
						<div class="form-group">
							<table class="xfields">
								{xfields}
							</table>
						</div>
					</div>
					<div class="col-sm-12">
						<hr>
						<button class="button" name="submit" type="submit">Сохранить</button>
						<input name="submit" type="hidden" id="submit" value="submit">
						<!-- / Настройки пользователя -->
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-12 myorders">
			<br>
			<br>
			<h1>Мои заказы</h1>
			<div class="tab-pane">
				<div class="row">
					<div class="col-sm-12">
						{include file="engine/modules/sale.php?do=purchases"}
					</div>
				</div>
			</div>
		</div>
		[/not-logged]
	</div>
	[group=1,6,7,8]
	<br>
	<br>
	<div class="row">
		<div class="col-sm-12">
			<h1 style="margin-bottom: 15px!important">Индивидуальные предложения</h1>
			<div class="widget widget-new-products sliderClass">
				<div class="widget-products">
					<ul class="products-grid  homeSider">
						{custom category="161" template="custom/products-main" available="global" navigation="no" order="date" sort="desc" cache="no"}
					</ul>
				</div>
			</div>
		</div>
	</div>
	[/group]
</div>
