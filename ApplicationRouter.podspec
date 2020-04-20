Pod::Spec.new do |s|
  s.name         = "ApplicationRouter"
  s.version      = "0.0.1"
  s.summary      = "Modern library for routing in iOS application"
  s.description  = "Modern library for routing in iOS application"
  s.homepage     = "https://github.com/vstanishevsky/ApplicationRouter"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Vladislav Stanishevsky" => "stanishevskyvlad@gmail.com" }
  s.social_media_url = "https://twitter.com/vstanishevsky"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/vstanishevsky/ApplicationRouter.git", :tag => s.version.to_s }
  s.source_files = "Sources/**/*"
  s.frameworks   = "UIKit"
end
