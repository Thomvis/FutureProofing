Pod::Spec.new do |s|
  s.name         = "FutureProofing"
  s.version      = "0.2.0"
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
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source       = { :git => "https://github.com/Thomvis/FutureProofing.git", :tag => "v#{s.version}" }
  s.dependency "BrightFutures", "~> 4.0"

  s.default_subspec = 'Foundation'

  s.subspec 'Accounts' do |ss|
    ss.ios.source_files = 'FutureProofing/Accounts/*'
    ss.frameworks = 'Accounts'
  end

  s.subspec 'AVFoundation' do |ss|
    ss.ios.source_files = 'FutureProofing/AVFoundation/*'
    ss.ios.frameworks = 'AVFoundation'
  end

  # s.subspec 'CloudKit' do |ss|
  #   ss.source_files = 'FutureProofing/CloudKit/*'
  #   ss.frameworks = 'CloudKit'

  #   s.ios.deployment_target = '8.0'
  #   s.osx.deployment_target = '10.10'
  #   s.tvos.deployment_target = '9.0'
  # end

  s.subspec 'CoreLocation' do |ss|
    ss.ios.source_files = 'FutureProofing/CoreLocation/*'
    ss.osx.source_files = 'FutureProofing/CoreLocation/*'
    ss.frameworks = 'CoreLocation'
  end

  s.subspec 'Foundation' do |ss|
    ss.source_files = 'FutureProofing/Foundation/*'
    ss.frameworks = 'Foundation'
  end

  s.subspec 'HomeKit' do |ss|
    ss.ios.source_files = 'FutureProofing/HomeKit/*'
    ss.frameworks = 'HomeKit'
  end

  s.subspec 'MapKit' do |ss|
    ss.ios.source_files = 'FutureProofing/MapKit/*'
    ss.osx.source_files = 'FutureProofing/MapKit/*'
    ss.frameworks = 'MapKit'
  end

  s.subspec 'Photos' do |ss|
    ss.ios.source_files = 'FutureProofing/Photos/*'
    ss.ios.frameworks = 'Photos'
  end

  s.subspec 'StoreKit' do |ss|
    ss.ios.source_files = 'FutureProofing/StoreKit/*'
    ss.osx.source_files = 'FutureProofing/StoreKit/*'
    ss.frameworks = 'StoreKit'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.source_files = 'FutureProofing/UIKit/*'
    ss.ios.frameworks = 'UIKit'
  end

  s.subspec 'AppKit' do |ss|
    ss.osx.source_files = 'FutureProofing/AppKit/*'
    ss.osx.frameworks = 'AppKit'
  end

end
