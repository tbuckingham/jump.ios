/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 Copyright (c) 2012, Janrain, Inc.

 All rights reserved.

 Redistribution and use in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation and/or
   other materials provided with the distribution.
 * Neither the name of the Janrain, Inc. nor the names of its
   contributors may be used to endorse or promote products derived from this
   software without specific prior written permission.


 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */


#import "JRProfile.h"

@interface NSArray (AccountsToFromDictionary)
- (NSArray*)arrayOfAccountsDictionariesFromAccountsObjects;
- (NSArray*)arrayOfAccountsObjectsFromAccountsDictionaries;
@end

@implementation NSArray (AccountsToFromDictionary)
- (NSArray*)arrayOfAccountsDictionariesFromAccountsObjects
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *object in self)
        if ([object isKindOfClass:[JRAccounts class]])
            [filteredDictionaryArray addObject:[(JRAccounts*)object dictionaryFromObject]];

    return filteredDictionaryArray;
}

- (NSArray*)arrayOfAccountsObjectsFromAccountsDictionaries
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *dictionary in self)
        if ([dictionary isKindOfClass:[NSDictionary class]])
            [filteredDictionaryArray addObject:[JRAccounts accountsObjectFromDictionary:(NSDictionary*)dictionary]];

    return filteredDictionaryArray;
}
@end

@interface NSArray (AddressesToFromDictionary)
- (NSArray*)arrayOfAddressesDictionariesFromAddressesObjects;
- (NSArray*)arrayOfAddressesObjectsFromAddressesDictionaries;
@end

@implementation NSArray (AddressesToFromDictionary)
- (NSArray*)arrayOfAddressesDictionariesFromAddressesObjects
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *object in self)
        if ([object isKindOfClass:[JRAddresses class]])
            [filteredDictionaryArray addObject:[(JRAddresses*)object dictionaryFromObject]];

    return filteredDictionaryArray;
}

- (NSArray*)arrayOfAddressesObjectsFromAddressesDictionaries
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *dictionary in self)
        if ([dictionary isKindOfClass:[NSDictionary class]])
            [filteredDictionaryArray addObject:[JRAddresses addressesObjectFromDictionary:(NSDictionary*)dictionary]];

    return filteredDictionaryArray;
}
@end

@interface NSArray (EmailsToFromDictionary)
- (NSArray*)arrayOfEmailsDictionariesFromEmailsObjects;
- (NSArray*)arrayOfEmailsObjectsFromEmailsDictionaries;
@end

@implementation NSArray (EmailsToFromDictionary)
- (NSArray*)arrayOfEmailsDictionariesFromEmailsObjects
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *object in self)
        if ([object isKindOfClass:[JREmails class]])
            [filteredDictionaryArray addObject:[(JREmails*)object dictionaryFromObject]];

    return filteredDictionaryArray;
}

- (NSArray*)arrayOfEmailsObjectsFromEmailsDictionaries
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *dictionary in self)
        if ([dictionary isKindOfClass:[NSDictionary class]])
            [filteredDictionaryArray addObject:[JREmails emailsObjectFromDictionary:(NSDictionary*)dictionary]];

    return filteredDictionaryArray;
}
@end

@interface NSArray (ImsToFromDictionary)
- (NSArray*)arrayOfImsDictionariesFromImsObjects;
- (NSArray*)arrayOfImsObjectsFromImsDictionaries;
@end

@implementation NSArray (ImsToFromDictionary)
- (NSArray*)arrayOfImsDictionariesFromImsObjects
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *object in self)
        if ([object isKindOfClass:[JRIms class]])
            [filteredDictionaryArray addObject:[(JRIms*)object dictionaryFromObject]];

    return filteredDictionaryArray;
}

- (NSArray*)arrayOfImsObjectsFromImsDictionaries
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *dictionary in self)
        if ([dictionary isKindOfClass:[NSDictionary class]])
            [filteredDictionaryArray addObject:[JRIms imsObjectFromDictionary:(NSDictionary*)dictionary]];

    return filteredDictionaryArray;
}
@end

@interface NSArray (OrganizationsToFromDictionary)
- (NSArray*)arrayOfOrganizationsDictionariesFromOrganizationsObjects;
- (NSArray*)arrayOfOrganizationsObjectsFromOrganizationsDictionaries;
@end

