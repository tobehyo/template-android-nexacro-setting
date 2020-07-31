<?xml version="1.0"?>
<recipe>

    <#--  <mkdir at="${escapeXmlAttribute(projectOut)}/libs" />  -->
    
    <mkdir at="${escapeXmlAttribute(projectOut)}/src/main/jniLibs/arm64-v8a" />
    
    <mkdir at="${escapeXmlAttribute(projectOut)}/src/main/jniLibs/armeabi-v7a" />

    <#--  <copy from="root/libs"
            to="${escapeXmlAttribute(projectOut)}/libs" />  -->

    <#--  <copy from="root/jniLibs/arm64-v8a"
            to="${escapeXmlAttribute(projectOut)}/src/main/jniLibs/arm64-v8a" />

    <copy from="root/jniLibs/armeabi-v7a"
            to="${escapeXmlAttribute(projectOut)}/src/main/jniLibs/armeabi-v7a" />              -->

    <instantiate from="root/src/app_package/activityClass.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${nexacroMainActivityClass}.java" />

    <instantiate from="root/res/layout/activity.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${nexacroMainActivityLayout}.xml" />
   
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="root/res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${nexacroMainActivityLayout}.xml" />  
    <open file="${escapeXmlAttribute(srcOut)}/${nexacroMainActivityClass}.java" />

</recipe>
