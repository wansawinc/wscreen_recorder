#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint wscreen_recorder.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'wscreen_recorder'
  s.version          = '0.0.1'
  s.summary          = 'Flutter Screen Recorder'
  s.description      = <<-DESC
Flutter Screen Recorder
                       DESC
  s.homepage         = 'https://github.com/wansawinc/wscreen_recorder'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Amjid Dader' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
