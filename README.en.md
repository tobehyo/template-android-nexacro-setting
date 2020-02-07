# Android Studio Project Set up Guide for Nexacro 17
*Read this in other languages:  [한국어](README.md), [English](README.en.md)*
## Preapre files for Nexacro 17 mobile app
- Nexacro library file (nexacro17_AndroidX_xxxxxxxx_x.zip) for Android  
 *You can download "nexacro17_AndroidX_xxxxxxxx_x.zip" file in [tobesoft technical support](http://support.tobesoft.co.kr) site*  
 Downloads &rarr; Nexacro Platform 17 &rarr; nexacro17_AndroidX_[{date}_{realeasenumber}].zip  
 - Nexacro Activity Template files  
 [Download](https://github.com/tobehyo/template-android-nexacro-setting/archive/master.zip)
 
## Create Android project and set up
### 1. Open Folder
For Windows User : 
```bash
{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other/
```
For Mac User : 
```bash
/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/
```
### 2. Unzip, Rename and Copy a Folder with the Name of `template-android-nexacro-setting_master`.zip
1. UnZip : `template-android-nexacro-setting-master.zip`
2. Rename : `template-android-nexacro-setting-master` to `Nexacro Activity`
3. copy Nexacro Activity folder

For example, you can use
```bash
other/Nexacro Activity/
```
### 3. Create New Project with Empty Activity in Android Stuido
### 4. Right click on a package(app) that you created new project and select `New` &rarr; `Activity` &rarr; `Nexacro17 Activity`
### 5. Set BoostrapURL and ProjectURL
> **BoostrapURL** : start_android.json file path on web server  
> **ProjectURL** : start_android.json folder path on web server
### 6. Copy and Paste `nexacro17.androidX.jar`, `libnexacro17.so` files
- unzip `nexacro17_AndroidX_xxxxxxxx_x.zip`
- Copy **nexacro.androidX.jar** from unzip files and paste to libs in project
- Copy **arm64-v8a/libnexacro17.so** from unzip folder and paste to **jniLibs/arm64-v8a**
- Copy **armeabi-v7a/libnexacro17.so** from unzip folder and paste to **jniLibs/armeabi-v7a**

# Packing Android mobile files in Nexacro Studio
- Select `Deploy` &rarr; `Packing`
- Set `Output Path` then click "Next"
- Select `Android` and `Update(Local+Server)` then click "Packing"
- upload packing files to web server
    Packing files
    - Archive00.xzip 
    - nexacro17lib.zip 
    - Resource.zip 
    - start_android.json **&larr; this is boostrap file**  