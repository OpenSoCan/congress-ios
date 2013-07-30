//
//  SFCommitteeMemberCellTransformer.m
//  Congress
//
//  Created by Jeremy Carbaugh on 7/30/13.
//  Copyright (c) 2013 Sunlight Foundation. All rights reserved.
//

#import "SFCommitteeMemberCellTransformer.h"
#import "SFCommittee.h"
#import "SFCellData.h"
#import "SFPanopticCell.h"

@implementation SFCommitteeMemberCellTransformer

- (id)transformedValue:(id)value {
    
    SFCommitteeMember *member = (SFCommitteeMember *)value;
    SFCellData *cellData = [super transformedValue:member.legislator];
    
    if (member.rank == 1) {
        NSString *title = [member.side isEqualToString:@"majority"] ? @"Chairman" : @"Ranking Member";
        [cellData setTertiaryTextLabelString:title];
    }
    
    return cellData;
}

@end
