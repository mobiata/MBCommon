//
//  NSDictionary+MBCommon.m
//  MBCommon
//
//  Created by Sebastian Celis on 3/1/12.
//  Copyright (c) 2012 Mobiata, LLC. All rights reserved.
//

#import "NSDictionary+MBCommon.h"

#import "NSString+MBCommon.h"

@implementation NSDictionary (MBCommon)

- (NSString *)mb_URLParameterString
{
    if ([self count] == 0)
    {
        return @"";
    }

    NSMutableString *urlString = [[NSMutableString alloc] init];

    BOOL appendAmp = NO;    
    for (NSString *key in self)
    {
        if ([[self objectForKey:key] isKindOfClass:[NSArray class]]) 
        {
            NSArray *array = [self objectForKey:key];
            for (NSString *value in array)
            {
                if (appendAmp)
                {
                    [urlString appendString:@"&"];
                }
                else
                {
                    appendAmp = YES;
                }

                [urlString appendString:key];
                [urlString appendString:@"="];
                [urlString appendString:[value mb_URLEncodedString]];
            }
        }
        else 
        {
            if (appendAmp)
            {
                [urlString appendString:@"&"];
            }
            else
            {
                appendAmp = YES;
            }

            [urlString appendString:key];
            [urlString appendString:@"="];
            [urlString appendString:[[self objectForKey:key] mb_URLEncodedString]];;
        }
    }

    return [urlString autorelease];
}

@end
