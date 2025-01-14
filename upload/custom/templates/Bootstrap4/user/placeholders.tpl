{include file='header.tpl'} {include file='navbar.tpl'}
<div class="container">
    <div class="row">
        <div class="col-md-3">
            {include file='user/navigation.tpl'}
        </div>
        <div class="col-md-9">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">{$PLACEHOLDERS}</h2>
                    
                    {if isset($SUCCESS)}
                    <div class="alert alert-success">
                        {$SUCCESS}
                    </div>
                    {/if}
                    {if isset($ERRORS)}
                    <div class="alert alert-danger">
                        {foreach from=$ERRORS item=error}
                        {$error}<br />
                        {/foreach}
                    </div>
                    {/if}

                    {nocache}
                    {if count($PLACEHOLDERS_LIST)}
                    <table class="table table-responsive table-striped">
                        <thead>
                            <tr>
                                <th>{$NAME}</th>
                                <th>{$VALUE}</th>
                                <th>{$LAST_UPDATED}</th>
                                <th>{$SHOW_ON_PROFILE}</th>
                                <th>{$SHOW_ON_FORUM}</th>
                            </tr>
                        </thead>
                        <tbody>

                            {foreach from=$PLACEHOLDERS_LIST item=data}
                            <tr>
                                <td>
                                    {$data.friendly_name}
                                </td>
                                <td>
                                    {$data.value}
                                </td>
                                <td>
                                    {$data.last_updated}
                                </td>
                                <td>
                                    {if $data.show_on_profile eq 1}
                                    <i class="fa fa-check-circle"></i>
                                    {else}
                                    <i class="fa fa-times-circle"></i>
                                    {/if}
                                </td>
                                <td>
                                    {if $data.show_on_forum eq 1}
                                    <i class="fa fa-check-circle"></i>
                                    {else}
                                    <i class="fa fa-times-circle"></i>
                                    {/if}
                                </td>
                            </tr>
                            {/foreach}
                    </table>
                    {else}
                        {$NO_PLACEHOLDERS}
                    {/if}
                    {/nocache}

                </div>
            </div>
        </div>
    </div>
</div>
{include file='footer.tpl'}