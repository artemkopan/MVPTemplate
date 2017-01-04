<?xml version="1.0"?>
<globals>
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="resOut" value="${resDir}" />
    <global id="manifestOut" value="${manifestDir}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />
    <global id="className" value="${underscoreToCamelCase(className)}" />
	
	<global id="isPublicPresenter" type="boolean" value="<#if isGeneratePresenterPublic || structure == 'separated' || structure == 'separated_contract'>true<#else>false</#if>"/>
	<global id="isContract" type="boolean" value="<#if structure == 'all_in_one_contract' || structure == 'separated_contract'>true<#else>false</#if>"/>
	
	<global id="presenterName" value="${className}Presenter"/>
	<global id="viewName" value="${className}View"/>
	<global id="contractName" value="${className}Contract"/>
	<global id="activityName" value ="${className}Activity"/>
	

	<#if structure == 'separated' || structure == 'separated_contract'>
		<global id="pathView" value = "${escapeXmlAttribute(srcOut)}/view/${className}View.java" />
		<global id="pathPresenter" value = "${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.java" />
		<global id="pathContract" value = "${escapeXmlAttribute(srcOut)}/contract/${className}Contract.java" />
		<global id="presenterPackage" value = "${packageName}.presenter" />
		<global id="viewPackage" value = "${packageName}.view" />
		<global id="contractPackage" value = "${packageName}.contract" />
	<#else>
		<global id="pathView" value = "${escapeXmlAttribute(srcOut)}/${className}View.java" />
		<global id="pathPresenter" value = "${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />
		<global id="pathContract" value = "${escapeXmlAttribute(srcOut)}/${className}Contract.java" />
		<global id="presenterPackage" value = "${packageName}" />
		<global id="viewPackage" value = "${packageName}" />
		<global id="contractPackage" value = "${packageName}" />
	</#if>
	
	
	
	<#if uiComponent == 'activity'>
		<global id="layoutName" value="activity_${classToResource(className)}"/>
		<global id="pathUiComponentFrom" value = "src/app_package/classes/Activity.java.ftl" />

		<#if structure == 'separated' || structure == 'separated_contract'>
			<global id="pathUiComponentTo" value = "${escapeXmlAttribute(srcOut)}/ui/activity/${className}Activity.java" />
			<global id="uiPackage" value = "${packageName}.ui.activity" />
		<#else>
			<global id="pathUiComponentTo" value = "${escapeXmlAttribute(srcOut)}/${className}Activity.java" />
			<global id="uiPackage" value = "${packageName}" />
		</#if>
		
	<#elseif uiComponent == 'fragment'>
		<global id="layoutName" value="fragment_${classToResource(className)}"/>
		<global id="pathUiComponentFrom" value = "src/app_package/classes/Fragment.java.ftl" />
		<global id="fragmentName" value ="${className}Fragment"/>

		<#if structure == 'separated' || structure == 'separated_contract'>
			<global id="pathUiComponentTo" value = "${escapeXmlAttribute(srcOut)}/ui/fragment/${className}Fragment.java" />
			<global id="uiPackage" value = "${packageName}.ui.fragment" />
		<#else>
			<global id="pathUiComponentTo" value = "${escapeXmlAttribute(srcOut)}/${className}Fragment.java" />
			<global id="uiPackage" value = "${packageName}" />
		</#if>

	<#else>
		<global id="layoutName" value="dialog_${classToResource(className)}"/>
		<global id="pathUiComponentFrom" value = "src/app_package/classes/Fragment.java.ftl" />
		<global id="fragmentName" value ="${className}Dialog"/>

		<#if structure == 'separated' || structure == 'separated_contract'>
			<global id="pathUiComponentTo" value = "${escapeXmlAttribute(srcOut)}/ui/dialog/${className}Dialog.java" />
			<global id="uiPackage" value = "${packageName}.ui.dialog" />
		<#else>
			<global id="pathUiComponentTo" value = "${escapeXmlAttribute(srcOut)}/${className}Dialog.java" />
			<global id="uiPackage" value = "${packageName}" />
		</#if>
	</#if>
	
	
	
</globals>
