
Pod::Spec.new do |s|
  s.name         = "XPrinter"
  s.version      = "0.0.1"
  s.summary      = "A short description of XPrinter."
  s.description  = "a printer you can easy to use"
  s.homepage     = "https://github.com/orangeLong/XPrinter"
  s.license      = "MIT"
  s.author       = { "Lixinlong" => "lixinlong@xkshi.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/orangeLong/XPrinter.git", :commit => "1689c4ff9ed73e20aa3d348b256c0f55a69498f7" }
#  s.source       = { :path => "/Users/lixinlong/Desktop/XPrinter", :tag => "0.0.1"}
#  s.source_files  = "Code/Project/**/*.{h,m}"
  s.resource  = "Code/Resource/XPrinterSource.bundle"
#  s.vendored_library = "Code/Resource/libJOBluetooth.a"
#  s.vendored_libraries = "Code/Resource/*.a"
#  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Code/Resource/libJOBluetooth.a"' }
#  s.resource  = "libJOBluetooth.a"
  s.framework  = "UIKit"
#  s.requires_arc = true
  s.dependency "CocoaAsyncSocket", "~> 0.0.1"
  s.dependency "JGProgressHUD"
  
  s.subspec 'Header' do |header|
	header.source_files = 'Code/Project/Header/**/*.{h,m}'
  end

  s.subspec 'PrinterSetting' do |printerSetting|

    printerSetting.subspec 'Common' do |common|
      common.source_files = 'Code/Project/PrinterSetting/Common/**/*.{h,m}'
    end	  

    printerSetting.subspec 'JOBluetooth' do |bluetooth|
      bluetooth.source_files = 'Code/Project/PrinterSetting/JOBluetooth/**/*.{h,m}'
      bluetooth.vendored_library = 'Code/Project/PrinterSetting/JOBluetooth/libJOBluetooth.a'
    end 

    printerSetting.subspec 'Print' do |print|
      print.source_files = 'Code/Project/PrinterSetting/Print/**/*.{h,m}'
    end

    printerSetting.subspec 'Printer' do |printer|
      printer.source_files = 'Code/Project/PrinterSetting/Printer/**/*.{h,m}'
    end

    printerSetting.subspec 'PrinterCommand' do |command|
      command.source_files = 'Code/Project/PrinterSetting/PrinterCommand/**/*.{h,m}'
    end

    printerSetting.subspec 'PrinterManager' do |manager|
      manager.source_files = 'Code/Project/PrinterSetting/PrinterManager/**/*.{h,m}'
    end

    printerSetting.subspec 'PrinterModel' do |model|
      model.source_files = 'Code/Project/PrinterSetting/PrinterModel/**/*.{h,m}'
    end
  end
  
  s.subspec 'PrinterSettingVC' do |vc|

    vc.subspec 'BluetoothPrinterSetting' do |bluetoothVC|
      bluetoothVC.source_files = 'Code/Project/PrinterSettingVC/BluetoothPrinterSetting/**/*.{h,m}'
    end
    
    vc.subspec 'DoucmentsPrinterSetting' do |doucmentVC|
      doucmentVC.source_files = 'Code/Project/PrinterSettingVC/DoucmentsPrinterSetting/**/*.{h,m}'
    end

    vc.subspec 'PrintSetting' do |printView|
      printView.source_files = 'Code/Project/PrinterSettingVC/PrintSetting/**/*.{h,m}'
    end

    vc.subspec 'ReceiptPrinterSetting' do |receiptVC|
      receiptVC.source_files = 'Code/Project/PrinterSettingVC/ReceiptPrinterSetting/**/*.{h,m}'
    end
  end

  s.subspec 'Widgets' do |widgets|
    widgets.source_files = 'Code/Project/Widgets/**/*.{h,m}' 
  end
end
