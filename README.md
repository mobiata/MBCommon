# MBCommon

MBCommon is a lightweight, generic Cocoa library for iOS and OS X. It is designed by [Mobiata][Mobiata] to be a repository for common code that can be shared across all of Mobiata's [open source projects][projects]. However, it can definitely be used on its own as it defines a number of classes and categories that are useful in their own right.

## Requirements

MBCommon runs on iOS 5.0 and above and OS X 10.7 and above.

## Usage

To include MBCommon in your application, clone the MBCommon repository and include all of the MBCommon source files in your project.

    $ git clone git://github.com/mobiata/MBCommon.git

To reference any of the functionality defined in MBCommon, simply `#import "MBCommon.h"` at the top of your source file.

## ARC Support

MBCommon uses [ARC (Automatic Reference Counting)][ARC]. If you are not using ARC in your own projects, you will need to set the `-fobjc-arc` compiler flag on all MBCommon files. To do this:

1. Launch Xcode for your project.
2. Navigate to the "Builds Phases" tab of your target(s).
3. Find all MBCommon source files and add `-f-objc-arc` to the "Compiler Flags" column.

[mobiata]: http://www.mobiata.com/
[projects]: https://github.com/mobiata/
[ARC]: http://clang.llvm.org/docs/AutomaticReferenceCounting.html
