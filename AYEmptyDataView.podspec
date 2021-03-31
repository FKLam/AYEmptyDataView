#
# Be sure to run `pod lib lint AYEmptyDataView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AYEmptyDataView'
  s.version          = '0.1.0'
  s.summary          = 'TableView与Collectionview空数据时显示的view.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: TableView与Collectionview空数据时显示的view 为空的界面显示.
                       DESC

  s.homepage         = 'https://github.com/FKLam/AYEmptyDataView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'amg' => 'lfk0120@163.com' }
  s.source           = { :git => 'https://github.com/FKLam/AYEmptyDataView.git', :tag => s.version.to_s }
  s.social_media_url = 'http://seongbrave.github.io/'

  s.ios.deployment_target = '9.0'

  s.source_files = 'AYEmptyDataView/Classes/**/*'
  s.dependency 'RxSwift', '~> 4.1.2'  #依赖关系，该项目所依赖的其他库，如果有多个需要填写多个s.dependency
  s.dependency 'RxCocoa', '~> 4.1.2'
  #autolayout的封装
  s.dependency 'SnapKit', '~> 4.0.0'
  
  # s.resource_bundles = {
  #   'AYEmptyDataView' => ['AYEmptyDataView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
