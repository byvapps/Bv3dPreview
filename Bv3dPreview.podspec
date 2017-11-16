#
# Be sure to run `pod lib lint Bv3dPreview.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Bv3dPreview'
  s.version          = '1.0.0'
  s.summary          = '3D model viewer in Swift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A lightweight library for displaying 3D Models in iOS.
                       DESC

  s.homepage         = 'https://github.com/byvapps/Bv3dPreview'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'koldo92' => 'koldo@byvapps.com' }
  s.source           = { :git => 'https://github.com/byvapps/Bv3dPreview.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Bv3dPreview/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Bv3dPreview' => ['Bv3dPreview/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'SceneKit', 'ModelIO'
  # s.dependency 'AFNetworking', '~> 2.3'
end
