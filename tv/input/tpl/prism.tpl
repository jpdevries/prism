<input id="tv{$tv->id}" name="tv{$tv->id}"
	type="color" class="textfield"
	value="{$tv->get('value')|escape}"
	{$style}
	tvtype="{$tv->type}"
/>

<script type="text/javascript">
// <![CDATA[
{literal}
Ext.onReady(function() {
    var fld = MODx.load({
    {/literal}
        xtype: 'textfield'
        ,applyTo: 'tv{$tv->id}'
        ,width: ''
        ,enableKeyEvents: false
        ,msgTarget: 'under'
        ,allowBlank: {if $params.allowBlank == 1 || $params.allowBlank == 'true'}true{else}false{/if}
        {if $params.maxLength},maxLength: {$params.maxLength}{/if}
        {if $params.minLength},minLength: {$params.minLength}{/if}
    {literal}
		/*
			I'm assuming it's just because color input is so new, but events such as change and mouse events aren't being heard, causing a bug where the Manager save button isn't activated when prism TV types are updated
			so for now, using render. only downside is the save button gets enabled right off the bat regardless of if changes are made so kinda janky :/
		*/
        ,listeners: { 'render': { fn:MODx.fireResourceFormChange, scope:this} }
    });
    Ext.getCmp('modx-panel-resource').getForm().add(fld);
    //MODx.makeDroppable(fld);
});
{/literal}
// ]]>
</script>
