/*
 Copyright (C) 2009-2010 Stig Brautaset. All rights reserved.
 
 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
 
 * Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
 
 * Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.
 
 * Neither the name of the author nor the names of its contributors may be used
   to endorse or promote products derived from this software without specific
   prior written permission.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import <SenTestingKit/SenTestingKit.h>
#import "JSON/JSON.h"

@interface MaxDepthTest : SenTestCase {
	SBJsonParser * parser;
	SBJsonWriter * writer;
}
@end

#define assertErrorContains(e, s) \
	STAssertTrue([e rangeOfString:s].location != NSNotFound, e)

@implementation MaxDepthTest


- (void)setUp {
    parser = [SBJsonParser new];
    writer = [SBJsonWriter new];
    parser.maxDepth = writer.maxDepth = 2;
}

- (void)tearDown {
	[parser release];
	[writer release];
}

- (void)testParseDepthOk {
    STAssertNotNil([parser objectWithString:@"[[]]"], nil);
}

- (void)testParseTooDeep {
    STAssertNil([parser objectWithString:@"[[[]]]"], nil);
	assertErrorContains(parser.error, @"max depth");
}

- (void)testWriteDepthOk {
    NSArray *a1 = [NSArray array];
    NSArray *a2 = [NSArray arrayWithObject:a1];
    STAssertNotNil([writer stringWithObject:a2], nil);
}

- (void)testWriteTooDeep {
    NSArray *a1 = [NSArray array];
    NSArray *a2 = [NSArray arrayWithObject:a1];
    NSArray *a3 = [NSArray arrayWithObject:a2];
    STAssertNil([writer stringWithObject:a3], nil);
	assertErrorContains(writer.error, @"Nested too deep");
}

- (void)testWriteRecursion {
    // set a high limit
    writer.maxDepth = 100;
    
    // create a challenge!
    NSMutableArray *a1 = [NSMutableArray array];
    NSMutableArray *a2 = [NSMutableArray arrayWithObject:a1];
    [a1 addObject:a2];

    STAssertNil([writer stringWithObject:a1], nil);
	assertErrorContains(writer.error, @"Nested too deep");
}

@end