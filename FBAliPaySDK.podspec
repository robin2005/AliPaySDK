#
#  Be sure to run `pod spec lint FBAliPaySDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "FBAliPaySDK"    #存储库名称
  s.version      = "1.0.6"      #版本号，与tag值一致
  s.summary      = "AliPay SDK for iOS"  #简介
  s.description  = "AliPay 移动支付接口智能 SDK 版 for iOS"  #描述
  s.homepage     = "https://github.com/robin2005/AliPaySDK"      #项目主页，不是git地址
  s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
  s.author             = { "robin2005" => "57048685@qq.com" }  #作者
  s.platform     = :ios, "7.0"                  #支持的平台和版本号
  s.source       = { :git => "https://github.com/robin2005/AliPaySDK.git", :tag => "1.0.6" }         #存储库的git地址，以及tag值
     
  s.frameworks = "UIKit", "Foundation", "CoreTelephony", "Security", "QuartzCore", "CoreText", "CoreMotion", "CFNetwork", "CoreGraphics", "SystemConfiguration"  

  s.vendored_frameworks = 'AlipaySDK.framework' 

  s.public_header_files = "AliPay-Extend/*.h","AliPay-Extend/**/*.h"

  s.source_files =  "AliPay-Extend/*.{h,m}",   "AliPay-Extend/**/*.{h,m}" 

  s.libraries =  'z','c++'
  s.resources = "AlipaySDK.bundle" 
  s.requires_arc = true #是否支持ARC
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/FBAliPaySDK"} 
  s.dependency "OpenSSL-Universal", "~> 1.0.2.13"

end
   
