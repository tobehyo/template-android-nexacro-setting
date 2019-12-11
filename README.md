# Nexacro 17 모바일 앱 빌드를 위한 안드로이드 프로젝트 설정 방법
*Read this in other languages:  [한국어](README.md), [English](README.en.md)*
## Nexacro 17 mobile app 빌드를 위한 파일 준비
- 안드로이드용 넥사크로  라이브러리 파일(nexacro17_AndroidX_xxxxxxxx_x.zip)  
 nexacro17_AndroidX_xxxxxxxx_x.zip 파일은 투비소프트 기술지원 홈페이지에서 다운로드 받을 수 있습니다  
 Downloads &rarr; Nexacro Platform 17 &rarr; nexacro17_AndroidX_[{date}_{realeasenumber}].zip  
- Nexacro Activity Template files  
[Download](https://github.com/tobehyo/template_android_nexacro_setting/archive/master.zip)
 
## 안드로이드 프로젝트 생성 및 설정 
### 1. Open Folder
For Windows User : 
```bash
{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other/
```
For Mac User : 
```bash
/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/
```
### 2. Unzip, Rename and Copy a Folder with the Name of `template_android_nexacro_setting_master`.zip
1. UnZip : `template_android_nexacro_setting_master.zip`
2. Rename : `template_android_nexacro_setting_master` to `Nexacro Activity`
3. copy Nexacro Activity folder

For example, you can use
```bash
other/Nexacro Activity/
```
### 3. Create New Project with Empty Activity in Android Stuido
### 4. Right click on a package(app) that you created new project and select `New` &rarr; `Activity` &rarr; `Nexacro17 Activity`
### 5. Set BoostrapURL and ProjectURL

### 6. Copy and Paste `nexacro17.androidX.jar`, `libnexacro17.so` files
- unzip `nexacro17_AndroidX_xxxxxxxx_x.zip`
- Copy **nexacro.androidX.jar** from unzip files and paste to libs in project
- Copy **arm64-v8a/libnexacro17.so** from unzip folder and paste to **jniLibs/arm64-v8a**
- Copy **armeabi-v7a/libnexacro17.so** from unzip folder and paste to **jniLibs/armeabi-v7a**

# Packing Android mobile files in Nexacro Studio
- Select `Deploy` &rarr; `Packing`
- Set `Output Path` then click "next"
- Select `Android` and `Update(Local+Server)` click "Packing"
- upload packing files to web server
    Packing files
    - Archive00.xzip 
    - nexacro17lib.zip 
    - Resource.zip 
    - start_android.json **&larr; this is boostrap file**  
    `BoostrapURL` : start_android.json path on web server  
    `ProjectURL` : start_android.json root path on web server