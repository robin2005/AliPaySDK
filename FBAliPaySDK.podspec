#
#  Be sure to run `pod spec lint FBAliPaySDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "FBAliPaySDK"    #存储库名称
  s.version      = "1.0.7"      #版本号，与tag值一致
  s.summary      = "AliPay SDK for iOS"  #简介
  s.description  = "AliPay 移动支付接口智能 SDK 版 for iOS"  #描述
  s.homepage     = "https://github.com/robin2005/AliPaySDK"      #项目主页，不是git地址
  s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
  s.author             = { "robin2005" => "57048685@qq.com" }  #作者 

  s.source       = { :git => "https://github.com/robin2005/AliPaySDK.git", :tag => "1.0.7" }         #存储库的git地址，以及tag值
     
  s.frameworks = "UIKit", "Foundation", "CoreTelephony", "Security", "QuartzCore", "CoreText", "CoreMotion", "CFNetwork", "CoreGraphics", "SystemConfiguration"   
  s.ios.deployment_target = '7.0' 
  s.ios.source_files        = 'AliPay-Extend/openssl/**/*.h','AliPay-Extend/**/*.{h,m}'
  s.ios.public_header_files = 'AliPay-Extend/openssl/**/*.h',"AliPay-Extend/**/*.h"
  s.ios.header_dir          = 'openssl'
  s.ios.preserve_paths      = 'AliPay-Extend/libcrypto.a', 'AliPay-Extend/libssl.a'
  s.ios.vendored_libraries  = 'AliPay-Extend/libcrypto.a', 'AliPay-Extend/libssl.a'
  s.ios.vendored_frameworks = 'AlipaySDK.framework'    

  


  s.libraries = 'ssl', 'crypto', 'z','c++'
  s.resources = "AlipaySDK.bundle" 
  s.requires_arc = true #是否支持ARC
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/FBAliPaySDK"}  

end
  
 
