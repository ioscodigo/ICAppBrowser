#
# Be sure to run `pod lib lint ICAppBrowser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ICAppBrowser'
  s.version          = '0.1.0'
  s.summary          = 'ICAppBrowser is a inline browser for your Swift iOS app.'

  s.description      = <<-DESC

ICAppBrowser is a inline browser for your Swift iOS app.

ICAppBrowser features:
* Back, forward, stop/refresh and share buttons
* Navbar title set to the currently visible web page
* You can change color for themes
                       DESC

  s.homepage         = 'https://github.com/ioscodigo/ICAppBrowser'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Arief Budi Santoso' => 'me@ariefbudisantoso.com' }
  s.source           = { :git => 'https://github.com/ioscodigo/ICAppBrowser.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/vioarief'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ICAppBrowser/**/*.swift'

s.resources = 'ICAppBrowser/Assets/*'
s.resource_bundles = {
  'ICAppBrowserResources' => ['ICAppBrowser/Assets/*']
}

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
