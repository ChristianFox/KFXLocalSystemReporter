/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXUtilities
 *
 ************************************/

//-----------------------------------------------------------
#pragma mark - Float & Double equality
//-----------------------------------------------------------
#define fequal(a,b) (fabsf((a) - (b)) < FLT_EPSILON)
#define fequalzero(a) (fabsf(a) < FLT_EPSILON)
#define dequal(a,b) (fabs((a) - (b)) < DBL_EPSILON)
#define dequalzero(a) (fabs(a) < DBL_EPSILON)


#import <Foundation/Foundation.h>

@interface KFXMaths : NSObject

//-----------------------------------------------------------
#pragma mark - Random Numbers
//-----------------------------------------------------------

/**
 *  Generates a random 32bit unsigned integer between the values specified.
 *  *If max is less then min then it is assumed to be a mistake and they are switched around.
 **/
u_int32_t randomUnsignedIntegerWithMinAndMax(u_int32_t min, u_int32_t max);

/**
 *  Generates a random integer between the values specified.
 *  *If max is less then min then it is assumed to be a mistake and they are switched around.
 **/
int randomIntWithMinAndMax(int min,int max);

/**
 *  Generates a random float between the values specified.
 *  *If max is less then min then it is assumed to be a mistake and they are switched around.
 **/
float randomFloatWithMinAndMax(float min, float max);

/**
 *  Generates a random double between the values specified.
 *  *If max is less then min then it is assumed to be a mistake and they are switched around.
 **/
double randomDoubleWithMinAndMax(double min, double max);


@end
