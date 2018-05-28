#
#  Be sure to run `pod spec lint FBAliPaySDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name              = "FBAliPaySDK"    #存储库名称
  s.version           = "1.1.2"      #版本号，与tag值一致
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

  s.source       = { :git => "https://github.com/robin2005/AliPaySDK.git", :tag => "1.1.2" }         #存储库的git地址，以及tag值

  s.frameworks = "UIKit", "Foundation", "CoreTelephony", "Security", "QuartzCore", "CoreText", "CoreMotion", "CFNetwork", "CoreGraphics", "SystemConfiguration" 
  s.libraries  = 'ssl', 'crypto', 'z','c++'
 
  s.default_subspec   = 'openssl'

  s.subspec "openssl" do |ssl|  
     ssl.header_dir          = 'openssl'
     ssl.source_files        = 'openssl/*.{h,m}'
     ssl.preserve_paths      = 'lib/libcrypto.a', 'lib/libssl.a'
     ssl.vendored_libraries  = 'lib/libcrypto.a', 'lib/libssl.a' 
     ssl.public_header_files = 'openssl/*.h' 
  end

  s.subspec "DataSigner" do |signer| 
    signer.source_files = 'DataSigner/*.{h,m}'
    signer.public_header_files = 'DataSigner/*.h'
    signer.dependency 'FBAliPaySDK/openssl' 
  end

  s.subspec "SDK" do |sdk| 
    sdk.resources    = 'AlipaySDK.bundle'
    sdk.vendored_frameworks = 'AlipaySDK.framework' 
    sdk.preserve_paths      = 'lib/libcrypto.a', 'lib/libssl.a'
    sdk.vendored_libraries  = 'lib/libcrypto.a', 'lib/libssl.a' 
    sdk.dependency 'FBAliPaySDK/openssl' 
  end

  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/FBAliPaySDK"}   

end
 
 
  
 
