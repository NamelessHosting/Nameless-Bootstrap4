{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title" style="display:inline;">{$SUGGESTIONS}</h2>
                    <span class="float-right">
                        <div class="btn-group">
                          <button type="button" style="vertical-align:baseline;" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">{$SORT_BY} {$SORT_BY_VALUE}</button>
                          <ul class="dropdown-menu" role="menu">
                            <li><a class="dropdown-item" href="{$SORT_NEWEST_LINK}">{$NEWEST}</a></li>
                            <li><a class="dropdown-item" href="{$SORT_RECENT_ACTIVITY_LINK}">{$RECENT_ACTIVITY}</a></li>
                            <li><a class="dropdown-item" href="{$SORT_LIKES_LINK}">{$LIKES}</a></li>
                          </ul>
                        </div>
                        
                        <a class="btn btn-primary" href="{$NEW_SUGGESTION_LINK}">{$NEW_SUGGESTION}</a>
                    </span>
                    <hr>
        
                    {if isset($SUGGESTIONS_LIST)}
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th style="width: 50%">{$SUGGESTION_TITLE}</th>
                                        <th style="width: 20%">{$STATS}</th>
                                        <th style="width: 30%">{$LAST_REPLY}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach from=$SUGGESTIONS_LIST item=suggestion}
                                        <tr>
                                            <td>
                                                {$suggestion.status} <a class="white-link" href="{$suggestion.link}">{$suggestion.title}</a><br />
                                                <span data-toggle="tooltip" data-content="{$suggestion.created}">{$suggestion.created_rough}</span>
                                                {$BY} <a style="{$suggestion.author_style}" href="{$suggestion.author_link}">{$suggestion.author_username}</a>
                                            </td>

                                            <td>
                                                <strong>{$suggestion.likes}</strong> {$LIKES}<br />
                                                <strong>{$suggestion.dislikes}</strong> {$DISLIKES}
                                            </td>

                                            <td>
                                                <span data-toggle="tooltip" data-content="{$suggestion.updated}">{$suggestion.updated_rough}</span></br>
                                                {$BY} <a style="{$suggestion.updated_by_style}" href="{$suggestion.updated_by_link}">{$suggestion.updated_by_username}</a>
                                            </td>
                                        </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        </div>

                        {$PAGINATION}
                    {else}
                        {$NO_SUGGESTIONS}
                    {/if}

                </div>
            </div>

        </div>

        <div class="col-md-3">
            {include file='suggestions/search.tpl'}
            {include file='suggestions/categories.tpl'}
            {include file='suggestions/recent_activity.tpl'}
        </div>

    </div>
</div>

{include file='footer.tpl'}