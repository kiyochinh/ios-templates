platform :ios, '12.0'
use_frameworks!
inhibit_all_warnings!

def testing_pods
  pod 'Quick'
  pod 'Nimble'
  pod 'RxNimble', subspecs: ['RxBlocking', 'RxTest']
  pod 'RxSwift'
  pod 'Sourcery'
  pod 'SwiftFormat/CLI'
end

target 'MyApp' do
  # UI
  pod 'Kingfisher'
  pod 'SnapKit'
  pod 'Texture'

  # Rx
  pod 'RxAlamofire'
  pod 'RxCocoa'
  pod 'RxDataSources'
  pod 'RxSwift'

  # Storage
  pod 'KeychainAccess'

  # Tools
  pod 'IQKeyboardManagerSwift'
  pod 'R.swift'
  pod 'Resolver' # Needs Cocoapods on iOS 11 to support Resolver

  # Development
  pod 'SwiftLint'
  pod 'Wormholy', :configurations => ['Debug Develop', 'Debug Staging', 'Debug Production']

  target 'MyAppTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'MyAppUITests' do
    testing_pods
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end
