Pod::Spec.new do |s|
  s.name = 'CloudTalk'
  s.version = '1.0.2'
  s.license = 'MIT'
  s.summary = 'Cloud Talk on iOS'
  s.homepage = 'https://github.com/DevilLGD/CloudTalk'
  s.authors = { 'liaogd' => '285282227@qq.com' }
  s.source = { :git => 'https://github.com/DevilLGD/CloudTalk.git', :tag => s.version }
  #s.documentation_url = 'https://alamofire.github.io/Alamofire/'

  s.ios.deployment_target = '10.0'
  #s.osx.deployment_target = '10.12'
  #s.tvos.deployment_target = '10.0'
  #s.watchos.deployment_target = '3.0'

  s.swift_versions = ['5.1', '5.2', '5.3']

  s.source_files = 'CloudTalk/*.swift'

  #s.frameworks = 'CFNetwork'
end
