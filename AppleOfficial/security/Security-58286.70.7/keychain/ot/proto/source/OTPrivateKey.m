// This file was automatically generated by protocompiler
// DO NOT EDIT!
// Compiled from OTPrivateKey.proto

#import "OTPrivateKey.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled; turn on ARC, or use 'objc_use_arc' option to generate non-ARC code.
#endif

@implementation OTPrivateKey

@synthesize keyType = _keyType;
- (NSString *)keyTypeAsString:(OTPrivateKey_KeyType)value
{
    return OTPrivateKey_KeyTypeAsString(value);
}
- (OTPrivateKey_KeyType)StringAsKeyType:(NSString *)str
{
    return StringAsOTPrivateKey_KeyType(str);
}
@synthesize keyData = _keyData;

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:OTPrivateKey_KeyTypeAsString(self->_keyType) forKey:@"keyType"];
    if (self->_keyData)
    {
        [dict setObject:self->_keyData forKey:@"keyData"];
    }
    return dict;
}

BOOL OTPrivateKeyReadFrom(__unsafe_unretained OTPrivateKey *self, __unsafe_unretained PBDataReader *reader) {
    while (PBReaderHasMoreData(reader)) {
        uint32_t tag = 0;
        uint8_t aType = 0;

        PBReaderReadTag32AndType(reader, &tag, &aType);

        if (PBReaderHasError(reader))
            break;

        if (aType == TYPE_END_GROUP) {
            break;
        }

        switch (tag) {

            case 1 /* keyType */:
            {
                self->_keyType = PBReaderReadInt32(reader);
            }
            break;
            case 2 /* keyData */:
            {
                NSData *new_keyData = PBReaderReadData(reader);
                self->_keyData = new_keyData;
            }
            break;
            default:
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    return NO;
                break;
        }
    }
    return !PBReaderHasError(reader);
}

- (BOOL)readFrom:(PBDataReader *)reader
{
    return OTPrivateKeyReadFrom(self, reader);
}
- (void)writeTo:(PBDataWriter *)writer
{
    /* keyType */
    {
        PBDataWriterWriteInt32Field(writer, self->_keyType, 1);
    }
    /* keyData */
    {
        assert(nil != self->_keyData);
        PBDataWriterWriteDataField(writer, self->_keyData, 2);
    }
}

- (void)copyTo:(OTPrivateKey *)other
{
    other->_keyType = _keyType;
    other.keyData = _keyData;
}

- (id)copyWithZone:(NSZone *)zone
{
    OTPrivateKey *copy = [[[self class] allocWithZone:zone] init];
    copy->_keyType = _keyType;
    copy->_keyData = [_keyData copyWithZone:zone];
    return copy;
}

- (BOOL)isEqual:(id)object
{
    OTPrivateKey *other = (OTPrivateKey *)object;
    return [other isMemberOfClass:[self class]]
    &&
    self->_keyType == other->_keyType
    &&
    ((!self->_keyData && !other->_keyData) || [self->_keyData isEqual:other->_keyData])
    ;
}

- (NSUInteger)hash
{
    return 0
    ^
    PBHashInt((NSUInteger)_keyType)
    ^
    [self->_keyData hash]
    ;
}

- (void)mergeFrom:(OTPrivateKey *)other
{
    self->_keyType = other->_keyType;
    if (other->_keyData)
    {
        [self setKeyData:other->_keyData];
    }
}

@end

