#
# Be sure to run `pod lib lint AttributedString.swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AttributedString.swift'
  s.version          = '0.1.0'
  s.summary          = 'A simple swifty extension wrapper for NSAttributedString or NSMutableAttributedString'

  s.description      = <<-DESC
A simple swifty extension wrapper for NSAttributedString or NSMutableAttributedString to make them much easier to use.
                       DESC

  s.homepage         = 'https://github.com/michaelhenry/AttributedString.swift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'michaelhenry' => 'me@iamkel.net' }
  s.source           = { :git => 'https://github.com/michaelhenry/AttributedString.swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'AttributedString.swift/Classes/**/*'
  s.swift_version = '5.0'
  # s.resource_bundles = {
  #   'AttributedString.swift' => ['AttributedString.swift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
