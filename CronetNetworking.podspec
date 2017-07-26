Pod::Spec.new do |s|
  s.name         = "CronetNetworking"
  s.version      = "0.0.1"
  s.summary      = "Cronet for Mac"
  s.description  = <<-DESC
                      Cronet for Mac
                   DESC

  s.homepage     = "https://chromium.googlesource.com/chromium/src/+/lkgr/components/cronet"

  s.license      = { :type => "LGPL" }

  s.authors      = ['Chromium Authors']
  s.source       = { :git => "https://github.com/Naituw/Cronet-Mac.git"}

  s.platform = :osx, '10.10'
  s.frameworks = ['GSS', 'AppKit', 'SystemConfiguration', 'Foundation']
  s.libraries  = ['bsm', 'resolv', 'z', 'c++']

  non_arc_files = ['CronetNetworking/Cronet/base/**/*.{m,mm}']
  exclude_files = non_arc_files

  exclude_files += ['CronetNetworking/Cronet/net/{quic,websocket,sdch}/**/*']

  s.source_files = ['CronetNetworking/Cronet/**/*.{h,m,mm,c,cc,S}']
  s.exclude_files = exclude_files
  s.header_mappings_dir = 'CronetNetworking/Cronet'

  s.subspec 'no-arc' do |sp|
    sp.source_files = non_arc_files
    sp.requires_arc = false
    sp.header_mappings_dir = 'CronetNetworking/Cronet'
  end

  s.xcconfig = { "USE_HEADERMAP" => "0" ,
                 "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/Headers/Private/CronetNetworking/third_party/boringssl/src/include"}
end
