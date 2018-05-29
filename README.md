FBAliPaySDK
=========

[Alipay SDK](http://doc.open.alipay.com/doc2/detail?treeId=54&articleId=103419&docType=1)

[支付宝文档](http://doc.open.alipay.com/doc2/detail?spm=0.0.0.0.BPSDYG&treeId=59&articleId=103660&docType=1)

支付宝移动支付 SDK 标准版 from 2.0

### Install

在 `Podfile` 文件下添加

``` pod 'FBAliPaySDK' ```

或只安装带JSON功能
pod 'FBAliPaySDK', :subspecs => ['JSON']

> TIPS:
> 
>  iOS 9 出现支付时不能打开支付宝app反而调用 webview 的情况（支付宝app已安装），请在 `info.plist` 文件的 `LSApplicationQueriesSchemes` key 下增加 `alipay` 和 `alipayshare` 两个值。
 

###Changelog

####1.1.5 (2018-05-29) 
- 支持 iOS 7.0 编译 
- 更新了安全模块 
- 支持iOS9 bitcode