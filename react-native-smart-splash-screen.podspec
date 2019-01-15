require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-smart-splash-screen'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/react-native-component/react-native-smart-splash-screen.git', :tag => "v#{s.version}" }
  s.source_files   = "ios/**/*.{h,m}"
  s.ios.deployment_target = "9.0"
  s.dependency 'React'
end