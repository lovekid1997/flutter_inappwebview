#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutterplugintest.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_inappwebview'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.resources = 'Storyboards/**/*.storyboard'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.resource_bundles = {'flutter_inappwebview_ios_privacy' => ['Resources/PrivacyInfo.xcprivacy']}

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'

  s.dependency 'OrderedSet', '~>6.0'
  
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |core|
    core.platform = :ios, '8.0'
  end
end
