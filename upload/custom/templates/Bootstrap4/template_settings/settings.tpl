<form action="" method="post">
    <div class="form-group">
        <label for="inputTheme">{$THEME}</label>
        <select name="theme" class="form-control" id="inputTheme">
            {foreach from=$THEMES item=item}
                <option value="{$item.value}"{if $item.selected} selected{/if}>{$item.name}</option>
            {/foreach}
        </select>
    </div>
    <div class="form-group">
        <label for="inputNavbarType">{$NAVBAR_STYLE}</label>
        <select name="navbarType" class="form-control" id="inputNavbarType">
            <option value="light"{if $NAVBAR_STYLE_VALUE eq 'light'} selected{/if}>Light</option>
            <option value="dark"{if $NAVBAR_STYLE_VALUE eq 'dark'} selected{/if}>Dark</option>
        </select>
    </div>
    <div class="form-group">
        <label for="inputNavbarColour">{$NAVBAR_COLOUR}</label>
        <select name="navbarColour" class="form-control" id="inputNavbarColour">
            {foreach from=$NAVBAR_COLOURS item=item}
                <option value="{$item.value}"{if $item.selected} selected{/if}>{$item.name}</option>
            {/foreach}
        </select>
    </div>
    <div class="form-group">
        <label for="inputHeaderText">{$HEADER_TEXT}</label>
        <select name="headerText" class="form-control" id="inputHeaderText">
            <option value="1"{if $HEADER_TEXT_VALUE eq true} selected{/if}>Enabled</option>
			<option value="0"{if $HEADER_TEXT_VALUE eq false} selected{/if}>Disabled</option>
        </select>
    </div>
    <div class="form-group">
        <input type="hidden" name="token" value="{$TOKEN}">
        <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
    </div>
</form>