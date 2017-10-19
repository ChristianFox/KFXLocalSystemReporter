/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/


#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, KFXStringComponent) {
    KFXStringComponentNone = 0,
    KFXStringComponentAlpha = 1 << 0,
    KFXStringComponentNumerical = 1 << 1,
    KFXStringComponentSymbolsCommon = 1 << 2,
    KFXStringComponentSymbolsExtensive = 1 << 3,
};

NS_ASSUME_NONNULL_BEGIN

@interface NSString (KFXAdditions)


//======================================================
#pragma mark - ** Class Methods **
//======================================================
+(NSString*__nullable)kfx_randomStringOfLength:(int)length DEPRECATED_ATTRIBUTE;

/// Create a random string from the character pool specified by KFXStringComponent
+(NSString*)kfx_randomStringOfLength:(int)length withStringComponents:(KFXStringComponent)components;

/// Creates a random string from the characters provided
+(NSString*)kfx_randomStringOfLength:(int)length fromCharacterPool:(NSString*)characterPool;

/// Creates a new string from the strings in the array separated by the seperator string
+(NSString*__nullable)kfx_stringByCombiningComponents:(NSArray<NSString*>*)components separatedByString:(NSString*)separator;

/// Returns 'Yes' or 'No'
+(NSString*)kfx_yesOrNo:(BOOL)boolValue;

/// Returns 'True' or 'False'
+(NSString*)kfx_trueOrFalse:(BOOL)boolValue;

//======================================================
#pragma mark - ** Instance Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Queries
//--------------------------------------------------------
/// Returns YES if the string contains a valid number only
-(BOOL)kfx_containsOnlySignedDecimalDigits;

/// Returns YES if any alpha numeric characters are found
-(BOOL)kfx_containsAlphaNumericCharacters;

/// Determines the number of occurances of the substring
-(NSUInteger)kfx_occurancesOfString:(NSString*)subString
                            options:(NSStringCompareOptions)options;

/**
 * @brief Determine the starting index of the first occurance of the substring
 * @param substring The substring to look for
 * @return If the receiver contains the substring returns the index of the first occurance of the substring. If it does not contain the substring then returns NSNotFound
 * @since 1.0.0
 **/
-(NSUInteger)kfx_indexOfSubstring:(NSString*)substring;

/**
 * @brief Determine the starting index of the occurance of the substring from the given index onwards
 * @param substring The substring to look for
 * @param index the index to begin the search from
 * @return If the receiver contains the substring returns the index of the first character of the substring. If it does not contain the substring then returns NSNotFound
 * @since 1.0.0
 **/
-(NSUInteger)kfx_indexOfSubstring:(NSString*)substring
                        fromIndex:(NSInteger)index;

/**
 * @brief Determine the starting index of the last occurance of the substring
 * @param substring The substring to look for
 * @return If the receiver contains the substring returns the index of the first character of the last occurance substring. If it does not contain the substring then returns NSNotFound
 * @since 1.0.0
 **/
-(NSUInteger)kfx_indexOfLastSubstring:(NSString*)substring;

//--------------------------------------------------------
#pragma mark - New String with edits
//--------------------------------------------------------
/// Capitalises the first letter only. Does not change any other characters.
-(NSString*)kfx_stringByCapitalisingFirstLetter;

/// Prepares a string for use in a url
-(NSString*)kfx_stringByAddingPercentEscapesUsingEncoding:(CFStringEncoding)encoding;

/// Creates a new string and replaces any white space with a length greater than 1 with a single space. If the receiver does not contain any excessive white space it is returned
-(NSString*)kfx_stringByRemovingExcessiveWhiteSpace;

/// Trims white space and new lines from  both ends
-(NSString*)kfx_trim;

/// Trims white space and new lines from  both ends
-(NSString*)kfx_stringByTrimmingWhiteSpaceAndNewLines;

/// Removes excessive white space, makes lowercase, removes single quotes
-(NSString*)kfx_normalisedString;

/// Prepares a telephone number for being called
-(NSString*)kfx_cleanTelephoneNumber;

//--------------------------------------------------------
#pragma mark - Attributed String
//--------------------------------------------------------
-(NSAttributedString *)kfx_attributedString;
-(NSAttributedString *)kfx_attributedStringWithAttributes:(NSDictionary *)attributes;

//--------------------------------------------------------
#pragma mark - Ranges
//--------------------------------------------------------
-(NSRange)kfx_rangeOfString;




@end
NS_ASSUME_NONNULL_END
