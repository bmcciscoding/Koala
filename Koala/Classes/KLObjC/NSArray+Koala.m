//
//  NSArray+Koala.m
//  Koala
//
//  Created by QiuPeng on 2020/9/15.
//

#import "NSArray+Koala.h"


@implementation NSArray (Koala)

- (NSArray *)deepCopy {
    return [[NSArray alloc] initWithArray:self copyItems:YES];
}

@end
