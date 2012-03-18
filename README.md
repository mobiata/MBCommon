# MBCommon

MBCommon is a lightweight, generic Cocoa framework for iOS and OS X apps created by [Mobiata][mobiata]. It is designed to be a repository for common code that can be shared across all of Mobiata's [open source projects][projects]. However, it can definitely be used on its own as it defines a number of classes and categories that are useful in their own right.

## Usage

To include MBCommon in your applications, first clone the MBCommon repository.

    $ git clone git://github.com/mobiata/MBCommon.git

Then, drag the entire repository to the Xcode project explorer. To use any of the functionality defined in MBCommon, simply `#import "MBCommon.h"` at the top of any of your source files.

## Localization

MBCommon defines a few strings that could theoretically be shown to users. These are most often error messages placed into the `userInfo` dictionaries of `NSError` objects. MBCommon uses the `MBLocalizedString` macro to try and find translated versions of these strings for your users. This macro gives you a couple of choices if you decide to localize your application for languages other than English. `MBLocalizedString` is defined as follows.

    #ifdef MBLocalizationTable
    #define MBLocalizedString(key, default) \
    [[NSBundle mainBundle] localizedStringForKey:(key) value:(default) table:MBLocalizationTable]
    #else
    #define MBLocalizedString(key, default) \
    [[NSBundle mainBundle] localizedStringForKey:(key) value:(default) table:nil]
    #endif

The first parameter of this macro is the string key while the second is the default (English) translation.

This macro allows you to add MBCommon strings directly to your standard `Localizable.strings` file. Or, if you wish, you can put all MBRequest strings into their own `.strings` file. If you opt for the latter, you must define `MBLocalizationTable` to be the name of this file. For example, if you want to use a file called `MBCommon.strings`, you would add the following to the `Prefix.pch` file of your project:

    #define MBLocalizationTable @"MBCommon"

You can look for all strings used by MBCommon by grepping for `MBLocalizedString` in this project. You should see a number of hits like the following:

    NSString *msg = MBLocalizedString(@"cannot_encode_json_data", @"Unable to encode JSON data.");

[mobiata]: http://www.mobiata.com/
[projects]: https://github.com/mobiata/
