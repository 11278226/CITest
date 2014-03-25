//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Diarmuid O'Keeffe on 25/03/2014.
//  Copyright (c) 2014 Charlie Fulton. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WowUtils.h"
//#include <stdio.h>

@interface WowUtilsTests : XCTestCase
@end

@implementation WowUtilsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//- (void)testExample
//{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
//}

// 1
-(void)testCharacterClassNameLookup
{
    // 2
    XCTAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");
    // 3
    XCTAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]],
                  @"nil");
    
    // 4
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                 @"nil");
    // add the rest as an exercise
}

- (void)testRaceTypeLookup
{
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], @"nil");
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @"nil");
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],@"nil");
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    XCTAssertEqual(@"Grey", [WoWUtils qualityFromQualityType:1], @"nil");
    XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]],@"nil");
    // add the rest as an exercise
}

@end
