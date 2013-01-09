//
//  Legislator.m
//  Congress
//
//  Created by Daniel Cloud on 1/8/13.
//  Copyright (c) 2013 Sunlight Foundation. All rights reserved.
//

#import "Legislator.h"


@implementation Legislator

@dynamic bioguide_id;
@dynamic chamber;
@dynamic congress_office;
@dynamic district;
@dynamic first_name;
@dynamic gender;
@dynamic govtrack_id;
@dynamic in_office;
@dynamic last_name;
@dynamic middle_name;
@dynamic name_suffix;
@dynamic nickname;
@dynamic party;
@dynamic phone;
@dynamic state_abbr;
@dynamic state_name;
@dynamic title;
@dynamic twitter_id;
@dynamic website;
@dynamic youtube_url;

-(NSString *)full_name {
    NSString *fullName = [NSString stringWithFormat:@"%@ %@", self.first_name, self.last_name];
    if (self.name_suffix && ![self.name_suffix isEqualToString:@""]) {
        fullName = [fullName stringByAppendingFormat:@", %@", self.name_suffix];
    }
    return fullName;
}

-(NSString *)titled_name{
    NSString *name_str = [NSString stringWithFormat:@"%@. %@", self.title, self.full_name];
    return name_str;

}

-(NSString *)party_name
{
    if ([[self.party uppercaseString] isEqualToString:@"D"])
    {
        return @"Democrat";
    }
    else if ([[self.party uppercaseString] isEqualToString:@"R"])
    {
        return @"Republican";
    }
    else if ([[self.party uppercaseString] isEqualToString:@"I"])
    {
        return @"Independent";
    }

    return nil;
}

-(NSString *)full_title
{
    if ([self.title isEqualToString:@"Del"])
    {
        return @"Delegate";
    }
    else if ([self.title isEqualToString:@"Com"])
    {
        return @"Resident Commissioner";
    }
    else if ([self.title isEqualToString:@"Sen"])
    {
        return @"Senator";
    }
    else // "Rep"
    {
        return @"Representative";
    }
}

@end