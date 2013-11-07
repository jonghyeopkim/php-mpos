<article class="module width_half">
  <header><h3>Last 24 hour totals</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead>
      <tr style="background-color:#B6DAFF;">
        <th align="center">Blocks Found</th>
        <th align="center">Rewards</th>
        <th align="center">Avg Difficulty</th>
        <th align="center">Expected Shares</th>
        <th align="center">Actual Shares</th>
        <th align="center" style="padding-right: 25px;">Percentage</th>
      </tr>
    </thead>
    <tbody>
      {assign var=percentage1 value=0}
      <tr>
         <td align="center">{$POOLSTATS.count|number_format:"0"}</td>
         <td align="center">{$POOLSTATS.rewards|number_format:"4"}</td>
         <td align="center">{$POOLSTATS.average|number_format:"4"}</td>
         <td align="center">{$POOLSTATS.expected|number_format:"0"}</td>
         <td align="center">{$POOLSTATS.shares|number_format:"0"}</td>
         <td align="center" style="padding-right: 25px;">{if $POOLSTATS.shares > 0}{math assign="percentage1" equation="shares1 / estshares1 * 100" shares1=$POOLSTATS.shares estshares1=$POOLSTATS.expected}{/if}
          <font color="{if ($percentage1 <= 100)}green{else}red{/if}">{$percentage1|number_format:"2"}</font></b></td>
      </tr>
    </tbody>
  </table>

  <table class="tablesorter">
    <tbody>
      <tr>
        <td align="left">
          <a href="{$smarty.server.PHP_SELF}?page={$smarty.request.page}&action={$smarty.request.action}&height={if is_array($BLOCKSFOUND) && count($BLOCKSFOUND) > ($BLOCKLIMIT - 1)}{$BLOCKSFOUND[$BLOCKLIMIT - 1].height}{/if}&prev=1"><i class="icon-left-open"></i></a>
        </td>
        <td align="right">
          <a href="{$smarty.server.PHP_SELF}?page={$smarty.request.page}&action={$smarty.request.action}&height={if is_array($BLOCKSFOUND) && count($BLOCKSFOUND) > 0}{$BLOCKSFOUND[0].height}{/if}&next=1"><i class="icon-right-open"></i></a>
        </td>
      </tr>
    </tbody>
  </table>
</article>
