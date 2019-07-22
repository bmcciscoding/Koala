#
# Be sure to run `pod lib lint SwiftExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Koala'
  s.version          = '0.0.1'
  s.summary          = '快速开发 Swift iOS App.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        This is a swift extensions for developing iOS App.
                       DESC

  s.homepage         = 'https://github.com/bmcciscoding/SwiftExtensions.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bmcciscoding@gmail.com' => 'bmcciscoding@gmail.com' }
  s.source           = { :git => 'https://github.com/bmcciscoding/SwiftExtensions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.platform = :ios, '9.0'
  s.swift_version = '4.0'
  
  s.source_files = 'SwiftExtensions/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SwiftExtensions' => ['SwiftExtensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
