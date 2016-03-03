Pod::Spec.new do |s|
  s.name         = "FutureProofing"
  s.version      = "0.1.0"
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

  s.source       = { :git => "https://github.com/Thomvis/FutureProofing.git", :tag => "v#{s.version}" }
  s.dependency "BrightFutures", "~> 3.3"

  s.default_subspec = 'Foundation'

  s.subspec 'Accounts' do |ss|
    ss.source_files = 'FutureProofing/Accounts/*'
    ss.frameworks = 'Accounts'
  end

  s.subspec 'AVFoundation' do |ss|
    ss.ios.source_files = 'FutureProofing/AVFoundation/*'
    ss.ios.frameworks = 'AVFoundation'
  end

  s.subspec 'CloudKit' do |ss|
    ss.source_files = 'FutureProofing/CloudKit/*'
    ss.frameworks = 'CloudKit'
    ss.ios.deployment_target = '8.0'
    ss.osx.deployment_target = '10.10'
  end

  s.subspec 'CoreLocation' do |ss|
    ss.source_files = 'FutureProofing/CoreLocation/*'
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
    ss.source_files = 'FutureProofing/MapKit/*'
    ss.frameworks = 'MapKit'
  end

  s.subspec 'Photos' do |ss|
    ss.ios.source_files = 'FutureProofing/Photos/*'
    ss.ios.frameworks = 'Photos'
  end

  s.subspec 'StoreKit' do |ss|
    ss.source_files = 'FutureProofing/StoreKit/*'
    ss.frameworks = 'StoreKit'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.source_files = 'FutureProofing/UIKit/*'
    ss.ios.frameworks = 'UIKit'
  end

end
