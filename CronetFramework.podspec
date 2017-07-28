Pod::Spec.new do |s|
  s.name         = "CronetFramework"
  s.version      = "0.0.1"
  s.summary      = "Cronet.framework for Mac"
  s.description  = <<-DESC
                      Cronet.framework for Mac
                   DESC

  s.homepage     = "https://chromium.googlesource.com/chromium/src/+/lkgr/components/cronet"

  s.license      = { :type => "LGPL" }

  s.authors      = ['Chromium Authors']
  s.source       = { :git => "https://github.com/Naituw/Cronet-Mac.git"}

  s.platform = :osx, '10.10'
  s.frameworks = ['GSS', 'AppKit', 'SystemConfiguration', 'Foundation']
  s.libraries  = ['bsm', 'resolv', 'z', 'c++']

  # Build Example/CronetFramework first to generate this path
  framework_path = ['Example/CronetFramework/DerivedData/CronetFramework/Build/Products/Release/CronetFramework.framework']

  s.source_files = framework_path
  s.vendored_frameworks = framework_path

end
