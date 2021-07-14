{include file='header.tpl'} {include file='navbar.tpl'}
<div class="container">
    <div class="row">

        {if count($WIDGETS_LEFT)}
            <div class="col-md-3">
                {foreach from=$WIDGETS_LEFT item=widget}
                    {$widget}
                {/foreach}
            </div>
        {/if}

        <div class="{if count($WIDGETS_LEFT) && count($WIDGETS_RIGHT)}col-md-6{elseif count($WIDGETS_LEFT) || count($WIDGETS_RIGHT)}col-md-9{else}col-md-12{/if}">
            {if count($STAFF_GROUPS)}
				{foreach from=$STAFF_GROUPS item=group}
					{if count($group.members)}
						<div class="card card-primary mb-3">
							<div class="card-header" style="background: {$group.color}; color: #fff;">
								{$group.name}
							</div>
							<div class="card-body pb-0">
								<div class="row">
									{foreach from=$group.members item=member}
										<div class="col-md-3 mb-3">
											<div class="text-center">
												<img src="{$member.avatar}" alt="{$member.username}" style="display: block; margin: 0 auto .5rem; width: 60px; height: 60px; border-radius: 50%;">
												<a href="{$member.profile}" style="color: {$group.style};">{$member.username}</a>
											</div>
										</div>
									{/foreach}
								</div>
							</div>
						</div>
					{/if}
				{/foreach}
			{/if}
        </div>

        {if count($WIDGETS_RIGHT)}
            <div class="col-md-3">
                {foreach from=$WIDGETS_RIGHT item=widget}
                    {$widget}
                {/foreach}
            </div>
        {/if}

    </div>
</div>
{include file='footer.tpl'}