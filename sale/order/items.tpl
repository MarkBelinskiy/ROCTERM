<tr class="sale-goods-item" sale-id="{sale-id}">
	<td>
		<a href="{full-link}" class="sale-goods-full image thumb" title="{title}">
			<img src="{thumb}" alt="{title}">
		</a>
	</td>
	<td>
		<span class="sale-goods-item-name">
			<a href="{full-link}">{title}</a> {options} {refresh} {delete}
			[count]{count}[/count]
		</span>
		<span class="sale-goods-item-price">{price-real}</span>&nbsp;&nbsp;&nbsp;&nbsp;{price-old}
		[if-sku]<div class="text-muted"><small>Артикул: {sku}</small></div>[/if-sku]
	</td>
</tr>