<#import "./shared_macros.ftl" as shared>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<#if isInstantApp>
apply plugin: 'com.android.feature'
<#else>
  <#if isLibraryProject>
apply plugin: 'com.android.library'
ext {
    BT_GROUP = ''
    BT_ARTIFACT = ''
    BT_VERSION = '1.0'
    BT_DESC = ''
}
apply from: 'https://raw.githubusercontent.com/ihanbo/gradleBaseConfig/master/module_build.gradle'
//apply from: 'https://raw.githubusercontent.com/ihanbo/gradleBaseConfig/master/bintray_push.gradle'
  <#else>
apply plugin: 'com.android.application'
apply from: 'https://raw.githubusercontent.com/ihanbo/gradleBaseConfig/master/module_build.gradle'
  </#if>
</#if>
<@kt.addKotlinPlugins />



android {
 
    defaultConfig {

    <#if isApplicationProject>
      applicationId "${packageName}"
    </#if>
    
    }
   
}

dependencies {
    
}
