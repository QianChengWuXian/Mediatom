Pod::Spec.new do |s|
  s.name         = "MediatomiOS"
  s.version      = "2.9.0.0.3"
  s.summary      = "Mobile App Aggregation Ad SDK of Mediatom SDK for iOS."
  s.description  = <<-DESC
            Mediatom SDK is an advertising aggregation SDK that allows you to monetize iOS applications through Mediatom advertising.
                   DESC
  s.homepage     = "https://www.mediatom.cn/dockingdocs/detail?id=70"
  s.license      = { :type => "MIT" }
  s.author       = 'Lurich'

  
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '11.0'
  s.static_framework = true
  s.requires_arc = true
  s.swift_versions = '5.1'
  
  s.frameworks   = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck', 'CoreML'
  s.libraries    = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
  s.xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
  s.pod_target_xcconfig =   { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i' }
  
  s.source = { :http => "https://github.com/QianChengWuXian/Mediatom/releases/download/#{s.version}/MediatomiOS.zip" }
    
  s.default_subspecs = 'MSaas'

  s.subspec 'MSaas' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.vendored_frameworks = 'MediatomiOS/MSaas.xcframework'
  end
  
  s.subspec 'SFAdFlAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'FunlinkSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdFlAdapter.xcframework'
  end

  s.subspec 'SFAdCsjAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'Ads-CN/BUAdSDK'
    ss.dependency 'Ads-CN/CSJMediation'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdCsjAdapter.xcframework'
  end
  
  s.subspec 'SFAdGdtAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'GDTMobSDK'
    ss.dependency 'MediatomiOS/MSaas'
    # ss.dependency 'CSJMGdtAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdGdtAdapter.xcframework'
  end
  
  s.subspec 'SFAdKsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'KSAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    # ss.dependency 'CSJMKsAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdKsAdapter.xcframework'
  end
  
  s.subspec 'SFAdJztAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'JADYun'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdJztAdapter.xcframework'
  end
  
  s.subspec 'SFAdBaiduAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BaiduMobAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    # ss.dependency 'CSJMBaiduAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBaiduAdapter.xcframework'
  end
  
  s.subspec 'SFAdBeiziAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BeiZiSDK-iOS/BeiZiSDK-iOS'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBeiziAdapter.xcframework'
  end
  
  s.subspec 'SFAdTbAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'TanxSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTbAdapter.xcframework'
  end
  
  s.subspec 'SFAdMsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MSMobAdSDK/MS'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMsAdapter.xcframework'
  end
  
  s.subspec 'SFAdSigmobAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'SigmobAd-iOS'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdSigmobAdapter.xcframework'
  end
  
  s.subspec 'SFAdTmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TianmuSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTmAdapter.xcframework'
  end
  
  s.subspec 'SFAdHrAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'HRAdSDK/HR'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdHrAdapter.xcframework'
  end
  
  s.subspec 'SFAdYtAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YouTuiAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdYtAdapter.xcframework'
  end
  
  s.subspec 'SFAdKdxfAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'IFLYADLib'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdKdxfAdapter.xcframework'
  end
  
  s.subspec 'SFAdZyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'OctopusSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdZyAdapter.xcframework'
  end
  
  s.subspec 'SFAdLyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDLySDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdLyAdapter.xcframework'
  end
  
  s.subspec 'SFAdUBiXAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'UBiXMUBiXAdapter'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdUBiXAdapter.xcframework'
  end

  s.subspec 'SFTXUBiXAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TXUBiXSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFTXUBiXAdapter.xcframework'
  end
  
  
  
  
  s.subspec 'SFAdMtgAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'MintegralAdSDK/All', '8.0.4'
    ss.dependency 'AppLovinMediationMintegralAdapter', '8.0.4.0.0'
    ss.dependency 'TradPlusAdSDK/MintegralAdapter', '15.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMtgAdapter.xcframework'
  end
  
  s.subspec 'SFAdPangleAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'Ads-Global', '7.8.5.7'
    ss.dependency 'AppLovinMediationByteDanceAdapter', '7.8.5.7.0'
    ss.dependency 'TradPlusAdSDK/PangleAdapter', '15.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdPangleAdapter.xcframework'
  end
  
  s.subspec 'SFAdMetaAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'FBAudienceNetwork', '6.20.1'
    ss.dependency 'AppLovinMediationFacebookAdapter', '6.20.1.0'
    ss.dependency 'TradPlusAdSDK/FacebookAdapter', '15.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMetaAdapter.xcframework'
  end
  
  s.subspec 'SFAdVungleAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'VungleAds', '7.6.3'
    ss.dependency 'AppLovinMediationVungleAdapter', '7.6.3.1'
    ss.dependency 'TradPlusAdSDK/VungleAdapter', '15.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdVungleAdapter.xcframework'
  end
  
  s.subspec 'SFAdInmobiAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'InMobiSDK', '11.1.0'
    ss.dependency 'AppLovinMediationInMobiAdapter', '11.1.0.0'
    ss.dependency 'TradPlusAdSDK/InMobiAdapter', '15.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdInmobiAdapter.xcframework'
  end
  
  s.subspec 'SFAdMobAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'Google-Mobile-Ads-SDK', '12.14.0'
    ss.dependency 'AppLovinMediationGoogleAdapter', '12.14.0.0'
    ss.dependency 'TradPlusAdSDK/AdMobAdapter', '15.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'AppLovinSDK', '13.6.0'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMobAdapter.xcframework'
  end
  
  s.subspec 'SFAdApplovinAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'AppLovinSDK', '13.6.0'
    ss.dependency 'TradPlusAdSDK/AppLovinAdapter', '15.0.0'
    ss.dependency 'AppLovinMediationIronSourceAdapter', '9.2.0.0.0'
    ss.dependency 'AppLovinMediationYandexAdapter', '7.18.3.0'
    ss.dependency 'AppLovinMediationFyberAdapter', '8.4.4.0'    
    
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdApplovinAdapter.xcframework'
  end
  
  s.subspec 'SFAdBigoAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'BigoADS', '5.0.0'
    ss.dependency 'TradPlusAdSDK/BigoAdapter', '15.0.0'
    ss.dependency 'AppLovinMediationBigoAdsAdapter', '5.0.0.0'
    ss.dependency 'TPNMediationBigoAdapter','5.0.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBigoAdapter.xcframework'
  end
  
  s.subspec 'SFAdTnAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'TPNiOS','6.5.34'
    ss.dependency 'TPNMediationAdxSmartdigimktAdapter', '6.5.42.1'
    ss.dependency 'TPNMediationIronSourceAdapter','9.2.0.0.0'
    ss.dependency 'TPNMediationMintegralAdapter','8.0.4.0'
    ss.dependency 'TPNMediationFacebookAdapter','6.20.1.0'
    ss.dependency 'TPNMediationVungleAdapter','7.6.3.0'
    ss.dependency 'TPNMediationInmobiAdapter','11.1.0.0'
    ss.dependency 'TPNMediationAdmobAdapter','12.14.0.0'
    ss.dependency 'TPNMediationApplovinAdapter','13.6.0.0'
    ss.dependency 'TPNMediationPangleAdapter', '7.8.5.7.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTnAdapter.xcframework'
  end
  
  s.subspec 'SFAdTpAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'TradPlusAdSDK', '15.0.0'
    
    ss.dependency 'TradPlusAdSDK/IronSourceAdapter', '15.0.0'
    ss.dependency 'TradPlusAdSDK/TPCrossAdapter', '15.0.0'
    ss.dependency 'TradPlusAdSDK/YandexAdapter', '15.0.0'
    ss.dependency 'TradPlusAdSDK/FyberAdapter', '15.0.0'
    ss.dependency 'IronSourceSDK', '9.2.0'
    ss.dependency 'YandexMobileAds', '7.18.3'
    ss.dependency 'Fyber_Marketplace_SDK', '8.4.4'
    ss.dependency 'GoogleUserMessagingPlatform', '3.1.0'
    
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTpAdapter.xcframework'
  end
  
  
  
  
  s.subspec 'SFAdUnityAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'UnityAds','4.10.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdUnityAdapter.xcframework'
  end
  
  s.subspec 'SFAdIronsourceAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'IronSourceSDK', '9.2.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdIronsourceAdapter.xcframework'
  end
  
  s.subspec 'SFAdQmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'QuMengAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdQmAdapter.xcframework'
  end
  
  s.subspec 'SFAdDmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'DomobSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdDmAdapter.xcframework'
  end

  s.subspec 'SFAdIqyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDIqySDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdIqyAdapter.xcframework'
  end

  s.subspec 'SFFireFlyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFFireFlyAdapter.xcframework'
  end

 s.subspec 'SFAdQiMingAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'QiMingADXSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdQiMingAdapter.xcframework'
  end

 s.subspec 'SFAdMedproAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDOwnSDK'
   ss.dependency 'MediatomiOS/MSaas'
   ss.vendored_frameworks = 'MediatomiOS/SFAdMedproAdapter.xcframework'
 end

  s.subspec 'SFAdTakuAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'AnyThinkiOS'
    ss.dependency 'AnyThinkMediationAdxSmartdigimktCNAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTakuAdapter.xcframework'
  end

  s.subspec 'SFAdPTGAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'PTGAdFramework'
    ss.vendored_frameworks = 'MediatomiOS/SFAdPTGAdapter.xcframework'
  end

  s.subspec 'SFAdWMAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'AdWangMaiSDK'
    ss.vendored_frameworks = 'MediatomiOS/SFAdWMAdapter.xcframework'
  end

  s.subspec 'SFAdHcAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'YDHcSDK'
    ss.vendored_frameworks = 'MediatomiOS/SFAdHcAdapter.xcframework'
  end

  s.subspec 'SFAdCJAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdCJAdapter.xcframework'
  end

  s.subspec 'SFAdFsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'YDFsProSDK'
    ss.vendored_frameworks = 'MediatomiOS/SFAdFsAdapter.xcframework'
  end

  s.subspec 'SFAdFgAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'TimeAdSDK'
    ss.vendored_frameworks = 'MediatomiOS/SFAdFgAdapter.xcframework'
  end

   s.subspec 'SFAdMedProADXAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'YDMedProADXSDK'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMedProADXAdapter.xcframework'
  end

    s.subspec 'SFAdCxjAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'YDCxjSDK'
    ss.vendored_frameworks = 'MediatomiOS/SFAdCxjAdapter.xcframework'
  end

    s.subspec 'SFAdProfAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'YDAdProSDK'
    ss.vendored_frameworks = 'MediatomiOS/SFAdProfAdapter.xcframework'
  end

end
