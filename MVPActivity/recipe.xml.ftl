<?xml version="1.0"?>
<recipe>

    <#if isCreateLayout>
      <#include "activity_layout_recipe.xml.ftl" />
    </#if>

    <merge from="src/app_package/manifest/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="src/app_package/classes/MvpView.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/view/${className}View.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.java" />

    <instantiate from="src/app_package/classes/MvpActivity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/ui/activity/${className}Activity.java" />

	<open file="${srcOut}/presenter/${className}Presenter.java"/>
	<open file="${srcOut}/ui/activity/${className}Activity.java"/>

</recipe>