@implementation NSArray (OrganizationsToFromDictionary)
- (NSArray*)arrayOfOrganizationsDictionariesFromOrganizationsObjects
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *object in self)
        if ([object isKindOfClass:[JROrganizations class]])
            [filteredDictionaryArray addObject:[(JROrganizations*)object dictionaryFromObject]];

    return filteredDictionaryArray;
}

- (NSArray*)arrayOfOrganizationsObjectsFromOrganizationsDictionaries
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *dictionary in self)
        if ([dictionary isKindOfClass:[NSDictionary class]])
            [filteredDictionaryArray addObject:[JROrganizations organizationsObjectFromDictionary:(NSDictionary*)dictionary]];

    return filteredDictionaryArray;
}
@end

@interface NSArray (PhoneNumbersToFromDictionary)
- (NSArray*)arrayOfPhoneNumbersDictionariesFromPhoneNumbersObjects;
- (NSArray*)arrayOfPhoneNumbersObjectsFromPhoneNumbersDictionaries;
@end

@implementation NSArray (PhoneNumbersToFromDictionary)
- (NSArray*)arrayOfPhoneNumbersDictionariesFromPhoneNumbersObjects
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *object in self)
        if ([object isKindOfClass:[JRPhoneNumbers class]])
            [filteredDictionaryArray addObject:[(JRPhoneNumbers*)object dictionaryFromObject]];

    return filteredDictionaryArray;
}

- (NSArray*)arrayOfPhoneNumbersObjectsFromPhoneNumbersDictionaries
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *dictionary in self)
        if ([dictionary isKindOfClass:[NSDictionary class]])
            [filteredDictionaryArray addObject:[JRPhoneNumbers phoneNumbersObjectFromDictionary:(NSDictionary*)dictionary]];

    return filteredDictionaryArray;
}
@end

@interface NSArray (PhotosToFromDictionary)
- (NSArray*)arrayOfPhotosDictionariesFromPhotosObjects;
- (NSArray*)arrayOfPhotosObjectsFromPhotosDictionaries;
@end

@implementation NSArray (PhotosToFromDictionary)
- (NSArray*)arrayOfPhotosDictionariesFromPhotosObjects
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *object in self)
        if ([object isKindOfClass:[JRPhotos class]])
            [filteredDictionaryArray addObject:[(JRPhotos*)object dictionaryFromObject]];

    return filteredDictionaryArray;
}

- (NSArray*)arrayOfPhotosObjectsFromPhotosDictionaries
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *dictionary in self)
        if ([dictionary isKindOfClass:[NSDictionary class]])
            [filteredDictionaryArray addObject:[JRPhotos photosObjectFromDictionary:(NSDictionary*)dictionary]];

    return filteredDictionaryArray;
}
@end

@interface NSArray (UrlsToFromDictionary)
- (NSArray*)arrayOfUrlsDictionariesFromUrlsObjects;
- (NSArray*)arrayOfUrlsObjectsFromUrlsDictionaries;
@end

@implementation NSArray (UrlsToFromDictionary)
- (NSArray*)arrayOfUrlsDictionariesFromUrlsObjects
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *object in self)
        if ([object isKindOfClass:[JRUrls class]])
            [filteredDictionaryArray addObject:[(JRUrls*)object dictionaryFromObject]];

    return filteredDictionaryArray;
}

- (NSArray*)arrayOfUrlsObjectsFromUrlsDictionaries
{
    NSMutableArray *filteredDictionaryArray = [NSMutableArray arrayWithCapacity:[self count]];
    for (NSObject *dictionary in self)
        if ([dictionary isKindOfClass:[NSDictionary class]])
            [filteredDictionaryArray addObject:[JRUrls urlsObjectFromDictionary:(NSDictionary*)dictionary]];

    return filteredDictionaryArray;
}
@end

