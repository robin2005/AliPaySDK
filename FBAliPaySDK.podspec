#
#  Be sure to run `pod spec lint FBAliPaySDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name              = "FBAliPaySDK"    #存储库名称
  s.version           = "1.1.1"      #版本号，与tag值一致
  s.summary           = "Alipay SDK for iOS. You can create alipay order or sign orders with `Order` subspec."
  s.homepage          = "https://github.com/robin2005/AliPaySDK"      #项目主页，不是git地址
  s.license           = {
    :type => 'Copyright',
    :text => <<-LINCENSE
      支付宝(中国)网络技术有限公司 ^? 版权所有.
      LINCENSE
  }
  s.author            = { "AliPay" => "http://www.alipay.com/" }
  s.platform          = :ios, '7.0'
  s.requires_arc      = true

  s.source       = { :git => "https://github.com/robin2005/AliPaySDK.git", :tag => "1.1.1" }         #存储库的git地址，以及tag值

  s.frameworks = "UIKit", "Foundation", "CoreTelephony", "Security", "QuartzCore", "CoreText", "CoreMotion", "CFNetwork", "CoreGraphics", "SystemConfiguration" 
  s.libraries  = 'ssl', 'crypto', 'z','c++'
 
  s.default_subspec   = 'openssl'

  s.subspec "openssl" do |ssl|  
     ssl.source_files        = 'AliPay-Extend/openssl/**/*.{h,m}'
     ssl.header_dir          = 'openssl'
     ssl.preserve_paths      = 'AliPay-Extend/libcrypto.a', 'AliPay-Extend/libssl.a'
     ssl.vendored_libraries  = 'AliPay-Extend/libcrypto.a', 'AliPay-Extend/libssl.a' 
     ssl.public_header_files = 'AliPay-Extend/openssl/**/*.h' 
  end

  s.subspec "Order" do |order| 
    #order.resources    = 'AlipaySDK.bundle'
    #order.vendored_frameworks = 'AlipaySDK.framework' 
    order.source_files = "AliPay-Extend/*.{h,m}",'AliPay-Extend/Util/**/*.{h,m}'  
    order.public_header_files = "AliPay-Extend/*.h",'AliPay-Extend/Util/**/*.h'  
    order.dependency 'FBAliPaySDK/openssl' 
  end

  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/FBAliPaySDK $(PODS_ROOT)/FBAliPaySDK/AliPay-Extend"}  
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

end

 
  
 
