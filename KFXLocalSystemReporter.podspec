
Pod::Spec.new do |s|
  s.name             = "KFXLocalSystemReporter"
  s.version          = "0.3.0"
  s.summary          = "A few classes for getting information about the device and software"
  s.description      = <<-DESC
Included: KFXHardwareReporter, KFXSoftwareReporter, KFXDeviceActivityReporter
                       DESC

  s.homepage         = "https://kfxtech@bitbucket.org/kfxtech/kfxlocalsystemreporter_pod_private.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.author           = { "Christian Fox" => "christianfox890@icloud.com" }
  s.source           = { :git => "https://kfxtech@bitbucket.org/kfxteam/kfxlocalsystemreporter_pod_private.git", :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'KFXLocalSystemReporter/Classes/**/*'

end
