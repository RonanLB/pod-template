#import "CPDModule.h"

#import <ZSInjectKit/ZSIBinder.h>
#import <ZSInjectKit/ZSIBindingBuilder.h>
#import <ZSInjectKit/ZSIProvider.h>

#import "FLBTDeviceCentral.h"
#import "FLBTScanner.h"
#import "FLBTDescriptorsDataSource.h"

@implementation CPDModule

- (void)configure
{
  // Insert here your module configuration
  // Example
  // [[[self binder] bindClass:CPDSuperClass.class] in:ZSIScopeGlobal];
}

@end
