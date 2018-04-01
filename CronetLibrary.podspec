Pod::Spec.new do |s|
  s.name         = "CronetLibrary"
  s.version      = "0.0.1"
  s.summary      = "libCronet.a for Mac"
  s.description  = <<-DESC
                      libCronet.a for Mac
                   DESC

  s.homepage     = "https://chromium.googlesource.com/chromium/src/+/lkgr/components/cronet"

  s.license      = { :type => "LGPL" }

  s.authors      = ['Chromium Authors']
  s.source       = { :git => "https://github.com/Naituw/Cronet-Mac.git"}

  s.platform = :osx, '10.10'
  s.frameworks = ['GSS', 'AppKit', 'SystemConfiguration', 'Foundation']
  s.libraries  = ['bsm', 'resolv', 'z', 'c++']

  library_path = ['libCronetNetworking.a']

  s.source_files = ['CronetNetworking/Cronet/components/cronet/ios/{Cronet,bidirectional_stream_c}.h']
  s.vendored_libraries = library_path

end
