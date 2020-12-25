{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row">
        <div class="col-md-3">
            {include file='user/navigation.tpl'}
        </div>
        <div class="col-md-9">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title" style="display:inline;">{$FOLLOWING_TOPICS}</h2>
                    {if count($TOPICS_LIST)}
                        <span class="float-md-right"><a href="#" data-toggle="modal" data-target="#confirmModal" class="btn btn-danger">{$UNFOLLOW_ALL}</a></span>
                    {/if}
                    <br /><br />

                    {if isset($SUCCESS_MESSAGE)}
                        <div class="alert alert-success">
                            {$SUCCESS_MESSAGE}
                        </div>
                    {/if}

                    {nocache}
                        {if count($TOPICS_LIST)}
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <colgroup>
                                        <col span="1" style="width: 65%;">
                                        <col span="1" style="width: 35%;">
                                        <col span="1" style="width: 20%;">
                                    </colgroup>
                                    {foreach from=$TOPICS_LIST item=topic}
                                        <tr onclick="window.location.href = '{$topic.last_post_link}'" style="cursor: pointer">
                                            <td>
                                                {if $topic.unread}
                                                    <i class="fas fa-bell"></i> <strong>{$topic.topic_title}</strong>
                                                {else}
                                                    {$topic.topic_title}
                                                {/if}
                                            </td>
                                            <td>
                                                <div class="row align-items-center">
                                                    <div class="col-md-3">
                                                        <div class="frame">
                                                            <a href="{$topic.reply_author_link}"><img class="img-centre rounded" style="max-height:30px; max-width:30px;" src="{$topic.reply_author_avatar}" alt="{$topic.reply_author_nickname}" /></a>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <a href="{$topic.reply_author_link}" data-html="true" data-placement="top" data-poload="{$USER_INFO_URL}{$topic.reply_author_id}" style="{$topic.reply_author_style}">{$topic.reply_author_nickname}</a>
                                                        <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$topic.reply_date_full}">{$topic.reply_date}</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="{$topic.unfollow_link}" class="btn btn-danger btn-sm">{$UNFOLLOW_TOPIC}</a>
                                            </td>
                                        </tr>
                                    {/foreach}
                                </table>
                            </div>
                            {$PAGINATION}
                        {else}
                            <div class="alert alert-info">
                                {$NO_TOPICS}
                            </div>
                        {/if}
                    {/nocache}
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                {$UNFOLLOW_ALL}
            </div>
            <div class="modal-body">
                {$CONFIRM_UNFOLLOW}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                <form action="" method="post" style="display: inline">
                    <input type="hidden" name="token" value="{$TOKEN}">
                    <input type="hidden" name="action" value="purge">
                    <input type="submit" class="btn btn-primary" value="{$YES}">
                </form>
            </div>
        </div>
    </div>
</div>

{include file='footer.tpl'}
