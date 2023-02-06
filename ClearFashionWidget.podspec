Pod::Spec.new do |spec|
  spec.name         = 'ClearFashionWidget'
  spec.version      = '1.0.0'
  spec.summary      = 'Display your Clear Fashion widgets on your native iOS and macOS app.'
  spec.description  = <<-DESC
    Display your Clear Fashion widgets on your native iOS and macOS app.

    This package exposes a class ClearFashionWidget returning a View object. 
    Add it easily to your app to informs your consumers that your products are under AGEC's law.
  DESC
  spec.homepage     = 'https://github.com/Clothparency/ios-widgets'
  spec.license      = { :type => 'MIT', :file => 'LICENSE.md' }
  spec.author       = { 'ClearFashionTeam' => 'dev@clear-fashion.com' }
  spec.documentation_url = 'https://github.com/Clothparency/ios-widgets/blob/main/README.md'
  spec.platforms = { :ios => '13.0', :osx => '11.0' }
  spec.swift_version = '5.5'
  spec.source       = { :git => 'https://github.com/Clothparency/ios-widgets.git', :tag => spec.version }
  spec.resource_bundles = { 'ClearFashionWidget' => ['Sources/ClearFashionWidget/Resources/**/*'] }
  spec.source_files  = 'Sources/ClearFashionWidget/*.swift'
end
