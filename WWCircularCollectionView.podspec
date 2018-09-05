Pod::Spec.new do |s|

  s.name         				= "WWCircularCollectionView"
  s.version      				= "0.0.3"
  s.summary      				= "WWCircularCollectionView is a infinite wheel. (一個可以無限滾動的滾輪)"
  s.homepage     				= "https://github.com/William-Weng/WWCircularCollectionView"
  s.license      				= { :type => "MIT", :file => "LICENSE" }
  s.author             			= { "翁禹斌(William.Weng)" => "linuxice0609@gmail.com" }
  s.platform 					= :ios, "10.0"
  s.ios.vendored_frameworks 	= "WWCircularCollectionView.framework"
  s.source 						= { :git => "https://github.com/William-Weng/WWCircularCollectionView.git", :tag => "#{s.version}" }
  s.frameworks 					= 'UIKit'
  
end
