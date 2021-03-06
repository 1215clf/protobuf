// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "MyClass.pb.h"
// @@protoc_insertion_point(imports)

@implementation MyClassRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [MyClassRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface Person ()
@property (strong) NSString* name;
@property SInt32 age;
@property PersonDeviceType deviceType;
@property (strong) NSMutableArray<PersonResult*> * resultsArray;
@property (strong) NSMutableArray<Animal*> * animalsArray;
@end

@implementation Person

- (BOOL) hasName {
  return !!hasName_;
}
- (void) setHasName:(BOOL) _value_ {
  hasName_ = !!_value_;
}
@synthesize name;
- (BOOL) hasAge {
  return !!hasAge_;
}
- (void) setHasAge:(BOOL) _value_ {
  hasAge_ = !!_value_;
}
@synthesize age;
- (BOOL) hasDeviceType {
  return !!hasDeviceType_;
}
- (void) setHasDeviceType:(BOOL) _value_ {
  hasDeviceType_ = !!_value_;
}
@synthesize deviceType;
@synthesize resultsArray;
@dynamic results;
@synthesize animalsArray;
@dynamic animals;
- (instancetype) init {
  if ((self = [super init])) {
    self.name = @"";
    self.age = 0;
    self.deviceType = PersonDeviceTypeIos;
  }
  return self;
}
static Person* defaultPersonInstance = nil;
+ (void) initialize {
  if (self == [Person class]) {
    defaultPersonInstance = [[Person alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultPersonInstance;
}
- (instancetype) defaultInstance {
  return defaultPersonInstance;
}
- (NSArray<PersonResult*> *)results {
  return resultsArray;
}
- (PersonResult*)resultsAtIndex:(NSUInteger)index {
  return [resultsArray objectAtIndex:index];
}
- (NSArray<Animal*> *)animals {
  return animalsArray;
}
- (Animal*)animalsAtIndex:(NSUInteger)index {
  return [animalsArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasName) {
    [output writeString:1 value:self.name];
  }
  if (self.hasAge) {
    [output writeInt32:2 value:self.age];
  }
  if (self.hasDeviceType) {
    [output writeEnum:3 value:self.deviceType];
  }
  [self.resultsArray enumerateObjectsUsingBlock:^(PersonResult *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:4 value:element];
  }];
  [self.animalsArray enumerateObjectsUsingBlock:^(Animal *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:5 value:element];
  }];
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasName) {
    size_ += computeStringSize(1, self.name);
  }
  if (self.hasAge) {
    size_ += computeInt32Size(2, self.age);
  }
  if (self.hasDeviceType) {
    size_ += computeEnumSize(3, self.deviceType);
  }
  [self.resultsArray enumerateObjectsUsingBlock:^(PersonResult *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(4, element);
  }];
  [self.animalsArray enumerateObjectsUsingBlock:^(Animal *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(5, element);
  }];
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (Person*) parseFromData:(NSData*) data {
  return (Person*)[[[Person builder] mergeFromData:data] build];
}
+ (Person*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Person*)[[[Person builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Person*) parseFromInputStream:(NSInputStream*) input {
  return (Person*)[[[Person builder] mergeFromInputStream:input] build];
}
+ (Person*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Person*)[[[Person builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Person*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Person*)[[[Person builder] mergeFromCodedInputStream:input] build];
}
+ (Person*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Person*)[[[Person builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PersonBuilder*) builder {
  return [[PersonBuilder alloc] init];
}
+ (PersonBuilder*) builderWithPrototype:(Person*) prototype {
  return [[Person builder] mergeFrom:prototype];
}
- (PersonBuilder*) builder {
  return [Person builder];
}
- (PersonBuilder*) toBuilder {
  return [Person builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"name", self.name];
  }
  if (self.hasAge) {
    [output appendFormat:@"%@%@: %@\n", indent, @"age", [NSNumber numberWithInteger:self.age]];
  }
  if (self.hasDeviceType) {
    [output appendFormat:@"%@%@: %@\n", indent, @"deviceType", NSStringFromPersonDeviceType(self.deviceType)];
  }
  [self.resultsArray enumerateObjectsUsingBlock:^(PersonResult *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"results"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.animalsArray enumerateObjectsUsingBlock:^(Animal *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"animals"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasName) {
    [dictionary setObject: self.name forKey: @"name"];
  }
  if (self.hasAge) {
    [dictionary setObject: [NSNumber numberWithInteger:self.age] forKey: @"age"];
  }
  if (self.hasDeviceType) {
    [dictionary setObject: @(self.deviceType) forKey: @"deviceType"];
  }
  for (PersonResult* element in self.resultsArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"results"];
  }
  for (Animal* element in self.animalsArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"animals"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[Person class]]) {
    return NO;
  }
  Person *otherMessage = other;
  return
      self.hasName == otherMessage.hasName &&
      (!self.hasName || [self.name isEqual:otherMessage.name]) &&
      self.hasAge == otherMessage.hasAge &&
      (!self.hasAge || self.age == otherMessage.age) &&
      self.hasDeviceType == otherMessage.hasDeviceType &&
      (!self.hasDeviceType || self.deviceType == otherMessage.deviceType) &&
      [self.resultsArray isEqualToArray:otherMessage.resultsArray] &&
      [self.animalsArray isEqualToArray:otherMessage.animalsArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasName) {
    hashCode = hashCode * 31 + [self.name hash];
  }
  if (self.hasAge) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.age] hash];
  }
  if (self.hasDeviceType) {
    hashCode = hashCode * 31 + self.deviceType;
  }
  [self.resultsArray enumerateObjectsUsingBlock:^(PersonResult *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  [self.animalsArray enumerateObjectsUsingBlock:^(Animal *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

BOOL PersonDeviceTypeIsValidValue(PersonDeviceType value) {
  switch (value) {
    case PersonDeviceTypeIos:
    case PersonDeviceTypeAndroid:
    case PersonDeviceTypeWp:
      return YES;
    default:
      return NO;
  }
}
NSString *NSStringFromPersonDeviceType(PersonDeviceType value) {
  switch (value) {
    case PersonDeviceTypeIos:
      return @"PersonDeviceTypeIos";
    case PersonDeviceTypeAndroid:
      return @"PersonDeviceTypeAndroid";
    case PersonDeviceTypeWp:
      return @"PersonDeviceTypeWp";
    default:
      return nil;
  }
}

@interface PersonResult ()
@property (strong) NSString* url;
@property (strong) NSString* title;
@end

@implementation PersonResult

- (BOOL) hasUrl {
  return !!hasUrl_;
}
- (void) setHasUrl:(BOOL) _value_ {
  hasUrl_ = !!_value_;
}
@synthesize url;
- (BOOL) hasTitle {
  return !!hasTitle_;
}
- (void) setHasTitle:(BOOL) _value_ {
  hasTitle_ = !!_value_;
}
@synthesize title;
- (instancetype) init {
  if ((self = [super init])) {
    self.url = @"";
    self.title = @"";
  }
  return self;
}
static PersonResult* defaultPersonResultInstance = nil;
+ (void) initialize {
  if (self == [PersonResult class]) {
    defaultPersonResultInstance = [[PersonResult alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultPersonResultInstance;
}
- (instancetype) defaultInstance {
  return defaultPersonResultInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasUrl) {
    [output writeString:1 value:self.url];
  }
  if (self.hasTitle) {
    [output writeString:2 value:self.title];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasUrl) {
    size_ += computeStringSize(1, self.url);
  }
  if (self.hasTitle) {
    size_ += computeStringSize(2, self.title);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (PersonResult*) parseFromData:(NSData*) data {
  return (PersonResult*)[[[PersonResult builder] mergeFromData:data] build];
}
+ (PersonResult*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PersonResult*)[[[PersonResult builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (PersonResult*) parseFromInputStream:(NSInputStream*) input {
  return (PersonResult*)[[[PersonResult builder] mergeFromInputStream:input] build];
}
+ (PersonResult*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PersonResult*)[[[PersonResult builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PersonResult*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (PersonResult*)[[[PersonResult builder] mergeFromCodedInputStream:input] build];
}
+ (PersonResult*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PersonResult*)[[[PersonResult builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PersonResultBuilder*) builder {
  return [[PersonResultBuilder alloc] init];
}
+ (PersonResultBuilder*) builderWithPrototype:(PersonResult*) prototype {
  return [[PersonResult builder] mergeFrom:prototype];
}
- (PersonResultBuilder*) builder {
  return [PersonResult builder];
}
- (PersonResultBuilder*) toBuilder {
  return [PersonResult builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasUrl) {
    [output appendFormat:@"%@%@: %@\n", indent, @"url", self.url];
  }
  if (self.hasTitle) {
    [output appendFormat:@"%@%@: %@\n", indent, @"title", self.title];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasUrl) {
    [dictionary setObject: self.url forKey: @"url"];
  }
  if (self.hasTitle) {
    [dictionary setObject: self.title forKey: @"title"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[PersonResult class]]) {
    return NO;
  }
  PersonResult *otherMessage = other;
  return
      self.hasUrl == otherMessage.hasUrl &&
      (!self.hasUrl || [self.url isEqual:otherMessage.url]) &&
      self.hasTitle == otherMessage.hasTitle &&
      (!self.hasTitle || [self.title isEqual:otherMessage.title]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasUrl) {
    hashCode = hashCode * 31 + [self.url hash];
  }
  if (self.hasTitle) {
    hashCode = hashCode * 31 + [self.title hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface PersonResultBuilder()
@property (strong) PersonResult* resultResult;
@end

@implementation PersonResultBuilder
@synthesize resultResult;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultResult = [[PersonResult alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultResult;
}
- (PersonResultBuilder*) clear {
  self.resultResult = [[PersonResult alloc] init];
  return self;
}
- (PersonResultBuilder*) clone {
  return [PersonResult builderWithPrototype:resultResult];
}
- (PersonResult*) defaultInstance {
  return [PersonResult defaultInstance];
}
- (PersonResult*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (PersonResult*) buildPartial {
  PersonResult* returnMe = resultResult;
  self.resultResult = nil;
  return returnMe;
}
- (PersonResultBuilder*) mergeFrom:(PersonResult*) other {
  if (other == [PersonResult defaultInstance]) {
    return self;
  }
  if (other.hasUrl) {
    [self setUrl:other.url];
  }
  if (other.hasTitle) {
    [self setTitle:other.title];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (PersonResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (PersonResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setUrl:[input readString]];
        break;
      }
      case 18: {
        [self setTitle:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasUrl {
  return resultResult.hasUrl;
}
- (NSString*) url {
  return resultResult.url;
}
- (PersonResultBuilder*) setUrl:(NSString*) value {
  resultResult.hasUrl = YES;
  resultResult.url = value;
  return self;
}
- (PersonResultBuilder*) clearUrl {
  resultResult.hasUrl = NO;
  resultResult.url = @"";
  return self;
}
- (BOOL) hasTitle {
  return resultResult.hasTitle;
}
- (NSString*) title {
  return resultResult.title;
}
- (PersonResultBuilder*) setTitle:(NSString*) value {
  resultResult.hasTitle = YES;
  resultResult.title = value;
  return self;
}
- (PersonResultBuilder*) clearTitle {
  resultResult.hasTitle = NO;
  resultResult.title = @"";
  return self;
}
@end

@interface PersonBuilder()
@property (strong) Person* resultPerson;
@end

@implementation PersonBuilder
@synthesize resultPerson;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultPerson = [[Person alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultPerson;
}
- (PersonBuilder*) clear {
  self.resultPerson = [[Person alloc] init];
  return self;
}
- (PersonBuilder*) clone {
  return [Person builderWithPrototype:resultPerson];
}
- (Person*) defaultInstance {
  return [Person defaultInstance];
}
- (Person*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Person*) buildPartial {
  Person* returnMe = resultPerson;
  self.resultPerson = nil;
  return returnMe;
}
- (PersonBuilder*) mergeFrom:(Person*) other {
  if (other == [Person defaultInstance]) {
    return self;
  }
  if (other.hasName) {
    [self setName:other.name];
  }
  if (other.hasAge) {
    [self setAge:other.age];
  }
  if (other.hasDeviceType) {
    [self setDeviceType:other.deviceType];
  }
  if (other.resultsArray.count > 0) {
    if (resultPerson.resultsArray == nil) {
      resultPerson.resultsArray = [[NSMutableArray alloc] initWithArray:other.resultsArray];
    } else {
      [resultPerson.resultsArray addObjectsFromArray:other.resultsArray];
    }
  }
  if (other.animalsArray.count > 0) {
    if (resultPerson.animalsArray == nil) {
      resultPerson.animalsArray = [[NSMutableArray alloc] initWithArray:other.animalsArray];
    } else {
      [resultPerson.animalsArray addObjectsFromArray:other.animalsArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (PersonBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (PersonBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setName:[input readString]];
        break;
      }
      case 16: {
        [self setAge:[input readInt32]];
        break;
      }
      case 24: {
        PersonDeviceType value = (PersonDeviceType)[input readEnum];
        if (PersonDeviceTypeIsValidValue(value)) {
          [self setDeviceType:value];
        } else {
          [unknownFields mergeVarintField:3 value:value];
        }
        break;
      }
      case 34: {
        PersonResultBuilder* subBuilder = [PersonResult builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addResults:[subBuilder buildPartial]];
        break;
      }
      case 42: {
        AnimalBuilder* subBuilder = [Animal builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addAnimals:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasName {
  return resultPerson.hasName;
}
- (NSString*) name {
  return resultPerson.name;
}
- (PersonBuilder*) setName:(NSString*) value {
  resultPerson.hasName = YES;
  resultPerson.name = value;
  return self;
}
- (PersonBuilder*) clearName {
  resultPerson.hasName = NO;
  resultPerson.name = @"";
  return self;
}
- (BOOL) hasAge {
  return resultPerson.hasAge;
}
- (SInt32) age {
  return resultPerson.age;
}
- (PersonBuilder*) setAge:(SInt32) value {
  resultPerson.hasAge = YES;
  resultPerson.age = value;
  return self;
}
- (PersonBuilder*) clearAge {
  resultPerson.hasAge = NO;
  resultPerson.age = 0;
  return self;
}
- (BOOL) hasDeviceType {
  return resultPerson.hasDeviceType;
}
- (PersonDeviceType) deviceType {
  return resultPerson.deviceType;
}
- (PersonBuilder*) setDeviceType:(PersonDeviceType) value {
  resultPerson.hasDeviceType = YES;
  resultPerson.deviceType = value;
  return self;
}
- (PersonBuilder*) clearDeviceType {
  resultPerson.hasDeviceType = NO;
  resultPerson.deviceType = PersonDeviceTypeIos;
  return self;
}
- (NSMutableArray<PersonResult*> *)results {
  return resultPerson.resultsArray;
}
- (PersonResult*)resultsAtIndex:(NSUInteger)index {
  return [resultPerson resultsAtIndex:index];
}
- (PersonBuilder *)addResults:(PersonResult*)value {
  if (resultPerson.resultsArray == nil) {
    resultPerson.resultsArray = [[NSMutableArray alloc]init];
  }
  [resultPerson.resultsArray addObject:value];
  return self;
}
- (PersonBuilder *)setResultsArray:(NSArray<PersonResult*> *)array {
  resultPerson.resultsArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (PersonBuilder *)clearResults {
  resultPerson.resultsArray = nil;
  return self;
}
- (NSMutableArray<Animal*> *)animals {
  return resultPerson.animalsArray;
}
- (Animal*)animalsAtIndex:(NSUInteger)index {
  return [resultPerson animalsAtIndex:index];
}
- (PersonBuilder *)addAnimals:(Animal*)value {
  if (resultPerson.animalsArray == nil) {
    resultPerson.animalsArray = [[NSMutableArray alloc]init];
  }
  [resultPerson.animalsArray addObject:value];
  return self;
}
- (PersonBuilder *)setAnimalsArray:(NSArray<Animal*> *)array {
  resultPerson.animalsArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (PersonBuilder *)clearAnimals {
  resultPerson.animalsArray = nil;
  return self;
}
@end

@interface Animal ()
@property Float32 weight;
@property Float64 price;
@property (strong) NSString* namme;
@end

@implementation Animal

- (BOOL) hasWeight {
  return !!hasWeight_;
}
- (void) setHasWeight:(BOOL) _value_ {
  hasWeight_ = !!_value_;
}
@synthesize weight;
- (BOOL) hasPrice {
  return !!hasPrice_;
}
- (void) setHasPrice:(BOOL) _value_ {
  hasPrice_ = !!_value_;
}
@synthesize price;
- (BOOL) hasNamme {
  return !!hasNamme_;
}
- (void) setHasNamme:(BOOL) _value_ {
  hasNamme_ = !!_value_;
}
@synthesize namme;
- (instancetype) init {
  if ((self = [super init])) {
    self.weight = 0;
    self.price = 0;
    self.namme = @"";
  }
  return self;
}
static Animal* defaultAnimalInstance = nil;
+ (void) initialize {
  if (self == [Animal class]) {
    defaultAnimalInstance = [[Animal alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultAnimalInstance;
}
- (instancetype) defaultInstance {
  return defaultAnimalInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasWeight) {
    [output writeFloat:1 value:self.weight];
  }
  if (self.hasPrice) {
    [output writeDouble:2 value:self.price];
  }
  if (self.hasNamme) {
    [output writeString:3 value:self.namme];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasWeight) {
    size_ += computeFloatSize(1, self.weight);
  }
  if (self.hasPrice) {
    size_ += computeDoubleSize(2, self.price);
  }
  if (self.hasNamme) {
    size_ += computeStringSize(3, self.namme);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (Animal*) parseFromData:(NSData*) data {
  return (Animal*)[[[Animal builder] mergeFromData:data] build];
}
+ (Animal*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Animal*)[[[Animal builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Animal*) parseFromInputStream:(NSInputStream*) input {
  return (Animal*)[[[Animal builder] mergeFromInputStream:input] build];
}
+ (Animal*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Animal*)[[[Animal builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Animal*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Animal*)[[[Animal builder] mergeFromCodedInputStream:input] build];
}
+ (Animal*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Animal*)[[[Animal builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (AnimalBuilder*) builder {
  return [[AnimalBuilder alloc] init];
}
+ (AnimalBuilder*) builderWithPrototype:(Animal*) prototype {
  return [[Animal builder] mergeFrom:prototype];
}
- (AnimalBuilder*) builder {
  return [Animal builder];
}
- (AnimalBuilder*) toBuilder {
  return [Animal builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasWeight) {
    [output appendFormat:@"%@%@: %@\n", indent, @"weight", [NSNumber numberWithFloat:self.weight]];
  }
  if (self.hasPrice) {
    [output appendFormat:@"%@%@: %@\n", indent, @"price", [NSNumber numberWithDouble:self.price]];
  }
  if (self.hasNamme) {
    [output appendFormat:@"%@%@: %@\n", indent, @"namme", self.namme];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasWeight) {
    [dictionary setObject: [NSNumber numberWithFloat:self.weight] forKey: @"weight"];
  }
  if (self.hasPrice) {
    [dictionary setObject: [NSNumber numberWithDouble:self.price] forKey: @"price"];
  }
  if (self.hasNamme) {
    [dictionary setObject: self.namme forKey: @"namme"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[Animal class]]) {
    return NO;
  }
  Animal *otherMessage = other;
  return
      self.hasWeight == otherMessage.hasWeight &&
      (!self.hasWeight || self.weight == otherMessage.weight) &&
      self.hasPrice == otherMessage.hasPrice &&
      (!self.hasPrice || self.price == otherMessage.price) &&
      self.hasNamme == otherMessage.hasNamme &&
      (!self.hasNamme || [self.namme isEqual:otherMessage.namme]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasWeight) {
    hashCode = hashCode * 31 + [[NSNumber numberWithFloat:self.weight] hash];
  }
  if (self.hasPrice) {
    hashCode = hashCode * 31 + [[NSNumber numberWithDouble:self.price] hash];
  }
  if (self.hasNamme) {
    hashCode = hashCode * 31 + [self.namme hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface AnimalBuilder()
@property (strong) Animal* resultAnimal;
@end

@implementation AnimalBuilder
@synthesize resultAnimal;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultAnimal = [[Animal alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultAnimal;
}
- (AnimalBuilder*) clear {
  self.resultAnimal = [[Animal alloc] init];
  return self;
}
- (AnimalBuilder*) clone {
  return [Animal builderWithPrototype:resultAnimal];
}
- (Animal*) defaultInstance {
  return [Animal defaultInstance];
}
- (Animal*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Animal*) buildPartial {
  Animal* returnMe = resultAnimal;
  self.resultAnimal = nil;
  return returnMe;
}
- (AnimalBuilder*) mergeFrom:(Animal*) other {
  if (other == [Animal defaultInstance]) {
    return self;
  }
  if (other.hasWeight) {
    [self setWeight:other.weight];
  }
  if (other.hasPrice) {
    [self setPrice:other.price];
  }
  if (other.hasNamme) {
    [self setNamme:other.namme];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (AnimalBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (AnimalBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 13: {
        [self setWeight:[input readFloat]];
        break;
      }
      case 17: {
        [self setPrice:[input readDouble]];
        break;
      }
      case 26: {
        [self setNamme:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasWeight {
  return resultAnimal.hasWeight;
}
- (Float32) weight {
  return resultAnimal.weight;
}
- (AnimalBuilder*) setWeight:(Float32) value {
  resultAnimal.hasWeight = YES;
  resultAnimal.weight = value;
  return self;
}
- (AnimalBuilder*) clearWeight {
  resultAnimal.hasWeight = NO;
  resultAnimal.weight = 0;
  return self;
}
- (BOOL) hasPrice {
  return resultAnimal.hasPrice;
}
- (Float64) price {
  return resultAnimal.price;
}
- (AnimalBuilder*) setPrice:(Float64) value {
  resultAnimal.hasPrice = YES;
  resultAnimal.price = value;
  return self;
}
- (AnimalBuilder*) clearPrice {
  resultAnimal.hasPrice = NO;
  resultAnimal.price = 0;
  return self;
}
- (BOOL) hasNamme {
  return resultAnimal.hasNamme;
}
- (NSString*) namme {
  return resultAnimal.namme;
}
- (AnimalBuilder*) setNamme:(NSString*) value {
  resultAnimal.hasNamme = YES;
  resultAnimal.namme = value;
  return self;
}
- (AnimalBuilder*) clearNamme {
  resultAnimal.hasNamme = NO;
  resultAnimal.namme = @"";
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
