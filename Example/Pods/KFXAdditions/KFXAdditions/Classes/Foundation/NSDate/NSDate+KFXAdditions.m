/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/

#import "NSDate+KFXAdditions.h"

@implementation NSDate (KFXAdditions)



//--------------------------------------------------------
#pragma mark - Comparison Convience methods
//--------------------------------------------------------
-(BOOL)kfx_isEarlierThanDate:(NSDate *)anotherDate{
    
	return [self compare:anotherDate] == NSOrderedAscending;
}

-(BOOL)kfx_isLaterThanDate:(NSDate *)anotherDate{
	
	return [self compare:anotherDate] == NSOrderedDescending;
}

-(BOOL)kfx_isEarlierThanOrEqualToDate:(NSDate*)anotherDate{
	
	return [self compare:anotherDate] != NSOrderedDescending;
}

-(BOOL)kfx_isLaterThanOrEqualToDate:(NSDate*)anotherDate{
	return [self compare:anotherDate] != NSOrderedAscending;
}

-(BOOL)kfx_isBetweenStartDate:(NSDate *)startDate andEndDate:(NSDate *)endDate{
    
    if ([self kfx_isLaterThanDate:startDate] && [self kfx_isEarlierThanDate:endDate]) {
        return YES;
    }else{
        return NO;
    }
}


//--------------------------------------------------------
#pragma mark - Equality
//--------------------------------------------------------
-(BOOL)kfx_isDayEqualToDate:(NSDate*)anotherDate{
	
	NSDateComponents *compA = [self kfx_currentCalendarDateComponents];
	NSDateComponents *compB = [anotherDate kfx_currentCalendarDateComponents];
	return ([compA day]==[compB day]
			&& [compA month]==[compB month ]
			&& [compA year]==[compB year]
			);
}

-(BOOL)kfx_isHourEqualToDate:(NSDate*)anotherDate{
	
	NSDateComponents *compA = [self kfx_currentCalendarDateComponents];
	NSDateComponents *compB = [anotherDate kfx_currentCalendarDateComponents];
	return ([compA day]==[compB day]
			&& [compA month]==[compB month ]
			&& [compA year]==[compB year]
			&& [compA hour]==[compB hour]
			);
}

-(BOOL)kfx_isMinuteEqualToDate:(NSDate*)anotherDate{
	
	NSDateComponents *compA = [self kfx_currentCalendarDateComponents];
	NSDateComponents *compB = [anotherDate kfx_currentCalendarDateComponents];
	return ([compA day]==[compB day]
			&& [compA month]==[compB month ]
			&& [compA year]==[compB year]
			&& [compA hour]==[compB hour]
			&& [compA minute]==[compB minute]
			);
}

-(BOOL)kfx_isTimeEqualToDate:(NSDate *)anotherDate{
	
	NSDateComponents *compA = [self kfx_currentCalendarDateComponents];
	NSDateComponents *compB = [anotherDate kfx_currentCalendarDateComponents];
	return ([compA hour]==[compB hour]
			&& [compA minute]==[compB minute]);
}



//--------------------------------------------------------
#pragma mark - Components/difference between dates
//--------------------------------------------------------
/// If the receiver is earlier than the otherDate then the return value will be negative.
-(NSInteger)kfx_daysSinceDate:(NSDate*)otherDate includeCurrentIncompleteDay:(BOOL)includeToday{
	
	if (includeToday) {
		
		NSDate *fromDate;
		NSDate *toDate;
		
		NSCalendar *calendar = [NSCalendar currentCalendar];
		[calendar rangeOfUnit:NSCalendarUnitDay
					startDate:&fromDate
					 interval:nil
					  forDate:self];
		[calendar rangeOfUnit:NSCalendarUnitDay
					startDate:&toDate
					 interval:nil
					  forDate:otherDate];
		NSDateComponents *difference = [calendar components:NSCalendarUnitDay
												   fromDate:fromDate
													 toDate:toDate
													options:kNilOptions];
		return -difference.day;

	}else{
		
		NSTimeInterval difference = [self timeIntervalSinceDate:otherDate];
		NSInteger days = difference / (60*60*24);
		return days;
	}
}

/// If the receiver is earlier than the otherDate then the return value will be negative.
-(NSInteger)kfx_hoursSinceDate:(NSDate*)otherDate includeCurrentIncompleteHour:(BOOL)includeThisHour{
	
	if (includeThisHour) {
		
		NSDate *fromDate;
		NSDate *toDate;
		
		NSCalendar *calendar = [NSCalendar currentCalendar];
		[calendar rangeOfUnit:NSCalendarUnitHour
					startDate:&fromDate
					 interval:nil
					  forDate:self];
		[calendar rangeOfUnit:NSCalendarUnitHour
					startDate:&toDate
					 interval:nil
					  forDate:otherDate];
		NSDateComponents *difference = [calendar components:NSCalendarUnitHour
												   fromDate:fromDate
													 toDate:toDate
													options:kNilOptions];
		return -difference.hour;
		
	}else{
		
		NSTimeInterval difference = [self timeIntervalSinceDate:otherDate];
		NSInteger hours = difference / (60*60);
		return hours;
	}
}


-(NSInteger)hoursSinceMidnight{
	
	NSDateComponents *components = [[NSCalendar currentCalendar] components:NSIntegerMax fromDate:self];
	[components setHour:0];
	[components setMinute:0];
	[components setSecond:0];
	NSDate *midnight = [[NSCalendar currentCalendar] dateFromComponents:components];
	NSDateComponents *diff = [[NSCalendar currentCalendar] components:NSCalendarUnitHour fromDate:midnight toDate:self options:kNilOptions];
	
	NSInteger numberOfHoursPastMidnight = [diff hour];
	return numberOfHoursPastMidnight;
}



//--------------------------------------------------------
#pragma mark - Components
//--------------------------------------------------------
-(NSDateComponents*)kfx_currentCalendarDateComponents {
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	
	return [calendar components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear | NSCalendarUnitWeekday | NSCalendarUnitWeekOfMonth| NSCalendarUnitHour | NSCalendarUnitMinute fromDate:self];
}


//--------------------------------------------------------
#pragma mark New Dates
//--------------------------------------------------------
-(NSDate *)kfx_dateByAddingDays:(NSInteger)days{
    
    NSDateComponents *components = [self kfx_currentCalendarDateComponents];
    [components setDay:components.day+days];
    return [[NSCalendar currentCalendar] dateFromComponents:components];
}

-(NSDate*)kfx_dateWithHour:(NSInteger)hour minute:(NSInteger)min second:(NSInteger)sec{
    
    NSDateComponents *components = [self kfx_currentCalendarDateComponents];
    [components setHour:hour];
    [components setMinute:min];
    [components setSecond:sec];
    return [[NSCalendar currentCalendar] dateFromComponents:components];
}

-(NSDate*)kfx_dateByAddingDays:(NSInteger)days withHour:(NSInteger)hour minute:(NSInteger)min second:(NSInteger)sec{
    
    NSDateComponents *components = [self kfx_currentCalendarDateComponents];
    [components setDay:components.day+days];
    [components setHour:hour];
    [components setMinute:min];
    [components setSecond:sec];
    return [[NSCalendar currentCalendar] dateFromComponents:components];
}



@end
























