#
# Be sure to run `pod lib lint MediaEditorManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MediaEditorManager'
  s.version          = '1.0.1'
  s.summary          = 'A short description of MediaEditorManager.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/CXgfh'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'oauth2' => 'gfh.cynthia@icloud.com' }
  s.source           = { :git => 'https://github.com/CXgfh/MediaEditorManager', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  
  s.swift_versions = '5.0'

  s.source_files = 'MediaEditorManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MediaEditorManager' => ['MediaEditorManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
