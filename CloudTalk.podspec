Pod::Spec.new do |s|
  s.name = 'CloudTalk'
  s.version = '1.0.5'
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

  #s.source_files = 'CloudTalk/*.swift'

  #s.frameworks = 'CFNetwork'

  #s.default_subspec = 'Core'
  #s.default_subspec = 'Private'
  #s.default_subspec = 'Util'


  s.subspec 'Core' do |core|
    core.source_files = 'CloudTalk/Core/*.{h,m,swift}', 'CloudTalk/CloudTalkHeader.h'
  end

  s.subspec 'Private' do |private|
    private.source_files = 'CloudTalk/Private/*.{h,m,swift}','CloudTalk/Private/SubPrivate/*.{h,m,swift}'
    private.private_header_files = 'CloudTalk/Private/*.h'
  end

  s.subspec 'Util' do |util|
    util.source_files = 'CloudTalk/Util/*.{h,m,swift}'

    #util.default_subspec = 'SubUtil'

    util.subspec 'SubUtil' do |subUtil|
      subUtil.source_files = 'CloudTalk/Util/SubUtil/*.{h,m,swift}'
    end

  end



end
