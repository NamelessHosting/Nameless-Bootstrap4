{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">

    <div class="card">
        <div class="card-body">
            <h2>{$EDITING_SUGGESTION}</h2>
            <hr>

            {if isset($ERRORS)}
				<div class="alert alert-danger" role="alert">
					{foreach from=$ERRORS item=error}
						{$error}<br />
					{/foreach}
    			</div>
            {/if}

            <form action="" method="post">
                <div class="form-group">
                    <label for="titleLabel">{$SUGGESTION_TITLE} <span style="color:red"><strong>*</strong></span></label>
                    <input class="form-control" type="text" name="title" placeholder="Title" value="{$TITLE_VALUE}">
                </div>
                <div class="form-group">
                    <label for="categoryLabel">{$CATEGORY} <span style="color:red"><strong>*</strong></span></label>
                    <select class="form-control" name="category" id="category">
                        {foreach from=$CATEGORIES item=item}
                            <option value="{$item.id}" {if $CATEGORY_VALUE == $item.id}selected{/if}>{$item.name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="statusLabel">{$STATUS} </label>
                    <select class="form-control" name="status" id="status">
                        {foreach from=$STATUSES item=item}
                            <option value="{$item.id}" {if $STATUS_VALUE == $item.id}selected{/if}>{$item.name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="contentLabel">{$CONTENT} <span style="color:red"><strong>*</strong></span></label>
                    <textarea class="form-control" style="width:100%" name="content" placeholder="Content" id="editor"
                        rows="15">{$CONTENT_VALUE}</textarea>
                </div>
                <input type="hidden" name="token" value="{$TOKEN}">
                <button type="submit" class="btn btn-primary">{$SUBMIT}</button>
                <a class="btn btn-secondary" href="{$CANCEL_LINK}">{$CANCEL}</a>
            </form>

        </div>
    </div>
</div>

{include file='footer.tpl'}