import "impl/platform_info_stub.dart"
    if (dart.library.io) "impl/platform_info_vm.dart"
    if (dart.library.js) "impl/platform_info_web.dart"
    if (dart.library.js_interop) "impl/platform_info_web.dart"
    if (dart.library.html) "impl/platform_info_web.dart"
    as impl;

const isWeb = impl.PlatformInfo.isWeb;
