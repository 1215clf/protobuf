// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class Animal;
@class AnimalBuilder;
@class Person;
@class PersonBuilder;
@class PersonResult;
@class PersonResultBuilder;


typedef NS_ENUM(SInt32, PersonDeviceType) {
  PersonDeviceTypeIos = 0,
  PersonDeviceTypeAndroid = 1,
  PersonDeviceTypeWp = 2,
};

BOOL PersonDeviceTypeIsValidValue(PersonDeviceType value);
NSString *NSStringFromPersonDeviceType(PersonDeviceType value);


@interface MyClassRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define Person_name @"name"
#define Person_age @"age"
#define Person_deviceType @"deviceType"
#define Person_results @"results"
#define Person_animals @"animals"
@interface Person : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasAge_:1;
  BOOL hasName_:1;
  BOOL hasDeviceType_:1;
  SInt32 age;
  NSString* name;
  PersonDeviceType deviceType;
  NSMutableArray * resultsArray;
  NSMutableArray * animalsArray;
}
- (BOOL) hasName;
- (BOOL) hasAge;
- (BOOL) hasDeviceType;
@property (readonly, strong) NSString* name;
@property (readonly) SInt32 age;
@property (readonly) PersonDeviceType deviceType;
@property (readonly, strong) NSArray<PersonResult*> * results;
@property (readonly, strong) NSArray<Animal*> * animals;
- (PersonResult*)resultsAtIndex:(NSUInteger)index;
- (Animal*)animalsAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PersonBuilder*) builder;
+ (PersonBuilder*) builder;
+ (PersonBuilder*) builderWithPrototype:(Person*) prototype;
- (PersonBuilder*) toBuilder;

+ (Person*) parseFromData:(NSData*) data;
+ (Person*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (Person*) parseFromInputStream:(NSInputStream*) input;
+ (Person*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (Person*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (Person*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

#define Result_url @"url"
#define Result_title @"title"
@interface PersonResult : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasUrl_:1;
  BOOL hasTitle_:1;
  NSString* url;
  NSString* title;
}
- (BOOL) hasUrl;
- (BOOL) hasTitle;
@property (readonly, strong) NSString* url;
@property (readonly, strong) NSString* title;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PersonResultBuilder*) builder;
+ (PersonResultBuilder*) builder;
+ (PersonResultBuilder*) builderWithPrototype:(PersonResult*) prototype;
- (PersonResultBuilder*) toBuilder;

+ (PersonResult*) parseFromData:(NSData*) data;
+ (PersonResult*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PersonResult*) parseFromInputStream:(NSInputStream*) input;
+ (PersonResult*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PersonResult*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PersonResult*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PersonResultBuilder : PBGeneratedMessageBuilder {
@private
  PersonResult* resultResult;
}

- (PersonResult*) defaultInstance;

- (PersonResultBuilder*) clear;
- (PersonResultBuilder*) clone;

- (PersonResult*) build;
- (PersonResult*) buildPartial;

- (PersonResultBuilder*) mergeFrom:(PersonResult*) other;
- (PersonResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PersonResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasUrl;
- (NSString*) url;
- (PersonResultBuilder*) setUrl:(NSString*) value;
- (PersonResultBuilder*) clearUrl;

- (BOOL) hasTitle;
- (NSString*) title;
- (PersonResultBuilder*) setTitle:(NSString*) value;
- (PersonResultBuilder*) clearTitle;
@end

@interface PersonBuilder : PBGeneratedMessageBuilder {
@private
  Person* resultPerson;
}

- (Person*) defaultInstance;

- (PersonBuilder*) clear;
- (PersonBuilder*) clone;

- (Person*) build;
- (Person*) buildPartial;

- (PersonBuilder*) mergeFrom:(Person*) other;
- (PersonBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PersonBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasName;
- (NSString*) name;
- (PersonBuilder*) setName:(NSString*) value;
- (PersonBuilder*) clearName;

- (BOOL) hasAge;
- (SInt32) age;
- (PersonBuilder*) setAge:(SInt32) value;
- (PersonBuilder*) clearAge;

- (BOOL) hasDeviceType;
- (PersonDeviceType) deviceType;
- (PersonBuilder*) setDeviceType:(PersonDeviceType) value;
- (PersonBuilder*) clearDeviceType;

- (NSMutableArray<PersonResult*> *)results;
- (PersonResult*)resultsAtIndex:(NSUInteger)index;
- (PersonBuilder *)addResults:(PersonResult*)value;
- (PersonBuilder *)setResultsArray:(NSArray<PersonResult*> *)array;
- (PersonBuilder *)clearResults;

- (NSMutableArray<Animal*> *)animals;
- (Animal*)animalsAtIndex:(NSUInteger)index;
- (PersonBuilder *)addAnimals:(Animal*)value;
- (PersonBuilder *)setAnimalsArray:(NSArray<Animal*> *)array;
- (PersonBuilder *)clearAnimals;
@end

#define Animal_weight @"weight"
#define Animal_price @"price"
#define Animal_namme @"namme"
@interface Animal : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasPrice_:1;
  BOOL hasWeight_:1;
  BOOL hasNamme_:1;
  Float64 price;
  Float32 weight;
  NSString* namme;
}
- (BOOL) hasWeight;
- (BOOL) hasPrice;
- (BOOL) hasNamme;
@property (readonly) Float32 weight;
@property (readonly) Float64 price;
@property (readonly, strong) NSString* namme;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (AnimalBuilder*) builder;
+ (AnimalBuilder*) builder;
+ (AnimalBuilder*) builderWithPrototype:(Animal*) prototype;
- (AnimalBuilder*) toBuilder;

+ (Animal*) parseFromData:(NSData*) data;
+ (Animal*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (Animal*) parseFromInputStream:(NSInputStream*) input;
+ (Animal*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (Animal*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (Animal*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface AnimalBuilder : PBGeneratedMessageBuilder {
@private
  Animal* resultAnimal;
}

- (Animal*) defaultInstance;

- (AnimalBuilder*) clear;
- (AnimalBuilder*) clone;

- (Animal*) build;
- (Animal*) buildPartial;

- (AnimalBuilder*) mergeFrom:(Animal*) other;
- (AnimalBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (AnimalBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasWeight;
- (Float32) weight;
- (AnimalBuilder*) setWeight:(Float32) value;
- (AnimalBuilder*) clearWeight;

- (BOOL) hasPrice;
- (Float64) price;
- (AnimalBuilder*) setPrice:(Float64) value;
- (AnimalBuilder*) clearPrice;

- (BOOL) hasNamme;
- (NSString*) namme;
- (AnimalBuilder*) setNamme:(NSString*) value;
- (AnimalBuilder*) clearNamme;
@end


// @@protoc_insertion_point(global_scope)
