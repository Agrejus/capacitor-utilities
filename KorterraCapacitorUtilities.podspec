
  Pod::Spec.new do |s|
    s.name = 'KorterraCapacitorUtilities'
    s.version = '1.0.0'
    s.summary = 'Capacitor Utilities'
    s.license = 'MIT'
    s.homepage = 'https://github.com/agrejus/capacitor-utilities.git'
    s.author = 'Ariel Hernandez Musa'
    s.source = { :git => 'https://github.com/agrejus/capacitor-utilities.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '12.0'
    s.dependency 'Capacitor'
    s.swift_version = '5.1'
  end
