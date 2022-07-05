# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
-keep class io.agora.**{*;}
-dontwarn javax.**
-dontwarn com.google.devtools.build.android.**

-dontskipnonpubliclibraryclasses
-dontpreverify
-dontoptimize
-ignorewarnings
-verbose

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference

-libraryjars <java.home>/lib/rt.jar

-keepattributes Exceptions,InnerClasses,Signature,Deprecated,*Annotation*,EnclosingMethod


-keepclasseswithmembernames class * {
    native <methods>;
}

-keep public class  com.fosafer.voicenet.FosaferManager {
    public *;
}

-keep public class  com.fosafer.voicenet.engine.FOSSilentEngine {
    public *;
}

-keep public class  com.fosafer.voicenet.FOSSilentKeys {
    public *;
}

-keep public class  com.fosafer.voicenet.FOSCheckResult {
    public *;
}

-keep public class  com.fosafer.voicenet.engine.FaceInfo {
    public *;
}

-keep public class  com.fosafer.voicenet.engine.Image {
    public *;
}