Pod::Spec.new do |s|
  s.name  = "KantarKitAdapter"
  s.version = '1.0.0'
  s.swift_version = '5.1'
  s.platform     = :ios, '10.0'
  s.summary = "Pod wrapper for KantarMediaStreaming library"
  s.description = "Pod wrapper for KantarMediaStreaming.a"
  s.homepage  = "https://www.kantarmedia.com/us"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
	s.source = {
						 :git => 'git@github.com:applicaster-plugins/KantarKitAdapter-iOS.git',
						 :tag => s.version.to_s
	}
  s.vendored_libraries = 'kantarmedia-streaming-fat.a'

  s.requires_arc = true
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'FRAMEWORK_SEARCH_PATHS' => '/Applications/Xcode.app/Contents/Developer/Library/Frameworks'
              }
end