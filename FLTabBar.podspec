#
# Be sure to run `pod lib lint FLTabBar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name         = "FLTabBar"
  s.version      = "1.0.2"
  s.summary      = "Customization center tabBar button."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description  = <<-DESC
                    Customization center tabBar button with image.
                   DESC

  s.homepage     = "https://github.com/FelixLinBH/FLTabBar"
  s.screenshots  = "https://github.com/FelixLinBH/FLTabBar/blob/master/SimulatorScreen%20Shot.png?raw=true"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'felix.lin' => 'fly_81211@hotmail.com' }
  s.source       = { :git => "https://github.com/FelixLinBH/FLTabBar.git", :tag => "1.0.2" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.source_files = 'FLTabBar/Classes/**/*'
  s.requires_arc = true
  s.public_header_files = 'FLTabBar/Classes/TabBar/FLTabBarController.h','FLTabBar/Classes/Model/FLObject.h'
  s.frameworks = 'UIKit'
end
