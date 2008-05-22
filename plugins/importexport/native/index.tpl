{**
 * index.tpl
 *
 * Copyright (c) 2000-2008 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * List of operations this plugin can perform
 *
 * $Id$
 *}
{translate|escape|assign:"pageTitleTranslated" value="plugins.importexport.native.displayName"}{include file="common/header.tpl"}

<br/>

<h3>{translate key="plugins.importexport.native.export"}</h3>
<ul class="plain">
	<li>&#187; <a href="{plugin_url path="papers"}">{translate key="plugins.importexport.native.export.papers"}</a></li>
</ul>

<h3>{translate key="plugins.importexport.native.import"}</h3>
<p>{translate key="plugins.importexport.native.import.description"}</p>
<form action="{plugin_url path="import"}" method="post" enctype="multipart/form-data">
<input type="file" class="uploadField" name="importFile" id="import" /> <input name="import" type="submit" class="button" value="{translate key="common.import"}" />
</form>

{include file="common/footer.tpl"}