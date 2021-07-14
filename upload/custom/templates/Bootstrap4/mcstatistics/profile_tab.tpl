<h3 class="ui header">
  {$INGAME_STATISTICS_TITLE}
</h3>

{if isset($MCSTATISTICS_ERROR)}
  <div class="alert alert-warning">
    {$MCSTATISTICS_ERROR}
  </div>
{else}

<div class="row">
  {foreach from=$MCSTATISTICS_FIELDS key=key item=field}
    <div class="col-md-3">
        <strong>{$field.title}</strong></br>
        <p>{$field.value}</p>
    </div>
  {/foreach}
</div>

</br>

<center>Statistics provided by <a href="https://mcstatistics.org/" target="_blank">MCStatistics</a></center>
{/if}