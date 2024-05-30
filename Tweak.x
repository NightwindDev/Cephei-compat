/**
 * Copyright (c) 2024 Nightwind. All rights reserved.
 */

#import <Foundation/Foundation.h>
#import <rootless.h>

// Hook HBAppearanceSettings and re-add the old `translucentNavigationBar` property.
// This makes sure calls to `translucentNavigationBar` and `setTranslucentNavigationBar:` are responded
// and there is no more didNotRecognizeSelector: exception
%hook HBAppearanceSettings
%property (nonatomic, assign) BOOL translucentNavigationBar;
%end

// Make sure the tweak is loaded *after* CepheiPrefs
%ctor {
	if (dlopen(ROOT_PATH("/Library/Frameworks/CepheiPrefs.framework/CepheiPrefs"), RTLD_NOW) != NULL) {
		%init;
	}
}