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
 
  s.ios.platform          = :ios, '8.0'
  s.ios.deployment_target = '7.0'
  s.ios.source_files        = 'include-ios/openssl/**/*.h'
  s.ios.public_header_files = 'include-ios/openssl/**/*.h'
  s.ios.header_dir          = 'openssl'
  s.ios.preserve_paths      = 'lib-ios/libcrypto.a', 'lib-ios/libssl.a'
  s.ios.vendored_libraries  = 'lib-ios/libcrypto.a', 'lib-ios/libssl.a'

  s.osx.platform          = :osx, '10.10'
  s.osx.deployment_target = '10.6'
  s.osx.source_files        = 'include-osx/openssl/**/*.h'
  s.osx.public_header_files = 'include-osx/openssl/**/*.h'
  s.osx.header_dir          = 'openssl'
  s.osx.preserve_paths      = 'lib-osx/libcrypto.a', 'lib-osx/libssl.a'
  s.osx.vendored_libraries  = 'lib-osx/libcrypto.a', 'lib-osx/libssl.a'

  s.libraries = 'ssl', 'crypto'


  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/FBAliPaySDK"}   

end
 
 
  
 
