//
//  SFCongressURLService.m
//  Congress
//
//  Created by Daniel Cloud on 2/22/13.
//  Copyright (c) 2013 Sunlight Foundation. All rights reserved.
//

#import "SFCongressURLService.h"

@implementation SFCongressURLService

static NSString * const SFCongressURLServiceBase = @"http://cngr.es/";

+ (NSURL *)globalLandingPage
{
    return [NSURL URLWithString:SFCongressURLServiceBase];
}

// Bills

+ (NSURL *)appScreenForBillWithId:(NSString *)billId
{
    return [NSURL URLWithFormat:@"congress://bills/%@", billId];
}

+ (NSURL *)landingPageForBillWithId:(NSString *)billId
{
    return [NSURL URLWithFormat:@"%@b/%@", SFCongressURLServiceBase, billId];
}

+ (NSURL *)fullTextPageForBillWithId:(NSString *)billId;
{
    return [NSURL URLWithFormat:@"%@b/%@/text", SFCongressURLServiceBase, billId];
}

// Legislators

+ (NSURL *)appScreenForLegislatorWithId:(NSString *)bioguideId
{
    return [NSURL URLWithFormat:@"congress://legislators/%@", bioguideId];
}

+ (NSURL *)landingPageForLegislatorWithId:(NSString *)bioguideId
{
    return [NSURL URLWithFormat:@"%@l/%@", SFCongressURLServiceBase, bioguideId];
}

// Committees

+ (NSURL *)appScreenForCommitteeWithId:(NSString *)committeeId
{
    return [NSURL URLWithFormat:@"congress://committees/%@", committeeId];
}

+ (NSURL *)landingPageForCommitteeWithId:(NSString *)committeeId
{
    return [NSURL URLWithFormat:@"%@c/%@", SFCongressURLServiceBase, committeeId];
}

@end
