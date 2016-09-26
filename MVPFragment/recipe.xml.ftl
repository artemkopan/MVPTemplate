<?xml version="1.0"?>
<recipe>

    <#include "fragment_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/MvpView.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/view/${className}View.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.java" />

    <#if isDialog>
        <instantiate from="src/app_package/classes/MvpFragment.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/ui/dialog/${className}Dialog.java" />

        <open file="${srcOut}/ui/dialog/${className}Dialog.java"/>
    <#else>
        <instantiate from="src/app_package/classes/MvpFragment.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/ui/fragment/${className}Fragment.java" />

        <open file="${srcOut}/ui/fragment/${className}Fragment.java"/>
    </#if>

	<open file="${srcOut}/presenter/${className}Presenter.java"/>

</recipe>
