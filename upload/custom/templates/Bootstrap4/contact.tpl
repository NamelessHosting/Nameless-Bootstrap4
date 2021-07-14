{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="card">
        <div class="card-body">
            <h2>{$CONTACT}</h2>
            <hr>
            
            {if isset($SUCCESS)}
                <div class="alert alert-success">
                    {$SUCCESS}
                </div>
            {/if}

            {if isset($ERRORS)}
                <div class="alert alert-danger">
                    {$ERRORS}
                </div>
            {/if}

            {if isset($ERROR_EMAIL)}
                <div class="alert alert-danger">
                    {$ERROR_EMAIL}
                </div>
            {/if}

            {if isset($ERROR_CONTENT)}
                <div class="alert alert-danger">
                    {$ERROR_CONTENT}
                </div>
            {/if}

            <form action="" method="post" id="contact">     
                <div class="form-group">
                    <input type="email" name="email" id="email" class="form-control form-control-lg" placeholder="{$EMAIL}" tabindex="3">
                </div>
                <div class="form-group">
                    <label for="inputMessage">{$MESSAGE}</label>
                    <textarea id="inputMessage" name="content" class="form-control" rows="5"></textarea>
                </div>
                {if $CAPTCHA}
                    <div class="form-group">
                        {$CAPTCHA}
                    </div>
                {/if}
                <div class="form-group">
                    <input type="hidden" name="token" value="{$TOKEN}">
                    <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                </div>
            </form>
        </div>
    </div>
</div>

{include file='footer.tpl'}