@implementation JRProfile
@synthesize aboutMe;
@synthesize accounts;
@synthesize addresses;
@synthesize anniversary;
@synthesize birthday;
@synthesize bodyType;
@synthesize books;
@synthesize cars;
@synthesize children;
@synthesize currentLocation;
@synthesize displayName;
@synthesize drinker;
@synthesize emails;
@synthesize ethnicity;
@synthesize fashion;
@synthesize food;
@synthesize gender;
@synthesize happiestWhen;
@synthesize heroes;
@synthesize humor;
@synthesize ims;
@synthesize interestedInMeeting;
@synthesize interests;
@synthesize jobInterests;
@synthesize languages;
@synthesize languagesSpoken;
@synthesize livingArrangement;
@synthesize lookingFor;
@synthesize movies;
@synthesize music;
@synthesize name;
@synthesize nickname;
@synthesize note;
@synthesize organizations;
@synthesize pets;
@synthesize phoneNumbers;
@synthesize photos;
@synthesize politicalViews;
@synthesize preferredUsername;
@synthesize profileSong;
@synthesize profileUrl;
@synthesize profileVideo;
@synthesize published;
@synthesize quotes;
@synthesize relationshipStatus;
@synthesize relationships;
@synthesize religion;
@synthesize romance;
@synthesize scaredOf;
@synthesize sexualOrientation;
@synthesize smoker;
@synthesize sports;
@synthesize status;
@synthesize tags;
@synthesize turnOffs;
@synthesize turnOns;
@synthesize tvShows;
@synthesize updated;
@synthesize urls;
@synthesize utcOffset;

- (id)init
{
    if ((self = [super init]))
    {
    }
    return self;
}

+ (id)profile
{
    return [[[JRProfile alloc] init] autorelease];
}

- (id)copyWithZone:(NSZone*)zone
{
    JRProfile *profileCopy =
                [[JRProfile allocWithZone:zone] init];

    profileCopy.aboutMe = self.aboutMe;
    profileCopy.accounts = self.accounts;
    profileCopy.addresses = self.addresses;
    profileCopy.anniversary = self.anniversary;
    profileCopy.birthday = self.birthday;
    profileCopy.bodyType = self.bodyType;
    profileCopy.books = self.books;
    profileCopy.cars = self.cars;
    profileCopy.children = self.children;
    profileCopy.currentLocation = self.currentLocation;
    profileCopy.displayName = self.displayName;
    profileCopy.drinker = self.drinker;
    profileCopy.emails = self.emails;
    profileCopy.ethnicity = self.ethnicity;
    profileCopy.fashion = self.fashion;
    profileCopy.food = self.food;
    profileCopy.gender = self.gender;
    profileCopy.happiestWhen = self.happiestWhen;
    profileCopy.heroes = self.heroes;
    profileCopy.humor = self.humor;
    profileCopy.ims = self.ims;
    profileCopy.interestedInMeeting = self.interestedInMeeting;
    profileCopy.interests = self.interests;
    profileCopy.jobInterests = self.jobInterests;
    profileCopy.languages = self.languages;
    profileCopy.languagesSpoken = self.languagesSpoken;
    profileCopy.livingArrangement = self.livingArrangement;
    profileCopy.lookingFor = self.lookingFor;
    profileCopy.movies = self.movies;
    profileCopy.music = self.music;
    profileCopy.name = self.name;
    profileCopy.nickname = self.nickname;
    profileCopy.note = self.note;
    profileCopy.organizations = self.organizations;
    profileCopy.pets = self.pets;
    profileCopy.phoneNumbers = self.phoneNumbers;
    profileCopy.photos = self.photos;
    profileCopy.politicalViews = self.politicalViews;
    profileCopy.preferredUsername = self.preferredUsername;
    profileCopy.profileSong = self.profileSong;
    profileCopy.profileUrl = self.profileUrl;
    profileCopy.profileVideo = self.profileVideo;
    profileCopy.published = self.published;
    profileCopy.quotes = self.quotes;
    profileCopy.relationshipStatus = self.relationshipStatus;
    profileCopy.relationships = self.relationships;
    profileCopy.religion = self.religion;
    profileCopy.romance = self.romance;
    profileCopy.scaredOf = self.scaredOf;
    profileCopy.sexualOrientation = self.sexualOrientation;
    profileCopy.smoker = self.smoker;
    profileCopy.sports = self.sports;
    profileCopy.status = self.status;
    profileCopy.tags = self.tags;
    profileCopy.turnOffs = self.turnOffs;
    profileCopy.turnOns = self.turnOns;
    profileCopy.tvShows = self.tvShows;
    profileCopy.updated = self.updated;
    profileCopy.urls = self.urls;
    profileCopy.utcOffset = self.utcOffset;

    return profileCopy;
}

