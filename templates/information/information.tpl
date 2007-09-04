{**
 * information.tpl
 *
 * Copyright (c) 2000-2007 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Conference information page.
 *
 * $Id$
 *}
{include file="common/header.tpl"}

{if !empty($conferenceContent)}
	<h2>{$conferenceTitle}</h2>
	<p>{$conferenceContent|nl2br}</p>
{/if}

{if !empty($schedConfContent)}
	<h2>{$schedConfTitle}</h2>
	<p>{$schedConfContent|nl2br}</p>
{/if}

{include file="common/footer.tpl"}
