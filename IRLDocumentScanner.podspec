##
## Before you commit to the Podscpec repro, it is good practice to verify your settings via lint
## > pod spec lint IRLDocumentScanner.podspec --sources='https://github.com/CocoaPods/Specs'
##
## When done modifying that file simply run:
## > pod repo push master IRLDocumentScanner.podspec
##

Pod::Spec.new do |s|

s.name         = "IRLDocumentScanner"
s.version      = "0.1.0"
s.summary      = "A Drop-in Document Scanner based View Controller."
s.description  = "A very simple to use class allowing you scan document with border detection."
s.license      = { :type => 'Copyright 2015. iRLMobile. Luxembourg', :file => 'LICENSE.txt' }

s.homepage     = "http://www.irlmobile.com"
s.authors      = { 'Denis Martin' => 'support@irlmobile.com' }
s.source       = { :git => 'https://github.com/charlymr/IRLDocumentScanner.git', :branch => 'master', :tag => '0.1.0'}

s.platform     = :ios, '8.0'
s.source_files          = 'Source', 'Source/**/*.{h,m}'
s.public_header_files   =  'Source/Public/**/*.h', 'Source/IRLDocumentScanner.h'
s.private_header_files  =  'Source/Private/**/*.h'

s.resources    = [ '*.storyboard', '*.xcassets' ]

s.ios.frameworks = 'Foundation', 'UIKit', 'AVFoundation', 'CoreImage',  'GLKit'

s.requires_arc = true

end