[not-group=5]
<li>
    <a href="{profile-link}" class="profilemini tt" title="Личный кабинет">
        <i class="fa fa-user-circle" aria-hidden="true"></i>
        <b class="over">{login}</b>
        <span>{new-pm}</span>
    </a>
</li>
[admin-link]
<li>
    <a href="{admin-link}" target="_blank">
        <i class="fa fa-cog" aria-hidden="true"></i> Админпанель</a>
</li>
[/admin-link]
<!-- <li>
    <a href="{favorites-link}" class="tt" title="Список пожеланий">
        <i class="fa fa-heart" aria-hidden="true"></i>
        <span class="normfav">{favorite-count}</span>
    </a>
</li> -->
<li>
    <a href="{logout-link}">
        <i class="fa fa-sign-out" aria-hidden="true"></i> Выход</a>
</li>
[/not-group] [group=5]
<li>
    <a href="{registration-link}">
        <i class="fa fa-user-plus" aria-hidden="true"></i> Регистрация</a>
</li>
<li>
    <a href="#" data-toggle="modal" data-target="#loginform">
        <i class="fa fa-sign-in" aria-hidden="true"></i> Войти</a>
</li>
<!-- loginform -->
<div class="modal fade" id="loginform" tabindex="-1" role="dialog" aria-labelledby="loginform">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <form method="post">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">Авторизация</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="login_name">{login-method}
                            <font style="color:red">*</font>
                        </label>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user-o" aria-hidden="true"></i>
                            </div>
                            <input type="text" class="form-control" id="login_name" name="login_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="login_password">Пароль</label>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-terminal" aria-hidden="true"></i>
                            </div>
                            <input type="password" class="form-control" id="login_password" name="login_password">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="soc_links">
                        [vk]
                        <a href="{vk_url}" target="_blank" class="soc_vk">
                            <svg class="icon icon-vk">
                                <use xlink:href="#icon-vk" />
                            </svg>
                        </a>[/vk] [yandex]
                        <a href="{yandex_url}" target="_blank" class="soc_ya">
                            <svg class="icon icon-ya">
                                <use xlink:href="#icon-ya" />
                            </svg>
                        </a>[/yandex] [facebook]
                        <a href="{facebook_url}" target="_blank" class="soc_fb">
                            <svg class="icon icon-fb">
                                <use xlink:href="#icon-fb" />
                            </svg>
                        </a>[/facebook] [google]
                        <a href="{google_url}" target="_blank" class="soc_gp">
                            <svg class="icon icon-gp">
                                <use xlink:href="#icon-gp" />
                            </svg>
                        </a>[/google] [odnoklassniki]
                        <a href="{odnoklassniki_url}" target="_blank" class="soc_od">
                            <svg class="icon icon-od">
                                <use xlink:href="#icon-od" />
                            </svg>
                        </a>[/odnoklassniki] [mailru]
                        <a href="{mailru_url}" target="_blank" class="soc_mail">
                            <svg class="icon icon-mail">
                                <use xlink:href="#icon-mail" />
                            </svg>
                        </a>[/mailru]
                    </div>
                    <input name="login" type="hidden" id="login" value="submit">
                    <a href="{lostpassword-link}" class="btn">Забыли пароль?</a>
                    <button class="button" onclick="submit();" type="submit">Войти</button>
                </div>
            </form>
        </div>
    </div>
</div>
[/group]
