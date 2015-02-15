//
//  Teacher.h
//  LabWork1-2
//
//  Created by Александр on 14.02.15.
//  Copyright (c) 2015 Alexandr Ovchinnikov. All rights reserved.
//

#import "Person.h"
#import "MemberOfEducationProcess.h"
@class Department;

@interface Teacher : Person <MemberOfEducationProcess>

@property (nonatomic, strong) NSNumber *salary;
@property (nonatomic, weak) NSArray *groupsList;
@property (nonatomic, weak) Department *departmentOfWork;

@end