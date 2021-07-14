<div class="card">
	<div class="card-body">
        <h2>{$CATEGORIES}</h2>
        
		{foreach from=$CATEGORIES_LIST item=item}
		  <a class="btn btn-block btn-primary" href="{$item.link}">{$item.name}</a>
	  	{/foreach}
	
	</div>
</div>
</br>