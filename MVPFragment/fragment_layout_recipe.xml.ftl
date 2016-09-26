<recipe>

    <#if isDialog>
      <instantiate from="src/app_package/layout/fragment_layout.xml.ftl"
          to="${escapeXmlAttribute(resOut)}/layout/dialog_${classToResource(className)}.xml" />
    <#else>
      <instantiate from="src/app_package/layout/fragment_layout.xml.ftl"
          to="${escapeXmlAttribute(resOut)}/layout/fragment_${classToResource(className)}.xml" />
    </#if>

</recipe>
