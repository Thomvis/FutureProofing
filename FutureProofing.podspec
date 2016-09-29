Pod::Spec.new do |s|
  s.name         = "FutureProofing"
  s.version      = "0.3.0"
  s.summary      = "Provide a Future based interface to asynchronous API."
  s.description  = <<-DESC
                   A companion library to BrightFutures with extensions that
                   provide a Future based interface to asynchronous API's
                   DESC
  s.homepage     = "https://github.com/Thomvis/FutureProofing"
  s.license      = "MIT"
  s.authors = { 'Thomas Visser' => 'thomas.visser@gmail.com' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.2'
  s.watchos.deployment_target = '2.2'

  s.source       = { :git => "https://github.com/Thomvis/FutureProofing.git", :tag => "v#{s.version}" }
  s.dependency "BrightFutures", "~> 5.0"

  s.default_subspecs = 'Core', 'Foundation'

  s.subspec 'Core' do |ss|
    ss.source_files = 'FutureProofing/*.swift'
  end

  s.subspec 'Accounts' do |ss|
    ss.ios.source_files = 'FutureProofing/Accounts/*'
    ss.ios.frameworks = 'Accounts'
    ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'AVFoundation' do |ss|
    ss.ios.source_files = 'FutureProofing/AVFoundation/*'
    ss.ios.frameworks = 'AVFoundation'
    ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'CloudKit' do |ss|
     ss.ios.source_files = 'FutureProofing/CloudKit/*'
     ss.osx.source_files = 'FutureProofing/CloudKit/*'
     ss.tvos.source_files = 'FutureProofing/CloudKit/*'
     ss.frameworks = 'CloudKit'
     ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'CoreLocation' do |ss|
    ss.ios.source_files = 'FutureProofing/CoreLocation/*'
    ss.osx.source_files = 'FutureProofing/CoreLocation/*'
    ss.tvos.source_files = 'FutureProofing/CoreLocation/*'
    ss.frameworks = 'CoreLocation'
    ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'Foundation' do |ss|
    ss.source_files = 'FutureProofing/Foundation/*'
    ss.frameworks = 'Foundation'
    ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'HomeKit' do |ss|
    ss.ios.source_files = 'FutureProofing/HomeKit/*'
    ss.ios.frameworks = 'HomeKit'
    ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'MapKit' do |ss|
    ss.ios.source_files = 'FutureProofing/MapKit/*'
    ss.osx.source_files = 'FutureProofing/MapKit/*'
    ss.tvos.source_files = 'FutureProofing/MapKit/*'
    ss.frameworks = 'MapKit'
    ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'Photos' do |ss|
    ss.ios.source_files = 'FutureProofing/Photos/*'
    ss.ios.frameworks = 'Photos'
    ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'StoreKit' do |ss|
    ss.ios.source_files = 'FutureProofing/StoreKit/*'
    ss.osx.source_files = 'FutureProofing/StoreKit/*'
    ss.tvos.source_files = 'FutureProofing/StoreKit/*'
    ss.frameworks = 'StoreKit'
    ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.source_files = 'FutureProofing/UIKit/*'
    ss.tvos.source_files = 'FutureProofing/MapKit/*'
    ss.ios.frameworks = 'UIKit'
    ss.tvos.frameworks = 'UIKit'
    ss.dependency 'FutureProofing/Core'
  end

  s.subspec 'AppKit' do |ss|
    ss.osx.source_files = 'FutureProofing/AppKit/*'
    ss.osx.frameworks = 'AppKit'
    ss.dependency 'FutureProofing/Core'
  end

end
