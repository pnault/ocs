{**
 * suppFiles.tpl
 *
 * Copyright (c) 2000-2007 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Paper reading tools -- supplementary files page.
 *
 * $Id$
 *}
{assign var=pageTitle value="rt.suppFiles"}
{include file="rt/header.tpl"}

<h3>{$paper->getPaperTitle()|strip_unsafe_html}</h3>

{foreach from=$paper->getSuppFiles() item=suppFile key=key}
<h4>{$key+1}. {$suppFile->getTitle()|escape}</h4>
<table class="data" width="100%">
<tr valign="top">
	<td class="label" width="20%">{translate key="common.subject"}</td>
	<td class="value" width="80%">
		{$suppFile->getSubject()|escape}
	</td>
</tr>
<tr valign="top">
	<td class="label" width="20%">{translate key="common.type"}</td>
	<td class="value" width="80%">
		{if $suppFile->getType()|escape}
			{$suppFile->getType()}
		{elseif $suppFile->getTypeOther()}
			{$suppFile->getTypeOther()|escape}
		{else}
			{translate key="common.other"}
		{/if}
	</td>
</tr>
<tr valign="top">
	<td class="label" width="20%">&nbsp;</td>
	<td class="value" width="80%">
		<a href="{url page="paper" op="downloadSuppFile" path=$paperId|to_array:$suppFile->getBestSuppFileId($currentConference)}" class="action">{if $suppFile->isInlineable()}{translate key="common.view"}{else}{translate key="common.download"}{/if}</a> ({$suppFile->getNiceFileSize()})&nbsp;&nbsp;&nbsp;&nbsp;<a href="{url op="suppFileMetadata" path=$paperId|to_array:$galleyId:$suppFile->getSuppFileId()}" class="action">{translate key="rt.suppFiles.viewMetadata"}</a>
	</td>
</tr>
</table>

{/foreach}

{include file="rt/footer.tpl"}
