//
//  MBJSON.m
//  MBCommon
//
//  Created by Sebastian Celis on 2/28/12.
//  Copyright (c) 2012 Mobiata, LLC. All rights reserved.
//

#import "MBJSON.h"

id MBJSONObjectFromData(NSData *data, NSError * __autoreleasing * error)
{
    if (data == nil || [data length] <= 0)
    {
        return nil;
    }
    
    id object = [NSJSONSerialization JSONObjectWithData:data options:0 error:error];
    return object;
}

NSData *MBJSONDataFromObject(id object, NSError * __autoreleasing * error)
{
    if (object == nil)
    {
        return nil;
    }

    NSData *data = [NSJSONSerialization dataWithJSONObject:object options:0 error:error];
    return data;
}