+ (id)profileObjectFromDictionary:(NSDictionary*)dictionary
{
    JRProfile *profile =
        [JRProfile profile];

    profile.aboutMe = [dictionary objectForKey:@"aboutMe"];
    profile.accounts = [(NSArray*)[dictionary objectForKey:@"accounts"] arrayOfAccountsObjectsFromAccountsDictionaries];
    profile.addresses = [(NSArray*)[dictionary objectForKey:@"addresses"] arrayOfAddressesObjectsFromAddressesDictionaries];
    profile.anniversary = [NSDate dateFromISO8601DateString:[dictionary objectForKey:@"anniversary"]];
    profile.birthday = [dictionary objectForKey:@"birthday"];
    profile.bodyType = [JRBodyType bodyTypeObjectFromDictionary:(NSDictionary*)[dictionary objectForKey:@"bodyType"]];
    profile.books = [dictionary objectForKey:@"books"];
    profile.cars = [dictionary objectForKey:@"cars"];
    profile.children = [dictionary objectForKey:@"children"];
    profile.currentLocation = [JRCurrentLocation currentLocationObjectFromDictionary:(NSDictionary*)[dictionary objectForKey:@"currentLocation"]];
    profile.displayName = [dictionary objectForKey:@"displayName"];
    profile.drinker = [dictionary objectForKey:@"drinker"];
    profile.emails = [(NSArray*)[dictionary objectForKey:@"emails"] arrayOfEmailsObjectsFromEmailsDictionaries];
    profile.ethnicity = [dictionary objectForKey:@"ethnicity"];
    profile.fashion = [dictionary objectForKey:@"fashion"];
    profile.food = [dictionary objectForKey:@"food"];
    profile.gender = [dictionary objectForKey:@"gender"];
    profile.happiestWhen = [dictionary objectForKey:@"happiestWhen"];
    profile.heroes = [dictionary objectForKey:@"heroes"];
    profile.humor = [dictionary objectForKey:@"humor"];
    profile.ims = [(NSArray*)[dictionary objectForKey:@"ims"] arrayOfImsObjectsFromImsDictionaries];
    profile.interestedInMeeting = [dictionary objectForKey:@"interestedInMeeting"];
    profile.interests = [dictionary objectForKey:@"interests"];
    profile.jobInterests = [dictionary objectForKey:@"jobInterests"];
    profile.languages = [dictionary objectForKey:@"languages"];
    profile.languagesSpoken = [dictionary objectForKey:@"languagesSpoken"];
    profile.livingArrangement = [dictionary objectForKey:@"livingArrangement"];
    profile.lookingFor = [dictionary objectForKey:@"lookingFor"];
    profile.movies = [dictionary objectForKey:@"movies"];
    profile.music = [dictionary objectForKey:@"music"];
    profile.name = [JRName nameObjectFromDictionary:(NSDictionary*)[dictionary objectForKey:@"name"]];
    profile.nickname = [dictionary objectForKey:@"nickname"];
    profile.note = [dictionary objectForKey:@"note"];
    profile.organizations = [(NSArray*)[dictionary objectForKey:@"organizations"] arrayOfOrganizationsObjectsFromOrganizationsDictionaries];
    profile.pets = [dictionary objectForKey:@"pets"];
    profile.phoneNumbers = [(NSArray*)[dictionary objectForKey:@"phoneNumbers"] arrayOfPhoneNumbersObjectsFromPhoneNumbersDictionaries];
    profile.photos = [(NSArray*)[dictionary objectForKey:@"photos"] arrayOfPhotosObjectsFromPhotosDictionaries];
    profile.politicalViews = [dictionary objectForKey:@"politicalViews"];
    profile.preferredUsername = [dictionary objectForKey:@"preferredUsername"];
    profile.profileSong = [dictionary objectForKey:@"profileSong"];
    profile.profileUrl = [dictionary objectForKey:@"profileUrl"];
    profile.profileVideo = [dictionary objectForKey:@"profileVideo"];
    profile.published = [NSDate dateFromISO8601DateTimeString:[dictionary objectForKey:@"published"]];
    profile.quotes = [dictionary objectForKey:@"quotes"];
    profile.relationshipStatus = [dictionary objectForKey:@"relationshipStatus"];
    profile.relationships = [dictionary objectForKey:@"relationships"];
    profile.religion = [dictionary objectForKey:@"religion"];
    profile.romance = [dictionary objectForKey:@"romance"];
    profile.scaredOf = [dictionary objectForKey:@"scaredOf"];
    profile.sexualOrientation = [dictionary objectForKey:@"sexualOrientation"];
    profile.smoker = [dictionary objectForKey:@"smoker"];
    profile.sports = [dictionary objectForKey:@"sports"];
    profile.status = [dictionary objectForKey:@"status"];
    profile.tags = [dictionary objectForKey:@"tags"];
    profile.turnOffs = [dictionary objectForKey:@"turnOffs"];
    profile.turnOns = [dictionary objectForKey:@"turnOns"];
    profile.tvShows = [dictionary objectForKey:@"tvShows"];
    profile.updated = [NSDate dateFromISO8601DateTimeString:[dictionary objectForKey:@"updated"]];
    profile.urls = [(NSArray*)[dictionary objectForKey:@"urls"] arrayOfUrlsObjectsFromUrlsDictionaries];
    profile.utcOffset = [dictionary objectForKey:@"utcOffset"];

    return profile;
}

