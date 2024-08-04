Pod::Spec.new do |spec|
  spec.name             = 'TestPodfile'
  spec.version          = '1.0.0'
  spec.summary          = 'View Decorator and something else...'
  
  spec.description      = <<-DESC
  Test of creating pod file with a simple view decorator implementation for iOS.
  DESC
  
  spec.homepage         = 'https://github.com/Greed1997/ViewDecoratorPod'
  spec.license          = { :type => 'MIT', :file => 'LICENSE.txt' }
  spec.author           = { 'Alexander Ivantsov' => 'ivancov.n.a.p@gmail.com' }
  
  spec.platform         = :ios, '14.0'
  spec.swift_version    = '5.0'
  spec.source           = { :git => 'https://github.com/Greed1997/ViewDecoratorPod.git', :tag => spec.version.to_s }
  spec.source_files     = 'TestPodfile/**/*.swift'
  spec.frameworks       = 'UIKit'
end