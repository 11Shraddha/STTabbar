#
# Be sure to run `pod lib lint STTabbar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'STTabbar'
  s.version          = '0.1.0'
  s.summary          = 'A subclass on UITabbar that provides a custom shape to Tabbar.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "This CocoaPod provides the ability to customize a shape of UITabbar with raised Center button "

  s.homepage         = 'https://github.com/11Shraddha/STTabbar'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '11Shraddha' => 'shraddhasojitra11@gmail.com' }
  s.source           = { :git => 'https://github.com/11Shraddha/STTabbar.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'STTabbar/Classes/**/*'
  
  # s.resource_bundles = {
  #   'STTabbar' => ['STTabbar/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
