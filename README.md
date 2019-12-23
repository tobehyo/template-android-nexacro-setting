# Nexacro 17 모바일 앱 빌드를 위한 안드로이드 프로젝트 설정 방법
*Read this in other languages:  [한국어](README.md), [English](README.en.md)*
## Nexacro 17 mobile app 빌드를 위한 파일 준비
- 안드로이드용 넥사크로  라이브러리 파일(nexacro17_AndroidX_xxxxxxxx_x.zip)  
 nexacro17_AndroidX_xxxxxxxx_x.zip 파일은 투비소프트 기술지원 홈페이지에서 다운로드 받을 수 있습니다  
 Downloads &rarr; Nexacro Platform 17 &rarr; nexacro17_AndroidX_[{date}_{realeasenumber}].zip  
- Nexacro Activity Template files  
[Download](https://github.com/tobehyo/template-android-nexacro-setting/archive/master.zip)
 
## 안드로이드 프로젝트 생성 및 설정 
### 1. 폴더 열기
윈도우 OS 사용자 : 
```bash
{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other/
```
맥OS 사용자 : 
```bash
/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/
```
### 2. 파일 압축 해제, 파일 이름 변경 및 파일 복사하기
1. `template-android-nexacro-setting-master.zip` 파일 압축 해제
2. `template-android-nexacro-setting-master` 에서 `Nexacro Activity` 로 파일 이름 변경
3. Nexacro Activity 폴더 복사

예
```bash
other/Nexacro Activity/
```
### 3. 안드로드이 스튜디오에서 Empty Activity 를 선택하여 새로운 프로젝트 생성
### 4. 새로 생성한 프로젝트에서(app) 위에서 오른쪽 버튼 클릭 후 `New` &rarr; `Activity` &rarr; `Nexacro17 Activity` 선택
### 5. BoostrapURL 과 ProjectURL 입력
> **BoostrapURL** : start_android.json 파일 웹서버 파일 경로  
> **ProjectURL** : start_android.json 이 있는 웹서버 폴더 경로

### 6. `nexacro17.androidX.jar`, `libnexacro17.so` 파일 복사 및 붙여넣기
- `nexacro17_AndroidX_xxxxxxxx_x.zip` 파일을 압축 해제
- **nexacro.androidX.jar** 파일을 복사 후 프로젝트의 **libs**에 붙여넣기
- **arm64-v8a/libnexacro17.so** 파일을 복사 후 **jniLibs/arm64-v8a** 에 붙여넣기
- **armeabi-v7a/libnexacro17.so** 파일을 복사 후 **jniLibs/armeabi-v7a** 에 붙여넣기

# Nexqacro Studio 에서 안드로이드용 모바일 파일 생성
- `Deploy` &rarr; `Packing` 선택
- `Output Path` 설정 후 "Next" 클릭
- `Android` 및 `Update(Local+Server)` 선택 후 "Packing" 버튼 클릭
- 웹서버에 packing 파일 업로드
    Packing files
    - Archive00.xzip 
    - nexacro17lib.zip 
    - Resource.zip 
    - start_android.json **&larr; boostrap 파일**  
