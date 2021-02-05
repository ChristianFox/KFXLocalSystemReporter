
Pod::Spec.new do |s|
  s.name             = "KFXLocalSystemReporter"
  s.version          = "0.10.0"
  s.summary          = "A few classes for getting information about the device and software"
  s.description      = <<-DESC
Included: KFXHardwareReporter, KFXSoftwareReporter, KFXDeviceActivityReporter, KFXSystemReporter.
Do things such as: get IP address, get hardware model, check if running on simulator, running unit tests, can device place a phone call etc
                       DESC

  s.homepage         = "https://github.com/ChristianFox/KFXLocalSystemReporter.git"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Christian Fox" => "christianfox890@icloud.com" }
  s.source           = { :git => "https://github.com/ChristianFox/KFXLocalSystemReporter.git", :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'KFXLocalSystemReporter/Classes/**/*'
  s.dependency 'KFXCore'
  s.dependency 'KFXUtilities'

end
