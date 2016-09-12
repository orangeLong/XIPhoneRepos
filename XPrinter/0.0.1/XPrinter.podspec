
Pod::Spec.new do |s|
  s.name         = "XPrinter"
  s.version      = "0.0.1"
  s.summary      = "A short description of XPrinter."
  s.description  = "a printer you can easy to use"
  s.homepage     = "https://github.com/orangeLong/XPrinter"
  s.license      = "MIT"
  s.author       = { "Lixinlong" => "lixinlong@xkshi.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/orangeLong/XPrinter.git", :tag => "0.0.1" }
#  s.source       = { :path => "/Users/lixinlong/Desktop/XPrinter", :tag => "0.0.1"}
  s.source_files  = "Code/Project/**/*.{h,m}"
  s.resource  = "Code/Resource/XPrinterSource.bundle"
#  s.vendored_library = "Code/Resource/libJOBluetooth.a"
  s.vendored_libraries = "Code/Resource/*.a"
#  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Code/Resource/libJOBluetooth.a"' }
#  s.resource  = "libJOBluetooth.a"
  s.framework  = "UIKit"
#  s.library   = "JOBluetooth"
#  s.requires_arc = true
#  s.dependency "CocoaAsyncSocket", "~> 0.0.1"
  s.dependency "JGProgressHUD"
end
