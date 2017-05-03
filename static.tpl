[static=contacts]
<div class="contacts contacts-index-index">
	<div class="contact-block-store">
		<div class="page-title">
			<h1>Контактная информация</h1>
		</div>
		<div class="contact-block clearfix" id="contactForm">
			<ul class="row text-center">
				<li class="col-xs-12 col-sm-6">
					<i class="fa fa-phone" aria-hidden="true"></i>
					<div class="phone">
						<h3>Телефоны:</h3>
						<div> 
							<span>
								<a href="tel:+380577388303">+38 (057) 738 83 03</a>
							</span>
							<span>
								<a href="tel:+380509057547"> ‎+38 (050) 905 75 47</a>
							</span>
							<span>
								<a href="tel:+380680254892"> ‎+38 (068) 025 48 92 </a>
							</span>
						</div>
					</div>
				</li>
				<li class="col-xs-12 col-sm-6 last">
					<div class="email">
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<h3>E-mail:</h3>
						<a href="mailto:rocterm_sales@ukr.net">rocterm_sales@ukr.net</a>
					</div>
				</li>
			</ul>
			<div class="bg-without">
				<form action="/sendmail.php" id="contact" method="post">
					<div class="fieldset">
						<h2 class="legend without-border">Пишите нам</h2>
						<p class="required">* Обязательные поля</p>
						<ul class="form-list">
							<li class="fields">
								<div class="field">
									<label for="name" class="required">
										<em>*</em>Имя</label>
									<div class="input-box">
										<input name="name" id="name" title="Name" value="" class="input-text required-entry" type="text">
									</div>
								</div>
								<div class="field">
									<label for="email" class="required">
										<em>*</em>Email</label>
									<div class="input-box">
										<input name="email" id="email" title="Email" value="" class="input-text required-entry validate-email" type="text">
									</div>
								</div>
								<div class="field last">
									<label for="tel" class="required"><em>*</em>Телефон</label>
									<div class="input-box">
										<input name="tel" id="tel" title="Telephone" value="" class="input-text" type="text">
									</div>
								</div>
							</li>
							<li class="wide">
								<label for="message" class="required">
									<em>*</em>Отзыв</label>
								<div class="input-box">
									<textarea name="message" id="message" title="message" class="required-entry input-text" cols="5" rows="3"></textarea>
								</div>
							</li>
						</ul>
					</div>
					<div class="buttons-set">
						<button type="submit" title="Submit" class="button btn-submit">
							<span>
								<span>Отправить</span>
							</span>
						</button>
						<button type="reset" title="Clear" class="button button-secondary btn-reset">
							<span>
								<span>Сбросить</span>
							</span>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="content-column-center"></div>
	<div class="wrapper-content"></div>
</div>
[/static]
[static=order]
<div class="contacts-index-index">
	<div class="contact-block-store">
		<div class="page-title">
			<h1>Корзина</h1>
		</div>
		<div class="sale_finish_replace">
			{include file="engine/modules/sale.php?do=order"}
		</div>
	</div>
</div>
[/static]
[static=service-centers]
<div class="row">
    <div class="col-main-news col-md-12 ">
        <div class="page-title category-title center">
            <h1 class="title-border">Сервисные центры</h1>
        </div>

    </div>
</div>
<div class="map">
	<div id="ya_map"></div>
</div>
<div class="row">
    <div class="col-main-news col-md-12 ">
		<br><br>
		<table class="table table-striped servtable">
        {custom category="158" template="custom/service" available="global" limit="99" navigation="no" order="title" sort="asc" cache="no"}
	</table>
    </div>
</div>
[/static]
