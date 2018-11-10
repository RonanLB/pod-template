#
# Be sure to run `./lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#

podname = '${POD_NAME}'
version = '0.0.1'
root_path = '.'
source_path = root_path+'/Classes'
resource_path = root_path+'/Resources'

Pod::Spec.new do |s|
  s.name             = podname
  s.version          = version
  s.summary          = podname+'.'

  s.description      = <<-DESC
This library is part of FitLab/ZealSta, it does not have a description yet.
                       DESC

  s.homepage         = 'https://bitbucket.org/growabanana/fitlab-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://bitbucket.org/growabanana/fitlab-ios.git', :tag => podname+'-v'+String(s.version) }

  s.ios.deployment_target = '10.0'
  s.watchos.deployment_target = '4.0'

  s.source_files = source_path+'/**/*'
  s.public_header_files = source_path+'/**/*.h'
  s.resource = resource_path+'/'+podname+'.bundle'
  s.xcconfig = {
    'EXCLUDED_SOURCE_FILE_NAMES[sdk=*][arch=*]' => '$(inherited) *.value *.adtValue *.object',
    'WARNING_CFLAGS' => '$(inherited) -Wno-shorten-64-to-32'
  }

  # Library specifics
  # Add here the specific dependencies for your project
  # Example:
  # s.ios.frameworks = 'CoreBluetooth'
  # s.dependency 'FLLogKit'
  # s.dependency 'FLDataKit'
  # s.dependency 'RZBluetoothRLB'
  # s.dependency 'ZSInjectKit'
end
