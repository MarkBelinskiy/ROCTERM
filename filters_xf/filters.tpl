[status]
<div class="filters_xf {onoff}" id="{xf-name}" data-func="[slider]diap[/slider][button]pick[/button][checkbox]checkbox[/checkbox]">
	<div class="filters_title">
		{name}:<span class="filters_showhide {onoff}" id="{xf-name}" title="{status-text}"></span>
		<span class="filters_null" data-func="[slider]diap[/slider][button]pick[/button][checkbox]checkbox[/checkbox]" id="{xf-name}">Все</span>
	</div>
	[not-null]
	<div class="showhide_xf {xf-name}">
		[select]
		<div>
			{select}
		</div>
		[/select]
		[slider]
			<span class="filters_m">от</span>{min-input}<span class="filters_m">до</span>{max-input}
			{slider}
		[/slider]
		[button]
			{buttons}
		[/button]
		[checkbox]
			{checkboxes}
		[/checkbox]
	</div>
	[/not-null]
	[null]
		Совпадений не найдено
	[/null]
</div>
[/status]
