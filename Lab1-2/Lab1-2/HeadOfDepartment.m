//
//  HeadOfDepartment.m
//  LabWork1-2
//
//  Created by Александр on 15.02.15.
//  Copyright (c) 2015 Alexandr Ovchinnikov. All rights reserved.
//

#import "HeadOfDepartment.h"
#import "Department.h"

@implementation HeadOfDepartment

- (NSArray *)getSuperiors
{
    return nil;
}

- (NSArray *)getInferiors
{
    return self.departmentOfWork.teachers;
}

@end
