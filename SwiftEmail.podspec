
Pod::Spec.new do |s|
  s.name             = 'SwiftEmail'
  s.swift_version    = '4.2'
  s.version          = '0.1'
  s.summary          = 'Handling Emails'

  s.description      = <<-DESC
Small library that helps handling emails
                       DESC

  s.homepage         = 'https://github.com/yaro812/SwiftEmail'
  s.author           = { 'Thorax' => 'thorax@me.com' }
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'https://github.com/yaro812/SwiftEmail.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'Source/*.swift'

end
