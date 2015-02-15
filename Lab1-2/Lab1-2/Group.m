//
//  Group.m
//  LabWork1-2
//
//  Created by Александр on 15.02.15.
//  Copyright (c) 2015 Alexandr Ovchinnikov. All rights reserved.
//

#import "Group.h"
#import "Student.h"

@implementation Group

- (Group *)initWithName:(NSString*)name
{
    self = [self init];
    _name = name;
    return self;
}

- (void)addStudent:(Student *) student
{
    if (self.studentList == nil)
    {
        _studentList = [[NSMutableArray alloc] init];
    }
    [self.studentList addObject:student];
    [self changeGroupAveragePoint];
}

- (void)addTeacher:(Teacher *) teacher
{
    if (self.teacherList == nil)
    {
        _teacherList = [[NSMutableArray alloc] init];
    }
    [self.teacherList addObject:teacher];
}

- (void)changeGroupAveragePoint
{
    if (self.studentList == nil)
    {
        _groupAveragePoint = nil;
    }
    else
    {
        double sum = 0.0;
        for (Student *student in self.studentList)
        {
            sum += [student.averagePoint doubleValue];
        }
        self.groupAveragePoint = @(sum / [self.studentList count]);
    }
}

@end
