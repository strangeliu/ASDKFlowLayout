Pod::Spec.new do |spec|
  spec.name         = 'ASDKFlowLayout'
  spec.version      = '0.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/strangeliu/ASDKFlowLayout'
  spec.authors      = { 'strangeliu' => 'strangeliu@gmail.com' }
  spec.summary      = 'Layout extensions for ASDK'
  spec.source       = { :git => 'https://github.com/strangleiu/ASDKFlowLayout.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'

  spec.public_header_files  = 'Source/*.h'
  spec.source_files = 'Source/*.{h,m}'
  spec.dependency 'Texture/Core', '~> 2.6'

end
