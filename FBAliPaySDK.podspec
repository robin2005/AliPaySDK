#
# Be sure to run `pod lib lint FBAliPaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FBAliPaySDK'
  s.version          = '1.2.0'
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

  s.platform     = :ios, "8.0" 
  s.source       = { :git => "https://github.com/robin2005/AlipaySDk.git", :tag => "#{s.version}" }  
  s.resources = 'AlipaySDK.bundle'    
  s.frameworks = "Foundation", "UIKit", "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "CFNetwork", "CoreMotion"
  s.libraries  =  'z','c++'   
  s.requires_arc = true
  s.vendored_frameworks = 'AlipaySDK.framework','FBAliPaySDK/StaticLibrary/openssl.framework' 
  s.source_files = 'FBAliPaySDK/Util/**/*.{h,m}'   
  #s.user_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(SRCROOT)/FBAliPaySDK/FBAliPaySDK/StaticLibrary' }    

  s.subspec "Order" do |order|   

      order.source_files = 'FBAliPaySDK/Classes/**/*.{h,m}'  

  end

 
  
  s.subspec "JSON" do |json|  

    json.source_files =  'FBAliPaySDK/JSON/**/*.{h,m}'   

  end

end
