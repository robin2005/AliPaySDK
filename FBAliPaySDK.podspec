#
# Be sure to run `pod lib lint FBAliPaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FBAliPaySDK'
  s.version          = '1.1.4'
  s.summary          = 'FBAliPaySDK 是 AlipaySDK 的帮助类库。'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
FBAliPaySDK 是 AlipaySDK 的帮助类库。它从 AlipaySDK 官方 Demo 中提取除 AlipaySDK.framework 和 AlipaySDK.bundle 之外的文件。
                       DESC

  s.homepage          = "https://github.com/robin2005/AliPaySDK"      #项目主页，不是git地址
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "AliPay" => "http://www.alipay.com/" }
  s.source           = { :git => 'https://github.com/robin2005/AliPaySDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, "7.0"
  s.ios.deployment_target = '7.0'

  s.source_files = 'FBAliPaySDK/Classes/**/*.{h,m}'
  s.resources    = 'FBAliPaySDK/SDK/AlipaySDK.bundle'
  s.vendored_frameworks = 'FBAliPaySDK/SDK/AlipaySDK.framework'  
  s.frameworks = "UIKit", "Foundation", "CoreTelephony", "Security", "QuartzCore", "CoreText", "CoreMotion", "CFNetwork", "CoreGraphics", "SystemConfiguration" 
  s.libraries  = 'ssl', 'crypto', 'z','c++'
  s.ios.preserve_paths      = 'FBAliPaySDK/StaticLibrary/libcrypto.a', 'FBAliPaySDK/StaticLibrary/libssl.a'
  s.ios.vendored_libraries  = 'FBAliPaySDK/StaticLibrary/libcrypto.a', 'FBAliPaySDK/StaticLibrary/libssl.a'

  s.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
    'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
  } 

  # s.subspec 'Util' do |util|
   # util.source_files = 'FBAliPaySDK/Util/**/*.{h,m}'
      #util.xcconfig = { 'HEADER_SEARCH_PATHS' => "$(SRCROOT)//#{s.name}/FBAliPaySDK/Openssl/**",
     #'Library_SEARCH_PATHS' => "$(SRCROOT)//#{s.name}/FBAliPaySDK/Openssl/**"  }
     #util.dependency 'FBAliPaySDK/OpenSSL'
  # end
  
  s.subspec 'OpenSSL' do |openssl|
    openssl.source_files = 'FBAliPaySDK/Openssl/**/*.h'
    openssl.header_dir          = 'openssl'
    openssl.public_header_files = 'FBAliPaySDK/Openssl/**/*.h'
    openssl.ios.preserve_paths      = 'FBAliPaySDK/StaticLibrary/libcrypto.a', 'FBAliPaySDK/StaticLibrary/libssl.a'
    openssl.ios.vendored_libraries  = 'FBAliPaySDK/StaticLibrary/libcrypto.a', 'FBAliPaySDK/StaticLibrary/libssl.a'
    openssl.libraries = 'ssl', 'crypto'
    openssl.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/FBAliPaySDK/Openssl/**",'Library_SEARCH_PATHS' => "$(SRCROOT)/#{s.name}/FBAliPaySDK/Openssl/**" }
  end

end
