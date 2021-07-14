<div class="card">
    <div class="card-body">
        <h3>{$RECENT_ACTIVITY}</h3>
        
        {foreach from=$RECENT_ACTIVITY_LIST item=item name=re}
            <div class="row">
                <div class="col-md-4">
                    <a href="{$item.updated_by_link}"><img class="avatar-img" style="max-height:50px;max-width:50px;"
                            src="{$item.updated_by_avatar}" alt="{$item.updated_by_username}" /></a>
                </div>
                <div class="col-md-8">
                    <a href="{$item.link}" class="white-link">{$item.title}</a><br />
                    <span data-toggle="tooltip" data-trigger="hover"
                        data-content="{$item.updated}">{$item.updated_rough}</span><br />{$BY} <a
                        class="{$item.updated_by_tag}" href="{$item.updated_by_link}"
                        style="{$item.updated_by_style}">{$item.updated_by_username}</a>
                </div>
            </div>
			{if not $smarty.foreach.re.last}<hr />{/if}
        {/foreach}

    </div>
</div>