- (NSDictionary*)dictionaryFromObject
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:10];


    if (aboutMe)
        [dict setObject:aboutMe forKey:@"aboutMe"];

    if (accounts)
        [dict setObject:[accounts arrayOfAccountsDictionariesFromAccountsObjects] forKey:@"accounts"];

    if (addresses)
        [dict setObject:[addresses arrayOfAddressesDictionariesFromAddressesObjects] forKey:@"addresses"];

    if (anniversary)
        [dict setObject:[anniversary stringFromISO8601Date] forKey:@"anniversary"];

    if (birthday)
        [dict setObject:birthday forKey:@"birthday"];

    if (bodyType)
        [dict setObject:[bodyType dictionaryFromObject] forKey:@"bodyType"];

    if (books)
        [dict setObject:books forKey:@"books"];

    if (cars)
        [dict setObject:cars forKey:@"cars"];

    if (children)
        [dict setObject:children forKey:@"children"];

    if (currentLocation)
        [dict setObject:[currentLocation dictionaryFromObject] forKey:@"currentLocation"];

    if (displayName)
        [dict setObject:displayName forKey:@"displayName"];

    if (drinker)
        [dict setObject:drinker forKey:@"drinker"];

    if (emails)
        [dict setObject:[emails arrayOfEmailsDictionariesFromEmailsObjects] forKey:@"emails"];

    if (ethnicity)
        [dict setObject:ethnicity forKey:@"ethnicity"];

    if (fashion)
        [dict setObject:fashion forKey:@"fashion"];

    if (food)
        [dict setObject:food forKey:@"food"];

    if (gender)
        [dict setObject:gender forKey:@"gender"];

    if (happiestWhen)
        [dict setObject:happiestWhen forKey:@"happiestWhen"];

    if (heroes)
        [dict setObject:heroes forKey:@"heroes"];

    if (humor)
        [dict setObject:humor forKey:@"humor"];

    if (ims)
        [dict setObject:[ims arrayOfImsDictionariesFromImsObjects] forKey:@"ims"];

    if (interestedInMeeting)
        [dict setObject:interestedInMeeting forKey:@"interestedInMeeting"];

    if (interests)
        [dict setObject:interests forKey:@"interests"];

    if (jobInterests)
        [dict setObject:jobInterests forKey:@"jobInterests"];

    if (languages)
        [dict setObject:languages forKey:@"languages"];

    if (languagesSpoken)
        [dict setObject:languagesSpoken forKey:@"languagesSpoken"];

    if (livingArrangement)
        [dict setObject:livingArrangement forKey:@"livingArrangement"];

    if (lookingFor)
        [dict setObject:lookingFor forKey:@"lookingFor"];

    if (movies)
        [dict setObject:movies forKey:@"movies"];

    if (music)
        [dict setObject:music forKey:@"music"];

    if (name)
        [dict setObject:[name dictionaryFromObject] forKey:@"name"];

    if (nickname)
        [dict setObject:nickname forKey:@"nickname"];

    if (note)
        [dict setObject:note forKey:@"note"];

    if (organizations)
        [dict setObject:[organizations arrayOfOrganizationsDictionariesFromOrganizationsObjects] forKey:@"organizations"];

    if (pets)
        [dict setObject:pets forKey:@"pets"];

    if (phoneNumbers)
        [dict setObject:[phoneNumbers arrayOfPhoneNumbersDictionariesFromPhoneNumbersObjects] forKey:@"phoneNumbers"];

    if (photos)
        [dict setObject:[photos arrayOfPhotosDictionariesFromPhotosObjects] forKey:@"photos"];

    if (politicalViews)
        [dict setObject:politicalViews forKey:@"politicalViews"];

    if (preferredUsername)
        [dict setObject:preferredUsername forKey:@"preferredUsername"];

    if (profileSong)
        [dict setObject:profileSong forKey:@"profileSong"];

    if (profileUrl)
        [dict setObject:profileUrl forKey:@"profileUrl"];

    if (profileVideo)
        [dict setObject:profileVideo forKey:@"profileVideo"];

    if (published)
        [dict setObject:[published stringFromISO8601DateTime] forKey:@"published"];

    if (quotes)
        [dict setObject:quotes forKey:@"quotes"];

    if (relationshipStatus)
        [dict setObject:relationshipStatus forKey:@"relationshipStatus"];

    if (relationships)
        [dict setObject:relationships forKey:@"relationships"];

    if (religion)
        [dict setObject:religion forKey:@"religion"];

    if (romance)
        [dict setObject:romance forKey:@"romance"];

    if (scaredOf)
        [dict setObject:scaredOf forKey:@"scaredOf"];

    if (sexualOrientation)
        [dict setObject:sexualOrientation forKey:@"sexualOrientation"];

    if (smoker)
        [dict setObject:smoker forKey:@"smoker"];

    if (sports)
        [dict setObject:sports forKey:@"sports"];

    if (status)
        [dict setObject:status forKey:@"status"];

    if (tags)
        [dict setObject:tags forKey:@"tags"];

    if (turnOffs)
        [dict setObject:turnOffs forKey:@"turnOffs"];

    if (turnOns)
        [dict setObject:turnOns forKey:@"turnOns"];

    if (tvShows)
        [dict setObject:tvShows forKey:@"tvShows"];

    if (updated)
        [dict setObject:[updated stringFromISO8601DateTime] forKey:@"updated"];

    if (urls)
        [dict setObject:[urls arrayOfUrlsDictionariesFromUrlsObjects] forKey:@"urls"];

    if (utcOffset)
        [dict setObject:utcOffset forKey:@"utcOffset"];

    return dict;
}

