#
# Be sure to run `pod lib lint GenericHttpClientLab6.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GenericHttpClientLab6'
  s.version          = '0.1.2'
  s.summary          = 'Basic HTTP client on Swift'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Basic HTTP client for academic purposes
                       DESC

  s.homepage         = 'https://github.com/mauriciofer/GenericHttpClientLab6'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mauricio Fernández Mora' => 'mauriciofer@gmail.com' }
  s.source           = { :git => 'https://github.com/mauriciofer/GenericHttpClientLab6.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'GenericHttpClientLab6/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GenericHttpClientLab6' => ['GenericHttpClientLab6/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
