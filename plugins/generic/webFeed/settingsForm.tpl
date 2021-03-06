{**
 * plugins/generic/webFeed/settingsForm.tpl
 *
 * Copyright (c) 2003-2013 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Web feeds plugin settings
 *
 *}
{strip}
{assign var="pageTitle" value="plugins.generic.webfeed.displayName"}
{include file="common/header.tpl"}
{/strip}
<div id="webFeedSettings">
<div id="description">{translate key="plugins.generic.webfeed.description"}</div>

<div class="separator">&nbsp;</div>

<h3>{translate key="plugins.generic.webfeed.settings"}</h3>

<script>
	$(function() {ldelim}
		// Attach the form handler.
		$('#webFeedSettingsForm').pkpHandler('$.pkp.controllers.form.FormHandler');
	{rdelim});
</script>
<form class="pkp_form" id="webFeedSettingsForm" method="post" action="{plugin_url path="settings"}">
{include file="common/formErrors.tpl"}

<table class="data">
	<tr>
		<td class="label" align="right"><input type="radio" name="displayPage" id="displayPage-all" value="all" {if $displayPage eq "all"}checked="checked" {/if}/></td>
		<td class="value">{translate key="plugins.generic.webfeed.settings.all"}</td>
	</tr>
	<tr>
		<td class="label" align="right"><input type="radio" name="displayPage" id="displayPage-homepage" value="homepage" {if $displayPage eq "homepage"}checked="checked" {/if}/></td>
		<td class="value">{translate key="plugins.generic.webfeed.settings.homepage"}</td>
	</tr>
	<tr>
		<td class="label" align="right"><input type="radio" name="displayPage" id="displayPage-issue" value="issue" {if $displayPage eq "issue"}checked="checked" {/if}/></td>
		<td class="value">{translate key="plugins.generic.webfeed.settings.issue"}</td>
	</tr>
	<tr>
		<td colspan="2"><div class="separator">&nbsp;</div></td>
	</tr>
	<tr>
		<td class="label" align="right"><input type="radio" name="displayItems" id="displayItems-issue" value="issue" {if $displayItems ne "recent"}checked="checked" {/if}/></td>
		<td class="value">{translate key="plugins.generic.webfeed.settings.currentIssue"}</td>
	</tr>
	<tr>
		<td class="label" align="right"><input type="radio" name="displayItems" id="displayItems-recent" value="recent" {if $displayItems eq "recent"}checked="checked" {/if}/></td>
		<td class="value">
		<input type="text" name="recentItems" id="recentItems" value="{$recentItems|escape}" size="2" maxlength="90" class="textField" />
		{translate key="plugins.generic.webfeed.settings.recentArticles"}</td>
	</tr>

</table>

<br/>

<input type="submit" name="save" class="button defaultButton" value="{translate key="common.save"}"/> <input type="button" class="button" value="{translate key="common.cancel"}" onclick="history.go(-1)"/>
</form>

<p><span class="formRequired">{translate key="common.requiredField"}</span></p>
</div>
{include file="common/footer.tpl"}
