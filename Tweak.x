#import <Foundation/Foundation.h>

%hook FBApplicationInfo

- (BOOL)supportsBackgroundMode:(NSString *)mode
{
	BOOL result = %orig();
	if (result) {
		return YES;
	}
	if (![mode isEqualToString:@"continuous"]) {
		return NO;
	}
	Boolean valid;
	Boolean setting = CFPreferencesGetAppBooleanValue(CFSTR("WasteMyBattery"), CFSTR("com.rpetrich.batterywaster"), &valid);
	if (!valid) {
		return YES;
	}
	return setting;
}

%end
