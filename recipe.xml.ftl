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

        <instantiate from="src/app_package/classes/View.java.ftl"
					 to="${pathView}" />

		<open file="${pathView}"/>
		
        <instantiate from="src/app_package/classes/Presenter.java.ftl"
					 to="${pathPresenter}" />

        <open file="${pathPresenter}"/>

    </#if>

    <instantiate from="${pathUiComponentFrom}"
				 to="${pathUiComponentTo}" />

	<open file="${pathUiComponentTo}"/>

</recipe>
