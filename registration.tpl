<div class="col-sm-12">
	<div class="page-title">
		<h1 class="title">
			[registration]Регистрация[/registration]
			[validation]Продолжение регистрации[/validation]
		</h1>
	</div>
	<div class="row">
		<div class="col-md-4 col-sm-6">
			[registration]
				<div class="form-group">
					<label for="name">Логин</label>
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></div>
						<input type="text" name="name" id="name" class="form-control" required>
						<div class="input-group-addon"><a href="#" onclick="CheckLogin(); return false;">Проверить</a></div>
					</div>
					<div id="result-registration"></div>
				</div>
				<div class="form-group">
					<label for="email">E-mail</label>
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-envelope-open-o" aria-hidden="true"></i></div>
						<input type="email" name="email" id="email" class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label for="password1">Пароль</label>
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></div>
						<input type="password" name="password1" id="password1" class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label for="password2">Повторите пароль</label>
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></div>
						<input type="password" name="password2" id="password2" class="form-control" required>
					</div>
				</div>
			[/registration]
		</div>
		<div class="col-md-4 col-sm-6">
			[registration]
			[question]
				<div class="form-group">
					<label for="question_answer">{question}</label>
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-commenting" aria-hidden="true"></i></div>
						<input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="form-control" required>
					</div>
				</div>
			[/question]
			[sec_code]
				<div class="form-group text-center"><hr>{reg_code}</div>
				<div class="form-group">
					<label for="sec_code">Повторите код</label>
					<div class="input-group">
						<div class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></div>
						<input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" class="form-control" required>
					</div>
				</div>
			[/sec_code]
			[recaptcha]
				<div class="form-group">
				<hr>
				{recaptcha}
				</div>
			[/recaptcha]
			[/registration]
			[validation]
				<div class="form-group">
					<label for="fullname">Ваше имя</label>
					<input type="text" id="fullname" name="fullname" class="form-control">
				</div>
				<div class="form-group">
					<label for="land">Место жительства</label>
					<input type="text" id="land" name="land" class="form-control">
				</div>
				<div class="form-group">
					<label for="image">О себе</label>
					<textarea id="info" name="info" rows="5" class="form-control"></textarea>
				</div>
				<div class="form-group">
					<label for="image">Аватар</label>
					<input type="file" id="image" name="image" class="form-control">
				</div>
				<div class="form-group">
					<table class="xfields">
						{xfields}
					</table>
				</div>
			[/validation]
		</div>
		<div class="col-md-4 col-sm-6">
		[registration]
			Регистрация на нашем сайте позволит Вам быть его полноценным участником.
			Вы сможете пользоваться листом пожеланий, оставлять свои комментарии, накапливать скидки и многое другое.
			<br><br>В случае возникновения проблем с регистрацией, обратитесь к <a href="/contacts.html">администрации</a> сайта.
		[/registration]
		[validation]
			Ваш аккаунт был зарегистрирован на нашем сайте,
			однако информация о Вас является неполной, поэтому ОБЯЗАТЕЛЬНО заполните дополнительные поля в Вашем профиле.<br>
		[/validation]
		</div>
		<div class="col-sm-12 text-center">
			<hr>
			<button class="button" name="submit" type="submit">Зарегистрироваться</button>
		</div>
	</div>
</div>