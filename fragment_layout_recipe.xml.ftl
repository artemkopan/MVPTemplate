<recipe>

    <instantiate from="src/app_package/layout/fragment_layout.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

	<open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>

</recipe>
