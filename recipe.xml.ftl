<?xml version="1.0"?>
<recipe>

	<#if uiComponent == 'activity'>
		<#if isCreateLayout>
		  <#include "activity_layout_recipe.xml.ftl" />
		</#if>

		<merge from="src/app_package/manifest/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
	<#else>
		<#if isCreateLayout>
		  <#include "fragment_layout_recipe.xml.ftl" />
		</#if> 
	</#if>
	

    <#if isGeneratePresenter>

		<#if isContract>
			<instantiate from="src/app_package/classes/Contract.<#if isKotlin == true>kt<#else>java</#if>.ftl"
						 to="${pathContract}" />
			
			<open file="${pathContract}"/>
		<#else>
			<instantiate from="src/app_package/classes/View.<#if isKotlin == true>kt<#else>java</#if>.ftl"
						 to="${pathView}" />

			<open file="${pathView}"/>
		</#if>
		
        <instantiate from="src/app_package/classes/Presenter.<#if isKotlin == true>kt<#else>java</#if>.ftl"
					 to="${pathPresenter}" />

        <open file="${pathPresenter}"/>

    </#if>

    <instantiate from="${pathUiComponentFrom}"
				 to="${pathUiComponentTo}" />

	<open file="${pathUiComponentTo}"/>

</recipe>