- (void)updateFromDictionary:(NSDictionary*)dictionary
{
    if ([dictionary objectForKey:@"aboutMe"])
        self.aboutMe = [dictionary objectForKey:@"aboutMe"];

    if ([dictionary objectForKey:@"accounts"])
        self.accounts = [(NSArray*)[dictionary objectForKey:@"accounts"] arrayOfAccountsObjectsFromAccountsDictionaries];

    if ([dictionary objectForKey:@"addresses"])
        self.addresses = [(NSArray*)[dictionary objectForKey:@"addresses"] arrayOfAddressesObjectsFromAddressesDictionaries];

    if ([dictionary objectForKey:@"anniversary"])
        self.anniversary = [NSDate dateFromISO8601DateString:[dictionary objectForKey:@"anniversary"]];

    if ([dictionary objectForKey:@"birthday"])
        self.birthday = [dictionary objectForKey:@"birthday"];

    if ([dictionary objectForKey:@"bodyType"])
        self.bodyType = [JRBodyType bodyTypeObjectFromDictionary:(NSDictionary*)[dictionary objectForKey:@"bodyType"]];

    if ([dictionary objectForKey:@"books"])
        self.books = [dictionary objectForKey:@"books"];

    if ([dictionary objectForKey:@"cars"])
        self.cars = [dictionary objectForKey:@"cars"];

    if ([dictionary objectForKey:@"children"])
        self.children = [dictionary objectForKey:@"children"];

    if ([dictionary objectForKey:@"currentLocation"])
        self.currentLocation = [JRCurrentLocation currentLocationObjectFromDictionary:(NSDictionary*)[dictionary objectForKey:@"currentLocation"]];

    if ([dictionary objectForKey:@"displayName"])
        self.displayName = [dictionary objectForKey:@"displayName"];

    if ([dictionary objectForKey:@"drinker"])
        self.drinker = [dictionary objectForKey:@"drinker"];

    if ([dictionary objectForKey:@"emails"])
        self.emails = [(NSArray*)[dictionary objectForKey:@"emails"] arrayOfEmailsObjectsFromEmailsDictionaries];

    if ([dictionary objectForKey:@"ethnicity"])
        self.ethnicity = [dictionary objectForKey:@"ethnicity"];

    if ([dictionary objectForKey:@"fashion"])
        self.fashion = [dictionary objectForKey:@"fashion"];

    if ([dictionary objectForKey:@"food"])
        self.food = [dictionary objectForKey:@"food"];

    if ([dictionary objectForKey:@"gender"])
        self.gender = [dictionary objectForKey:@"gender"];

    if ([dictionary objectForKey:@"happiestWhen"])
        self.happiestWhen = [dictionary objectForKey:@"happiestWhen"];

    if ([dictionary objectForKey:@"heroes"])
        self.heroes = [dictionary objectForKey:@"heroes"];

    if ([dictionary objectForKey:@"humor"])
        self.humor = [dictionary objectForKey:@"humor"];

    if ([dictionary objectForKey:@"ims"])
        self.ims = [(NSArray*)[dictionary objectForKey:@"ims"] arrayOfImsObjectsFromImsDictionaries];

    if ([dictionary objectForKey:@"interestedInMeeting"])
        self.interestedInMeeting = [dictionary objectForKey:@"interestedInMeeting"];

    if ([dictionary objectForKey:@"interests"])
        self.interests = [dictionary objectForKey:@"interests"];

    if ([dictionary objectForKey:@"jobInterests"])
        self.jobInterests = [dictionary objectForKey:@"jobInterests"];

    if ([dictionary objectForKey:@"languages"])
        self.languages = [dictionary objectForKey:@"languages"];

    if ([dictionary objectForKey:@"languagesSpoken"])
        self.languagesSpoken = [dictionary objectForKey:@"languagesSpoken"];

    if ([dictionary objectForKey:@"livingArrangement"])
        self.livingArrangement = [dictionary objectForKey:@"livingArrangement"];

    if ([dictionary objectForKey:@"lookingFor"])
        self.lookingFor = [dictionary objectForKey:@"lookingFor"];

    if ([dictionary objectForKey:@"movies"])
        self.movies = [dictionary objectForKey:@"movies"];

    if ([dictionary objectForKey:@"music"])
        self.music = [dictionary objectForKey:@"music"];

    if ([dictionary objectForKey:@"name"])
        self.name = [JRName nameObjectFromDictionary:(NSDictionary*)[dictionary objectForKey:@"name"]];

    if ([dictionary objectForKey:@"nickname"])
        self.nickname = [dictionary objectForKey:@"nickname"];

    if ([dictionary objectForKey:@"note"])
        self.note = [dictionary objectForKey:@"note"];

    if ([dictionary objectForKey:@"organizations"])
        self.organizations = [(NSArray*)[dictionary objectForKey:@"organizations"] arrayOfOrganizationsObjectsFromOrganizationsDictionaries];

    if ([dictionary objectForKey:@"pets"])
        self.pets = [dictionary objectForKey:@"pets"];

    if ([dictionary objectForKey:@"phoneNumbers"])
        self.phoneNumbers = [(NSArray*)[dictionary objectForKey:@"phoneNumbers"] arrayOfPhoneNumbersObjectsFromPhoneNumbersDictionaries];

    if ([dictionary objectForKey:@"photos"])
        self.photos = [(NSArray*)[dictionary objectForKey:@"photos"] arrayOfPhotosObjectsFromPhotosDictionaries];

    if ([dictionary objectForKey:@"politicalViews"])
        self.politicalViews = [dictionary objectForKey:@"politicalViews"];

    if ([dictionary objectForKey:@"preferredUsername"])
        self.preferredUsername = [dictionary objectForKey:@"preferredUsername"];

    if ([dictionary objectForKey:@"profileSong"])
        self.profileSong = [dictionary objectForKey:@"profileSong"];

    if ([dictionary objectForKey:@"profileUrl"])
        self.profileUrl = [dictionary objectForKey:@"profileUrl"];

    if ([dictionary objectForKey:@"profileVideo"])
        self.profileVideo = [dictionary objectForKey:@"profileVideo"];

    if ([dictionary objectForKey:@"published"])
        self.published = [NSDate dateFromISO8601DateTimeString:[dictionary objectForKey:@"published"]];

    if ([dictionary objectForKey:@"quotes"])
        self.quotes = [dictionary objectForKey:@"quotes"];

    if ([dictionary objectForKey:@"relationshipStatus"])
        self.relationshipStatus = [dictionary objectForKey:@"relationshipStatus"];

    if ([dictionary objectForKey:@"relationships"])
        self.relationships = [dictionary objectForKey:@"relationships"];

    if ([dictionary objectForKey:@"religion"])
        self.religion = [dictionary objectForKey:@"religion"];

    if ([dictionary objectForKey:@"romance"])
        self.romance = [dictionary objectForKey:@"romance"];

    if ([dictionary objectForKey:@"scaredOf"])
        self.scaredOf = [dictionary objectForKey:@"scaredOf"];

    if ([dictionary objectForKey:@"sexualOrientation"])
        self.sexualOrientation = [dictionary objectForKey:@"sexualOrientation"];

    if ([dictionary objectForKey:@"smoker"])
        self.smoker = [dictionary objectForKey:@"smoker"];

    if ([dictionary objectForKey:@"sports"])
        self.sports = [dictionary objectForKey:@"sports"];

    if ([dictionary objectForKey:@"status"])
        self.status = [dictionary objectForKey:@"status"];

    if ([dictionary objectForKey:@"tags"])
        self.tags = [dictionary objectForKey:@"tags"];

    if ([dictionary objectForKey:@"turnOffs"])
        self.turnOffs = [dictionary objectForKey:@"turnOffs"];

    if ([dictionary objectForKey:@"turnOns"])
        self.turnOns = [dictionary objectForKey:@"turnOns"];

    if ([dictionary objectForKey:@"tvShows"])
        self.tvShows = [dictionary objectForKey:@"tvShows"];

    if ([dictionary objectForKey:@"updated"])
        self.updated = [NSDate dateFromISO8601DateTimeString:[dictionary objectForKey:@"updated"]];

    if ([dictionary objectForKey:@"urls"])
        self.urls = [(NSArray*)[dictionary objectForKey:@"urls"] arrayOfUrlsObjectsFromUrlsDictionaries];

    if ([dictionary objectForKey:@"utcOffset"])
        self.utcOffset = [dictionary objectForKey:@"utcOffset"];
}

