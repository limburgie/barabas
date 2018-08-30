<div class="row">
	<div class="col-sm-12">
		<@content "jobs"/>
	</div>
</div>

<#macro content uid>
	<#assign item = api.query("content").with("uid", uid).findFirst()>
	<h2>${item.getText("title")}</h2>
	<p>
		${item.getRichText("content").html}
	</p>
</#macro>