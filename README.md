# Cephei-compat
Fixes an incompatibility with new versions of Cephei that certain patched tweaks have. Adds back the old `translucentNavigationBar` property from earlier versions of Cephei in order to prevent a `didNotRecognizeSelector:` exception being thrown.

Tested with Shortmoji 2.

---
### Some details for those interested:
[Cephei Tweak Support](https://github.com/hbang/libcephei) is "a framework for jailbroken iOS devices that includes various convenience features for developers."

When rootless came about, Cephei was rewritten in Swift, unlike older versions which were written in Objective-C.

As part of that rewrite, numerous deprecated APIs were removed. One of these deprecated APIs was `-[HBAppearanceSettings translucentNavigationBar]`. Notably, this deprecated APIs was used in several tweaks, including [Shortmoji 2](https://miro92.com/repo/depictions/?p=com.miro.shortmoji2), [NotchControl](https://havoc.app/package/notchcontrol), [Libellum](https://chariz.com/get/libellum), and more.

This deprecated API can be seen in the old Objective-C version of `HBAppearanceSettings` in an older commit of Cephei at:
https://github.com/hbang/libcephei/blob/fbe30a4a08ee4f1dda2e0e984c7429e390af8b02/prefs/HBAppearanceSettings.h#L118

It is now removed as of the latest release in the corresponding `AppearanceSettings` (`@objc(HBAppearanceSettings)`) class:

https://github.com/hbang/libcephei/blob/main/prefs/AppearanceSettings.swift

---
#### License
This project is licensed under [MIT](LICENSE).

###### Copyright (c) 2024 Nightwind. All rights reserved.