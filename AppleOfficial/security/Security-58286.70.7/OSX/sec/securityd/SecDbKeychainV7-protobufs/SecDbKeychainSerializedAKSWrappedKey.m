// This file was automatically generated by protocompiler
// DO NOT EDIT!
// Compiled from foo.proto

#import "SecDbKeychainSerializedAKSWrappedKey.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled; turn on ARC, or use 'objc_use_arc' option to generate non-ARC code.
#endif

@implementation SecDbKeychainSerializedAKSWrappedKey

@synthesize wrappedKey = _wrappedKey;
- (BOOL)hasRefKeyBlob
{
    return _refKeyBlob != nil;
}
@synthesize refKeyBlob = _refKeyBlob;
@synthesize type = _type;

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (self->_wrappedKey)
    {
        [dict setObject:self->_wrappedKey forKey:@"wrappedKey"];
    }
    if (self->_refKeyBlob)
    {
        [dict setObject:self->_refKeyBlob forKey:@"refKeyBlob"];
    }
    [dict setObject:[NSNumber numberWithUnsignedInt:self->_type] forKey:@"type"];
    return dict;
}

BOOL SecDbKeychainSerializedAKSWrappedKeyReadFrom(__unsafe_unretained SecDbKeychainSerializedAKSWrappedKey *self, __unsafe_unretained PBDataReader *reader) {
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

            case 1 /* wrappedKey */:
            {
                NSData *new_wrappedKey = PBReaderReadData(reader);
                self->_wrappedKey = new_wrappedKey;
            }
                break;
            case 2 /* refKeyBlob */:
            {
                NSData *new_refKeyBlob = PBReaderReadData(reader);
                self->_refKeyBlob = new_refKeyBlob;
            }
                break;
            case 3 /* type */:
            {
                self->_type = PBReaderReadUint32(reader);
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
    return SecDbKeychainSerializedAKSWrappedKeyReadFrom(self, reader);
}
- (void)writeTo:(PBDataWriter *)writer
{
    /* wrappedKey */
    {
        assert(nil != self->_wrappedKey);
        PBDataWriterWriteDataField(writer, self->_wrappedKey, 1);
    }
    /* refKeyBlob */
    {
        if (self->_refKeyBlob)
        {
            PBDataWriterWriteDataField(writer, self->_refKeyBlob, 2);
        }
    }
    /* type */
    {
        PBDataWriterWriteUint32Field(writer, self->_type, 3);
    }
}

- (void)copyTo:(SecDbKeychainSerializedAKSWrappedKey *)other
{
    other.wrappedKey = _wrappedKey;
    if (_refKeyBlob)
    {
        other.refKeyBlob = _refKeyBlob;
    }
    other->_type = _type;
}

- (id)copyWithZone:(NSZone *)zone
{
    SecDbKeychainSerializedAKSWrappedKey *copy = [[[self class] allocWithZone:zone] init];
    copy->_wrappedKey = [_wrappedKey copyWithZone:zone];
    copy->_refKeyBlob = [_refKeyBlob copyWithZone:zone];
    copy->_type = _type;
    return copy;
}

- (BOOL)isEqual:(id)object
{
    SecDbKeychainSerializedAKSWrappedKey *other = (SecDbKeychainSerializedAKSWrappedKey *)object;
    return [other isMemberOfClass:[self class]]
    &&
    ((!self->_wrappedKey && !other->_wrappedKey) || [self->_wrappedKey isEqual:other->_wrappedKey])
    &&
    ((!self->_refKeyBlob && !other->_refKeyBlob) || [self->_refKeyBlob isEqual:other->_refKeyBlob])
    &&
    self->_type == other->_type
    ;
}

- (NSUInteger)hash
{
    return 0
    ^
    [self->_wrappedKey hash]
    ^
    [self->_refKeyBlob hash]
    ^
    PBHashInt((NSUInteger)_type)
    ;
}

- (void)mergeFrom:(SecDbKeychainSerializedAKSWrappedKey *)other
{
    if (other->_wrappedKey)
    {
        [self setWrappedKey:other->_wrappedKey];
    }
    if (other->_refKeyBlob)
    {
        [self setRefKeyBlob:other->_refKeyBlob];
    }
    self->_type = other->_type;
}

@end

