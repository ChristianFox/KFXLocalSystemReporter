
Pod::Spec.new do |s|
  s.name             = "KFXLocalSystemReporter"
  s.version          = "0.7.0"
  s.summary          = "A few classes for getting information about the device and software"
  s.description      = <<-DESC
Included: KFXHardwareReporter, KFXSoftwareReporter, KFXDeviceActivityReporter, KFXSystemReporter.
Do things such as: get IP address, get hardware model, check if running on simulator, running unit tests, can device place a phone call etc
                       DESC

  s.homepage         = "https://kfxtech@bitbucket.org/kfx_pods/kfxlocalsystemreporter.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'Commercial'
  s.author           = { "Christian Fox" => "christianfox890@icloud.com" }
  s.source           = { :git => "https://kfxtech@bitbucket.org/kfx_pods/kfxlocalsystemreporter.git", :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'KFXLocalSystemReporter/Classes/**/*'
  s.dependency 'KFXCore'
  s.dependency 'KFXUtilities'

end
