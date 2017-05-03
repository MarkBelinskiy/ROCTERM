<div class="postTitle page-title">
	<h1>Восстановление пароля</h1>
</div>
<div class="row">
	<div class="col-md-6 col-md-offset-3 col-sm-12">
		<div class="form-group">
			<label for="lostname">Логин или E-mail</label>
			<div class="input-group">
				<div class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></div>
				<input type="text" name="lostname" id="lostname" class="form-control" required>
			</div>
		</div>
	</div>
	[sec_code]
	<div class="col-md-6 col-md-offset-3 col-sm-12 text-center">
		{code}
	</div>
	[/sec_code]
	[recaptcha]
	<div class="col-md-6 col-md-offset-3 col-sm-12">
		{recaptcha}
	</div>
	[/recaptcha]
	[sec_code]
	<div class="col-md-6 col-md-offset-3 col-sm-12">
		<div class="form-group">
			<label for="sec_code">Повторите код</label>
			<div class="input-group">
				<div class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></div>
				<input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" class="form-control" required>
			</div>
		</div>
	</div>
	[/sec_code]
	<div class="col-sm-12">
		<hr>
		<div class="form_submit text-center">
			<button class="button" name="submit" type="submit">Восстановить</button>
		</div>
	</div>
</div>