- (void)dealloc
{
    [aboutMe release];
    [accounts release];
    [addresses release];
    [anniversary release];
    [birthday release];
    [bodyType release];
    [books release];
    [cars release];
    [children release];
    [currentLocation release];
    [displayName release];
    [drinker release];
    [emails release];
    [ethnicity release];
    [fashion release];
    [food release];
    [gender release];
    [happiestWhen release];
    [heroes release];
    [humor release];
    [ims release];
    [interestedInMeeting release];
    [interests release];
    [jobInterests release];
    [languages release];
    [languagesSpoken release];
    [livingArrangement release];
    [lookingFor release];
    [movies release];
    [music release];
    [name release];
    [nickname release];
    [note release];
    [organizations release];
    [pets release];
    [phoneNumbers release];
    [photos release];
    [politicalViews release];
    [preferredUsername release];
    [profileSong release];
    [profileUrl release];
    [profileVideo release];
    [published release];
    [quotes release];
    [relationshipStatus release];
    [relationships release];
    [religion release];
    [romance release];
    [scaredOf release];
    [sexualOrientation release];
    [smoker release];
    [sports release];
    [status release];
    [tags release];
    [turnOffs release];
    [turnOns release];
    [tvShows release];
    [updated release];
    [urls release];
    [utcOffset release];

    [super dealloc];
}
@end