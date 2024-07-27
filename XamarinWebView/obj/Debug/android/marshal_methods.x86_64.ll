; ModuleID = 'obj/Debug/android/marshal_methods.x86_64.ll'
source_filename = "obj/Debug/android/marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [92 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 2
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 24
	i64 233177144301842968, ; 2: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 25
	i64 634308326490598313, ; 3: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 30
	i64 702024105029695270, ; 4: System.Drawing.Common => 0x9be17343c0e7726 => 43
	i64 816102801403336439, ; 5: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 16
	i64 1000557547492888992, ; 6: Mono.Security.dll => 0xde2b1c9cba651a0 => 44
	i64 1315114680217950157, ; 7: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 22
	i64 1490981186906623721, ; 8: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 18
	i64 1875917498431009007, ; 9: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 19
	i64 2136356949452311481, ; 10: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 31
	i64 2203565783020068373, ; 11: Xamarin.KotlinX.Coroutines.Core => 0x1e94a367981dde15 => 40
	i64 2284400282711631002, ; 12: System.Web.Services => 0x1fb3d1f42fd4249a => 10
	i64 2497223385847772520, ; 13: System.Runtime => 0x22a7eb7046413568 => 9
	i64 2592350477072141967, ; 14: System.Xml.dll => 0x23f9e10627330e8f => 11
	i64 2624866290265602282, ; 15: mscorlib.dll => 0x246d65fbde2db8ea => 4
	i64 2787234703088983483, ; 16: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 33
	i64 3289520064315143713, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 29
	i64 3303437397778967116, ; 18: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 20
	i64 3311221304742556517, ; 19: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 8
	i64 3344514922410554693, ; 20: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 41
	i64 3493805808809882663, ; 21: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 34
	i64 3531994851595924923, ; 22: System.Numerics => 0x31042a9aade235bb => 7
	i64 3571415421602489686, ; 23: System.Runtime.dll => 0x319037675df7e556 => 9
	i64 4636684751163556186, ; 24: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 35
	i64 5507995362134886206, ; 25: System.Core.dll => 0x4c705499688c873e => 5
	i64 5574231584441077149, ; 26: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 21
	i64 5757522595884336624, ; 27: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 26
	i64 5767696078500135884, ; 28: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 15
	i64 6319713645133255417, ; 29: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 30
	i64 6422361503388749313, ; 30: XamarinWebView.dll => 0x5920cfc29ca14e01 => 0
	i64 6591024623626361694, ; 31: System.Web.Services.dll => 0x5b7805f9751a1b5e => 10
	i64 6894844156784520562, ; 32: System.Numerics.Vectors => 0x5faf683aead1ad72 => 8
	i64 7103753931438454322, ; 33: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 28
	i64 7654504624184590948, ; 34: System.Net.Http => 0x6a3a4366801b8264 => 42
	i64 7735352534559001595, ; 35: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 38
	i64 8044118961405839122, ; 36: System.ComponentModel.Composition => 0x6fa2739369944712 => 45
	i64 8083354569033831015, ; 37: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 29
	i64 8101777744205214367, ; 38: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 15
	i64 8167236081217502503, ; 39: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8187640529827139739, ; 40: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 39
	i64 8385935383968044654, ; 41: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 14
	i64 8626175481042262068, ; 42: Java.Interop => 0x77b654e585b55834 => 1
	i64 8951477988056063522, ; 43: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 32
	i64 9031035476476434958, ; 44: Xamarin.KotlinX.Coroutines.Core.dll => 0x7d54aeead9541a0e => 40
	i64 9662334977499516867, ; 45: System.Numerics.dll => 0x8617827802b0cfc3 => 7
	i64 9808709177481450983, ; 46: Mono.Android.dll => 0x881f890734e555e7 => 2
	i64 9825649861376906464, ; 47: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 26
	i64 9866412715007501892, ; 48: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 13
	i64 9998632235833408227, ; 49: Mono.Security => 0x8ac2470b209ebae3 => 44
	i64 10038780035334861115, ; 50: System.Net.Http.dll => 0x8b50e941206af13b => 42
	i64 10321854143672141184, ; 51: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 37
	i64 10363495123250631811, ; 52: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 16
	i64 10376576884623852283, ; 53: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 34
	i64 10406448008575299332, ; 54: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 41
	i64 10430153318873392755, ; 55: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 27
	i64 10659297895366931030, ; 56: XamarinWebView => 0x93ed6ef5e06a3256 => 0
	i64 10847732767863316357, ; 57: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 22
	i64 10850923258212604222, ; 58: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 14
	i64 11019817191295005410, ; 59: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 21
	i64 11023048688141570732, ; 60: System.Core => 0x98f9bc61168392ac => 5
	i64 11037814507248023548, ; 61: System.Xml => 0x992e31d0412bf7fc => 11
	i64 11299661109949763898, ; 62: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 25
	i64 11376461258732682436, ; 63: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 17
	i64 11446671985764974897, ; 64: Mono.Android.Export => 0x9edabf8623efc131 => 3
	i64 11580057168383206117, ; 65: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 19
	i64 11591352189662810718, ; 66: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 33
	i64 11672361001936329215, ; 67: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 28
	i64 12414299427252656003, ; 68: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 17
	i64 12700543734426720211, ; 69: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 24
	i64 12963446364377008305, ; 70: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 43
	i64 13454009404024712428, ; 71: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 36
	i64 13465488254036897740, ; 72: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 38
	i64 13491513212026656886, ; 73: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 23
	i64 14172845254133543601, ; 74: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 31
	i64 14792063746108907174, ; 75: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 36
	i64 15150743910298169673, ; 76: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 32
	i64 15188640517174936311, ; 77: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 12
	i64 15246441518555807158, ; 78: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 12
	i64 15279429628684179188, ; 79: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 39
	i64 15370334346939861994, ; 80: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 27
	i64 15568534730848034786, ; 81: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 18
	i64 15609085926864131306, ; 82: System.dll => 0xd89e9cf3334914ea => 6
	i64 16154507427712707110, ; 83: System => 0xe03056ea4e39aa26 => 6
	i64 16496768397145114574, ; 84: Mono.Android.Export.dll => 0xe4f04b741db987ce => 3
	i64 16565028646146589191, ; 85: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 45
	i64 16833383113903931215, ; 86: mscorlib => 0xe99c30c1484d7f4f => 4
	i64 17024911836938395553, ; 87: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 20
	i64 17760961058993581169, ; 88: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 13
	i64 17891337867145587222, ; 89: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 37
	i64 18116111925905154859, ; 90: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 23
	i64 18380184030268848184 ; 91: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 35
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [92 x i32] [
	i32 2, i32 24, i32 25, i32 30, i32 43, i32 16, i32 44, i32 22, ; 0..7
	i32 18, i32 19, i32 31, i32 40, i32 10, i32 9, i32 11, i32 4, ; 8..15
	i32 33, i32 29, i32 20, i32 8, i32 41, i32 34, i32 7, i32 9, ; 16..23
	i32 35, i32 5, i32 21, i32 26, i32 15, i32 30, i32 0, i32 10, ; 24..31
	i32 8, i32 28, i32 42, i32 38, i32 45, i32 29, i32 15, i32 1, ; 32..39
	i32 39, i32 14, i32 1, i32 32, i32 40, i32 7, i32 2, i32 26, ; 40..47
	i32 13, i32 44, i32 42, i32 37, i32 16, i32 34, i32 41, i32 27, ; 48..55
	i32 0, i32 22, i32 14, i32 21, i32 5, i32 11, i32 25, i32 17, ; 56..63
	i32 3, i32 19, i32 33, i32 28, i32 17, i32 24, i32 43, i32 36, ; 64..71
	i32 38, i32 23, i32 31, i32 36, i32 32, i32 12, i32 12, i32 39, ; 72..79
	i32 27, i32 18, i32 6, i32 6, i32 3, i32 45, i32 4, i32 20, ; 80..87
	i32 13, i32 37, i32 23, i32 35 ; 88..91
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
