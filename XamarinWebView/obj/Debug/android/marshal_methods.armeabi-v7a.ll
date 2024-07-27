; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [92 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 30
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 36
	i32 57967248, ; 2: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 18
	i32 160529393, ; 3: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 12
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 24
	i32 166922606, ; 5: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 17
	i32 232815796, ; 6: System.Web.Services => 0xde07cb4 => 10
	i32 280482487, ; 7: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 28
	i32 321597661, ; 8: System.Numerics => 0x132b30dd => 7
	i32 342366114, ; 9: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 29
	i32 465846621, ; 10: mscorlib => 0x1bc4415d => 4
	i32 469710990, ; 11: System.dll => 0x1bff388e => 6
	i32 476646585, ; 12: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 28
	i32 514659665, ; 13: Xamarin.Android.Support.Compat => 0x1ead1551 => 17
	i32 663517072, ; 14: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 35
	i32 666292255, ; 15: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 22
	i32 691348768, ; 16: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 39
	i32 692692150, ; 17: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 15
	i32 700284507, ; 18: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 37
	i32 809851609, ; 19: System.Drawing.Common.dll => 0x30455ad9 => 43
	i32 928116545, ; 20: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 36
	i32 967690846, ; 21: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 29
	i32 1084122840, ; 22: Xamarin.Kotlin.StdLib => 0x409e66d8 => 38
	i32 1098259244, ; 23: System => 0x41761b2c => 6
	i32 1204270330, ; 24: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 22
	i32 1246548578, ; 25: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 25
	i32 1264511973, ; 26: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 33
	i32 1264890200, ; 27: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 40
	i32 1275534314, ; 28: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 39
	i32 1278448581, ; 29: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 21
	i32 1587447679, ; 30: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 12
	i32 1639515021, ; 31: System.Net.Http.dll => 0x61b9038d => 42
	i32 1657153582, ; 32: System.Runtime => 0x62c6282e => 9
	i32 1658241508, ; 33: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 34
	i32 1746316138, ; 34: Mono.Android.Export => 0x6816ab6a => 3
	i32 1776026572, ; 35: System.Core.dll => 0x69dc03cc => 5
	i32 1813058853, ; 36: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 38
	i32 1885316902, ; 37: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 23
	i32 1919157823, ; 38: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 31
	i32 2079903147, ; 39: System.Runtime.dll => 0x7bf8cdab => 9
	i32 2090596640, ; 40: System.Numerics.Vectors => 0x7c9bf920 => 8
	i32 2196165013, ; 41: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 18
	i32 2201107256, ; 42: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 41
	i32 2201231467, ; 43: System.Net.Http => 0x8334206b => 42
	i32 2256548716, ; 44: Xamarin.AndroidX.MultiDex => 0x8680336c => 31
	i32 2315684594, ; 45: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 19
	i32 2475788418, ; 46: Java.Interop.dll => 0x93918882 => 1
	i32 2505896520, ; 47: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 30
	i32 2605712449, ; 48: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 41
	i32 2671474046, ; 49: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 40
	i32 2701096212, ; 50: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 34
	i32 2751899777, ; 51: Xamarin.Android.Support.Collections => 0xa406a881 => 16
	i32 2770495804, ; 52: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 37
	i32 2819470561, ; 53: System.Xml.dll => 0xa80db4e1 => 11
	i32 2861098320, ; 54: Mono.Android.Export.dll => 0xaa88e550 => 3
	i32 2903344695, ; 55: System.ComponentModel.Composition => 0xad0d8637 => 45
	i32 2905242038, ; 56: mscorlib.dll => 0xad2a79b6 => 4
	i32 2919462931, ; 57: System.Numerics.Vectors.dll => 0xae037813 => 8
	i32 2921128767, ; 58: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 20
	i32 3016983068, ; 59: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 33
	i32 3068715062, ; 60: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 13
	i32 3247949154, ; 61: Mono.Security => 0xc197c562 => 44
	i32 3296380511, ; 62: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 16
	i32 3340431453, ; 63: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 23
	i32 3345895724, ; 64: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 32
	i32 3362522851, ; 65: Xamarin.AndroidX.Core => 0xc86c06e3 => 27
	i32 3366347497, ; 66: Java.Interop => 0xc8a662e9 => 1
	i32 3429136800, ; 67: System.Xml => 0xcc6479a0 => 11
	i32 3439690031, ; 68: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 15
	i32 3465026690, ; 69: XamarinWebView.dll => 0xce881c82 => 0
	i32 3476120550, ; 70: Mono.Android => 0xcf3163e6 => 2
	i32 3493954962, ; 71: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 26
	i32 3567349600, ; 72: System.ComponentModel.Composition.dll => 0xd4a16f60 => 45
	i32 3633644679, ; 73: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 20
	i32 3672681054, ; 74: Mono.Android.dll => 0xdae8aa5e => 2
	i32 3676310014, ; 75: System.Web.Services.dll => 0xdb2009fe => 10
	i32 3681174138, ; 76: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 13
	i32 3684561358, ; 77: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 26
	i32 3689375977, ; 78: System.Drawing.Common => 0xdbe768e9 => 43
	i32 3718780102, ; 79: Xamarin.AndroidX.Annotation => 0xdda814c6 => 19
	i32 3786282454, ; 80: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 24
	i32 3829621856, ; 81: System.Numerics.dll => 0xe4436460 => 7
	i32 3862817207, ; 82: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 14
	i32 3874897629, ; 83: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 14
	i32 3888767677, ; 84: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 32
	i32 3896760992, ; 85: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 27
	i32 3910130544, ; 86: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 25
	i32 3921031405, ; 87: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 35
	i32 3943208436, ; 88: XamarinWebView => 0xeb0895f4 => 0
	i32 4015948917, ; 89: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 21
	i32 4105002889, ; 90: Mono.Security.dll => 0xf4ad5f89 => 44
	i32 4151237749 ; 91: System.Core => 0xf76edc75 => 5
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [92 x i32] [
	i32 30, i32 36, i32 18, i32 12, i32 24, i32 17, i32 10, i32 28, ; 0..7
	i32 7, i32 29, i32 4, i32 6, i32 28, i32 17, i32 35, i32 22, ; 8..15
	i32 39, i32 15, i32 37, i32 43, i32 36, i32 29, i32 38, i32 6, ; 16..23
	i32 22, i32 25, i32 33, i32 40, i32 39, i32 21, i32 12, i32 42, ; 24..31
	i32 9, i32 34, i32 3, i32 5, i32 38, i32 23, i32 31, i32 9, ; 32..39
	i32 8, i32 18, i32 41, i32 42, i32 31, i32 19, i32 1, i32 30, ; 40..47
	i32 41, i32 40, i32 34, i32 16, i32 37, i32 11, i32 3, i32 45, ; 48..55
	i32 4, i32 8, i32 20, i32 33, i32 13, i32 44, i32 16, i32 23, ; 56..63
	i32 32, i32 27, i32 1, i32 11, i32 15, i32 0, i32 2, i32 26, ; 64..71
	i32 45, i32 20, i32 2, i32 10, i32 13, i32 26, i32 43, i32 19, ; 72..79
	i32 24, i32 7, i32 14, i32 14, i32 32, i32 27, i32 25, i32 35, ; 80..87
	i32 0, i32 21, i32 44, i32 5 ; 88..91
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
