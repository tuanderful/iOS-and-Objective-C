//
//  main.c
//  ClassCertificates
//
//  Created by Tuan Huynh on 2/25/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

// Function signature: parameters
// Function invocation: arguments
void congratulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much %s programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[])
{
    congratulateStudent("Kate", "Cocoa", 5);
    sleep(1);
    
    // Main stops executing while it goes into the sleep() function,
    // resumes when sleep function is done executing

    congratulateStudent("Bo", "Objective-C", 5);
    sleep(1);
    congratulateStudent("Miek", "Python", 5);
    sleep(1);
    congratulateStudent("Liz", "iOS", 5);
    sleep(1);
}

