Pod::Spec.new do |spec|
  spec.name             = 'GZ-SwiftSH'
  spec.version          = '1.1.1'
  spec.summary          = 'A Swift SSH framework that wraps libssh2.'
  spec.homepage         = 'https://github.com/Frugghi/SwiftSH'
  spec.license          = 'MIT'
  spec.authors          = { 'Tommaso Madonia' => 'tommaso@madonia.me' }
  spec.source           = { :git => 'https://github.com/gaetanzanella/SwiftSH.git', :tag => spec.version.to_s }
                      
  spec.requires_arc     = true
  
  spec.swift_version    = '5.0'

  spec.ios.deployment_target = '10.0'

  spec.ios.library = 'z'
  spec.ios.source_files =  'SwiftSH/*.{swift,h,m}'
  spec.ios.public_header_files = 'SwiftSH/*.h'
  spec.ios.preserve_paths = 'libssh2'                                      
   
  spec.pod_target_xcconfig = {
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/GZ-SwiftSH/libssh2',
    'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/GZ-SwiftSH/libssh2',
    'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/GZ-SwiftSH/libssh2' 
  }
end
