{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.HeadObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The HEAD operation retrieves metadata from an object without returning the object itself. This operation is useful if you're only interested in an object's metadata. To use HEAD, you must have READ access to the object.
--
--
-- A @HEAD@ request has the same options as a @GET@ operation on an object. The response is identical to the @GET@ response except that there is no response body. Because of this, if the @HEAD@ request generates an error, it returns a generic @404 Not Found@ or @403 Forbidden@ code. It is not possible to retrieve the exact exception beyond these error codes.
--
-- If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the metadata from the object, you must use the following headers:
--
--     * x-amz-server-side-encryption-customer-algorithm
--
--     * x-amz-server-side-encryption-customer-key
--
--     * x-amz-server-side-encryption-customer-key-MD5
--
--
--
-- For more information about SSE-C, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html Server-Side Encryption (Using Customer-Provided Encryption Keys)> .
--
-- Request headers are limited to 8 KB in size. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html Common Request Headers> .
--
-- Consider the following when using request headers:
--
--     * Consideration 1 – If both of the @If-Match@ and @If-Unmodified-Since@ headers are present in the request as follows:
--
--     * @If-Match@ condition evaluates to @true@ , and;
--
--     * @If-Unmodified-Since@ condition evaluates to @false@ ;
--
--
--
-- Then Amazon S3 returns @200 OK@ and the data requested.
--
--     * Consideration 2 – If both of the @If-None-Match@ and @If-Modified-Since@ headers are present in the request as follows:
--
--     * @If-None-Match@ condition evaluates to @false@ , and;
--
--     * @If-Modified-Since@ condition evaluates to @true@ ;
--
--
--
-- Then Amazon S3 returns the @304 Not Modified@ response code.
--
--
--
-- For more information about conditional requests, see <https://tools.ietf.org/html/rfc7232 RFC 7232> .
--
-- __Permissions__
--
-- You need the @s3:GetObject@ permission for this operation. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html Specifying Permissions in a Policy> . If the object you request does not exist, the error Amazon S3 returns depends on whether you also have the s3:ListBucket permission.
--
--     * If you have the @s3:ListBucket@ permission on the bucket, Amazon S3 returns an HTTP status code 404 ("no such key") error.
--
--     * If you don’t have the @s3:ListBucket@ permission, Amazon S3 returns an HTTP status code 403 ("access denied") error.
--
--
--
-- The following operation is related to @HeadObject@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html GetObject>
module Network.AWS.S3.HeadObject
  ( -- * Creating a Request
    headObject,
    HeadObject,

    -- * Request Lenses
    hoIfUnmodifiedSince,
    hoRange,
    hoIfModifiedSince,
    hoExpectedBucketOwner,
    hoSSECustomerKeyMD5,
    hoVersionId,
    hoIfMatch,
    hoPartNumber,
    hoIfNoneMatch,
    hoSSECustomerAlgorithm,
    hoRequestPayer,
    hoSSECustomerKey,
    hoBucket,
    hoKey,

    -- * Destructuring the Response
    headObjectResponse,
    HeadObjectResponse,

    -- * Response Lenses
    horrsETag,
    horrsRequestCharged,
    horrsPartsCount,
    horrsWebsiteRedirectLocation,
    horrsContentType,
    horrsContentDisposition,
    horrsArchiveStatus,
    horrsDeleteMarker,
    horrsExpiration,
    horrsContentLanguage,
    horrsReplicationStatus,
    horrsMetadata,
    horrsContentLength,
    horrsContentEncoding,
    horrsSSEKMSKeyId,
    horrsSSECustomerKeyMD5,
    horrsStorageClass,
    horrsVersionId,
    horrsAcceptRanges,
    horrsBucketKeyEnabled,
    horrsServerSideEncryption,
    horrsMissingMeta,
    horrsObjectLockLegalHoldStatus,
    horrsSSECustomerAlgorithm,
    horrsLastModified,
    horrsCacheControl,
    horrsExpires,
    horrsRestore,
    horrsObjectLockMode,
    horrsObjectLockRetainUntilDate,
    horrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'headObject' smart constructor.
data HeadObject = HeadObject'
  { _hoIfUnmodifiedSince ::
      !(Maybe ISO8601),
    _hoRange :: !(Maybe Text),
    _hoIfModifiedSince :: !(Maybe ISO8601),
    _hoExpectedBucketOwner :: !(Maybe Text),
    _hoSSECustomerKeyMD5 :: !(Maybe Text),
    _hoVersionId :: !(Maybe ObjectVersionId),
    _hoIfMatch :: !(Maybe Text),
    _hoPartNumber :: !(Maybe Int),
    _hoIfNoneMatch :: !(Maybe Text),
    _hoSSECustomerAlgorithm :: !(Maybe Text),
    _hoRequestPayer :: !(Maybe RequestPayer),
    _hoSSECustomerKey :: !(Maybe (Sensitive Text)),
    _hoBucket :: !BucketName,
    _hoKey :: !ObjectKey
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HeadObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hoIfUnmodifiedSince' - Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).
--
-- * 'hoRange' - Downloads the specified range bytes of an object. For more information about the HTTP Range header, see <http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35 http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35> .
--
-- * 'hoIfModifiedSince' - Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).
--
-- * 'hoExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'hoSSECustomerKeyMD5' - Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
--
-- * 'hoVersionId' - VersionId used to reference a specific version of the object.
--
-- * 'hoIfMatch' - Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).
--
-- * 'hoPartNumber' - Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about the size of the part and the number of parts in this object.
--
-- * 'hoIfNoneMatch' - Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).
--
-- * 'hoSSECustomerAlgorithm' - Specifies the algorithm to use to when encrypting the object (for example, AES256).
--
-- * 'hoRequestPayer' - Undocumented member.
--
-- * 'hoSSECustomerKey' - Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the @x-amz-server-side-encryption-customer-algorithm@ header.
--
-- * 'hoBucket' - The name of the bucket containing the object. When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'hoKey' - The object key.
headObject ::
  -- | 'hoBucket'
  BucketName ->
  -- | 'hoKey'
  ObjectKey ->
  HeadObject
headObject pBucket_ pKey_ =
  HeadObject'
    { _hoIfUnmodifiedSince = Nothing,
      _hoRange = Nothing,
      _hoIfModifiedSince = Nothing,
      _hoExpectedBucketOwner = Nothing,
      _hoSSECustomerKeyMD5 = Nothing,
      _hoVersionId = Nothing,
      _hoIfMatch = Nothing,
      _hoPartNumber = Nothing,
      _hoIfNoneMatch = Nothing,
      _hoSSECustomerAlgorithm = Nothing,
      _hoRequestPayer = Nothing,
      _hoSSECustomerKey = Nothing,
      _hoBucket = pBucket_,
      _hoKey = pKey_
    }

-- | Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).
hoIfUnmodifiedSince :: Lens' HeadObject (Maybe UTCTime)
hoIfUnmodifiedSince = lens _hoIfUnmodifiedSince (\s a -> s {_hoIfUnmodifiedSince = a}) . mapping _Time

-- | Downloads the specified range bytes of an object. For more information about the HTTP Range header, see <http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35 http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35> .
hoRange :: Lens' HeadObject (Maybe Text)
hoRange = lens _hoRange (\s a -> s {_hoRange = a})

-- | Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).
hoIfModifiedSince :: Lens' HeadObject (Maybe UTCTime)
hoIfModifiedSince = lens _hoIfModifiedSince (\s a -> s {_hoIfModifiedSince = a}) . mapping _Time

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
hoExpectedBucketOwner :: Lens' HeadObject (Maybe Text)
hoExpectedBucketOwner = lens _hoExpectedBucketOwner (\s a -> s {_hoExpectedBucketOwner = a})

-- | Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
hoSSECustomerKeyMD5 :: Lens' HeadObject (Maybe Text)
hoSSECustomerKeyMD5 = lens _hoSSECustomerKeyMD5 (\s a -> s {_hoSSECustomerKeyMD5 = a})

-- | VersionId used to reference a specific version of the object.
hoVersionId :: Lens' HeadObject (Maybe ObjectVersionId)
hoVersionId = lens _hoVersionId (\s a -> s {_hoVersionId = a})

-- | Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).
hoIfMatch :: Lens' HeadObject (Maybe Text)
hoIfMatch = lens _hoIfMatch (\s a -> s {_hoIfMatch = a})

-- | Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about the size of the part and the number of parts in this object.
hoPartNumber :: Lens' HeadObject (Maybe Int)
hoPartNumber = lens _hoPartNumber (\s a -> s {_hoPartNumber = a})

-- | Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).
hoIfNoneMatch :: Lens' HeadObject (Maybe Text)
hoIfNoneMatch = lens _hoIfNoneMatch (\s a -> s {_hoIfNoneMatch = a})

-- | Specifies the algorithm to use to when encrypting the object (for example, AES256).
hoSSECustomerAlgorithm :: Lens' HeadObject (Maybe Text)
hoSSECustomerAlgorithm = lens _hoSSECustomerAlgorithm (\s a -> s {_hoSSECustomerAlgorithm = a})

-- | Undocumented member.
hoRequestPayer :: Lens' HeadObject (Maybe RequestPayer)
hoRequestPayer = lens _hoRequestPayer (\s a -> s {_hoRequestPayer = a})

-- | Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the @x-amz-server-side-encryption-customer-algorithm@ header.
hoSSECustomerKey :: Lens' HeadObject (Maybe Text)
hoSSECustomerKey = lens _hoSSECustomerKey (\s a -> s {_hoSSECustomerKey = a}) . mapping _Sensitive

-- | The name of the bucket containing the object. When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
hoBucket :: Lens' HeadObject BucketName
hoBucket = lens _hoBucket (\s a -> s {_hoBucket = a})

-- | The object key.
hoKey :: Lens' HeadObject ObjectKey
hoKey = lens _hoKey (\s a -> s {_hoKey = a})

instance AWSRequest HeadObject where
  type Rs HeadObject = HeadObjectResponse
  request = head' s3
  response =
    receiveEmpty
      ( \s h x ->
          HeadObjectResponse'
            <$> (h .#? "ETag")
            <*> (h .#? "x-amz-request-charged")
            <*> (h .#? "x-amz-mp-parts-count")
            <*> (h .#? "x-amz-website-redirect-location")
            <*> (h .#? "Content-Type")
            <*> (h .#? "Content-Disposition")
            <*> (h .#? "x-amz-archive-status")
            <*> (h .#? "x-amz-delete-marker")
            <*> (h .#? "x-amz-expiration")
            <*> (h .#? "Content-Language")
            <*> (h .#? "x-amz-replication-status")
            <*> (parseHeadersMap "x-amz-meta-" h)
            <*> (h .#? "Content-Length")
            <*> (h .#? "Content-Encoding")
            <*> (h .#? "x-amz-server-side-encryption-aws-kms-key-id")
            <*> ( h
                    .#? "x-amz-server-side-encryption-customer-key-MD5"
                )
            <*> (h .#? "x-amz-storage-class")
            <*> (h .#? "x-amz-version-id")
            <*> (h .#? "accept-ranges")
            <*> ( h
                    .#? "x-amz-server-side-encryption-bucket-key-enabled"
                )
            <*> (h .#? "x-amz-server-side-encryption")
            <*> (h .#? "x-amz-missing-meta")
            <*> (h .#? "x-amz-object-lock-legal-hold")
            <*> ( h
                    .#? "x-amz-server-side-encryption-customer-algorithm"
                )
            <*> (h .#? "Last-Modified")
            <*> (h .#? "Cache-Control")
            <*> (h .#? "Expires")
            <*> (h .#? "x-amz-restore")
            <*> (h .#? "x-amz-object-lock-mode")
            <*> (h .#? "x-amz-object-lock-retain-until-date")
            <*> (pure (fromEnum s))
      )

instance Hashable HeadObject

instance NFData HeadObject

instance ToHeaders HeadObject where
  toHeaders HeadObject' {..} =
    mconcat
      [ "If-Unmodified-Since" =# _hoIfUnmodifiedSince,
        "Range" =# _hoRange,
        "If-Modified-Since" =# _hoIfModifiedSince,
        "x-amz-expected-bucket-owner"
          =# _hoExpectedBucketOwner,
        "x-amz-server-side-encryption-customer-key-MD5"
          =# _hoSSECustomerKeyMD5,
        "If-Match" =# _hoIfMatch,
        "If-None-Match" =# _hoIfNoneMatch,
        "x-amz-server-side-encryption-customer-algorithm"
          =# _hoSSECustomerAlgorithm,
        "x-amz-request-payer" =# _hoRequestPayer,
        "x-amz-server-side-encryption-customer-key"
          =# _hoSSECustomerKey
      ]

instance ToPath HeadObject where
  toPath HeadObject' {..} =
    mconcat ["/", toBS _hoBucket, "/", toBS _hoKey]

instance ToQuery HeadObject where
  toQuery HeadObject' {..} =
    mconcat
      [ "versionId" =: _hoVersionId,
        "partNumber" =: _hoPartNumber
      ]

-- | /See:/ 'headObjectResponse' smart constructor.
data HeadObjectResponse = HeadObjectResponse'
  { _horrsETag ::
      !(Maybe ETag),
    _horrsRequestCharged ::
      !(Maybe RequestCharged),
    _horrsPartsCount :: !(Maybe Int),
    _horrsWebsiteRedirectLocation ::
      !(Maybe Text),
    _horrsContentType ::
      !(Maybe Text),
    _horrsContentDisposition ::
      !(Maybe Text),
    _horrsArchiveStatus ::
      !(Maybe ArchiveStatus),
    _horrsDeleteMarker ::
      !(Maybe Bool),
    _horrsExpiration :: !(Maybe Text),
    _horrsContentLanguage ::
      !(Maybe Text),
    _horrsReplicationStatus ::
      !(Maybe ReplicationStatus),
    _horrsMetadata ::
      !(Map Text Text),
    _horrsContentLength ::
      !(Maybe Integer),
    _horrsContentEncoding ::
      !(Maybe Text),
    _horrsSSEKMSKeyId ::
      !(Maybe (Sensitive Text)),
    _horrsSSECustomerKeyMD5 ::
      !(Maybe Text),
    _horrsStorageClass ::
      !(Maybe StorageClass),
    _horrsVersionId ::
      !(Maybe ObjectVersionId),
    _horrsAcceptRanges ::
      !(Maybe Text),
    _horrsBucketKeyEnabled ::
      !(Maybe Bool),
    _horrsServerSideEncryption ::
      !(Maybe ServerSideEncryption),
    _horrsMissingMeta :: !(Maybe Int),
    _horrsObjectLockLegalHoldStatus ::
      !( Maybe
           ObjectLockLegalHoldStatus
       ),
    _horrsSSECustomerAlgorithm ::
      !(Maybe Text),
    _horrsLastModified ::
      !(Maybe ISO8601),
    _horrsCacheControl ::
      !(Maybe Text),
    _horrsExpires :: !(Maybe ISO8601),
    _horrsRestore :: !(Maybe Text),
    _horrsObjectLockMode ::
      !(Maybe ObjectLockMode),
    _horrsObjectLockRetainUntilDate ::
      !(Maybe ISO8601),
    _horrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HeadObjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'horrsETag' - An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
--
-- * 'horrsRequestCharged' - Undocumented member.
--
-- * 'horrsPartsCount' - The count of parts this object has.
--
-- * 'horrsWebsiteRedirectLocation' - If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
--
-- * 'horrsContentType' - A standard MIME type describing the format of the object data.
--
-- * 'horrsContentDisposition' - Specifies presentational information for the object.
--
-- * 'horrsArchiveStatus' - The archive state of the head object.
--
-- * 'horrsDeleteMarker' - Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
--
-- * 'horrsExpiration' - If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key-value pairs providing object expiration information. The value of the rule-id is URL encoded.
--
-- * 'horrsContentLanguage' - The language the content is in.
--
-- * 'horrsReplicationStatus' - Amazon S3 can return this header if your request involves a bucket that is either a source or a destination in a replication rule. In replication, you have a source bucket on which you configure replication and destination bucket or buckets where Amazon S3 stores object replicas. When you request an object (@GetObject@ ) or object metadata (@HeadObject@ ) from these buckets, Amazon S3 will return the @x-amz-replication-status@ header in the response as follows:     * If requesting an object from the source bucket — Amazon S3 will return the @x-amz-replication-status@ header if the object in your request is eligible for replication. For example, suppose that in your replication configuration, you specify object prefix @TaxDocs@ requesting Amazon S3 to replicate objects with key prefix @TaxDocs@ . Any objects you upload with this key name prefix, for example @TaxDocs/document1.pdf@ , are eligible for replication. For any object request with this key name prefix, Amazon S3 will return the @x-amz-replication-status@ header with value PENDING, COMPLETED or FAILED indicating object replication status.     * If requesting an object from a destination bucket — Amazon S3 will return the @x-amz-replication-status@ header with value REPLICA if the object in your request is a replica that Amazon S3 created and there is no replica modification replication in progress.     * When replicating objects to multiple destination buckets the @x-amz-replication-status@ header acts differently. The header of the source object will only return a value of COMPLETED when replication is successful to all destinations. The header will remain at value PENDING until replication has completed for all destinations. If one or more destinations fails replication the header will return FAILED.  For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html Replication> .
--
-- * 'horrsMetadata' - A map of metadata to store with the object in S3.
--
-- * 'horrsContentLength' - Size of the body in bytes.
--
-- * 'horrsContentEncoding' - Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
--
-- * 'horrsSSEKMSKeyId' - If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for the object.
--
-- * 'horrsSSECustomerKeyMD5' - If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
--
-- * 'horrsStorageClass' - Provides storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html Storage Classes> .
--
-- * 'horrsVersionId' - Version of the object.
--
-- * 'horrsAcceptRanges' - Indicates that a range of bytes was specified.
--
-- * 'horrsBucketKeyEnabled' - Indicates whether the object uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).
--
-- * 'horrsServerSideEncryption' - If the object is stored using server-side encryption either with an AWS KMS customer master key (CMK) or an Amazon S3-managed encryption key, the response includes this header with the value of the server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
--
-- * 'horrsMissingMeta' - This is set to the number of metadata entries not returned in @x-amz-meta@ headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
--
-- * 'horrsObjectLockLegalHoldStatus' - Specifies whether a legal hold is in effect for this object. This header is only returned if the requester has the @s3:GetObjectLegalHold@ permission. This header is not returned if the specified version of this object has never had a legal hold applied. For more information about S3 Object Lock, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html Object Lock> .
--
-- * 'horrsSSECustomerAlgorithm' - If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
--
-- * 'horrsLastModified' - Creation date of the object.
--
-- * 'horrsCacheControl' - Specifies caching behavior along the request/reply chain.
--
-- * 'horrsExpires' - The date and time at which the object is no longer cacheable.
--
-- * 'horrsRestore' - If the object is an archived object (an object whose storage class is GLACIER), the response includes this header if either the archive restoration is in progress (see <https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html RestoreObject> or an archive copy is already restored. If an archive copy is already restored, the header value indicates when Amazon S3 is scheduled to delete the object copy. For example: @x-amz-restore: ongoing-request="false", expiry-date="Fri, 23 Dec 2012 00:00:00 GMT"@  If the object restoration is in progress, the header returns the value @ongoing-request="true"@ . For more information about archiving objects, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-transition-general-considerations Transitioning Objects: General Considerations> .
--
-- * 'horrsObjectLockMode' - The Object Lock mode, if any, that's in effect for this object. This header is only returned if the requester has the @s3:GetObjectRetention@ permission. For more information about S3 Object Lock, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html Object Lock> .
--
-- * 'horrsObjectLockRetainUntilDate' - The date and time when the Object Lock retention period expires. This header is only returned if the requester has the @s3:GetObjectRetention@ permission.
--
-- * 'horrsResponseStatus' - -- | The response status code.
headObjectResponse ::
  -- | 'horrsResponseStatus'
  Int ->
  HeadObjectResponse
headObjectResponse pResponseStatus_ =
  HeadObjectResponse'
    { _horrsETag = Nothing,
      _horrsRequestCharged = Nothing,
      _horrsPartsCount = Nothing,
      _horrsWebsiteRedirectLocation = Nothing,
      _horrsContentType = Nothing,
      _horrsContentDisposition = Nothing,
      _horrsArchiveStatus = Nothing,
      _horrsDeleteMarker = Nothing,
      _horrsExpiration = Nothing,
      _horrsContentLanguage = Nothing,
      _horrsReplicationStatus = Nothing,
      _horrsMetadata = mempty,
      _horrsContentLength = Nothing,
      _horrsContentEncoding = Nothing,
      _horrsSSEKMSKeyId = Nothing,
      _horrsSSECustomerKeyMD5 = Nothing,
      _horrsStorageClass = Nothing,
      _horrsVersionId = Nothing,
      _horrsAcceptRanges = Nothing,
      _horrsBucketKeyEnabled = Nothing,
      _horrsServerSideEncryption = Nothing,
      _horrsMissingMeta = Nothing,
      _horrsObjectLockLegalHoldStatus = Nothing,
      _horrsSSECustomerAlgorithm = Nothing,
      _horrsLastModified = Nothing,
      _horrsCacheControl = Nothing,
      _horrsExpires = Nothing,
      _horrsRestore = Nothing,
      _horrsObjectLockMode = Nothing,
      _horrsObjectLockRetainUntilDate = Nothing,
      _horrsResponseStatus = pResponseStatus_
    }

-- | An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
horrsETag :: Lens' HeadObjectResponse (Maybe ETag)
horrsETag = lens _horrsETag (\s a -> s {_horrsETag = a})

-- | Undocumented member.
horrsRequestCharged :: Lens' HeadObjectResponse (Maybe RequestCharged)
horrsRequestCharged = lens _horrsRequestCharged (\s a -> s {_horrsRequestCharged = a})

-- | The count of parts this object has.
horrsPartsCount :: Lens' HeadObjectResponse (Maybe Int)
horrsPartsCount = lens _horrsPartsCount (\s a -> s {_horrsPartsCount = a})

-- | If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
horrsWebsiteRedirectLocation :: Lens' HeadObjectResponse (Maybe Text)
horrsWebsiteRedirectLocation = lens _horrsWebsiteRedirectLocation (\s a -> s {_horrsWebsiteRedirectLocation = a})

-- | A standard MIME type describing the format of the object data.
horrsContentType :: Lens' HeadObjectResponse (Maybe Text)
horrsContentType = lens _horrsContentType (\s a -> s {_horrsContentType = a})

-- | Specifies presentational information for the object.
horrsContentDisposition :: Lens' HeadObjectResponse (Maybe Text)
horrsContentDisposition = lens _horrsContentDisposition (\s a -> s {_horrsContentDisposition = a})

-- | The archive state of the head object.
horrsArchiveStatus :: Lens' HeadObjectResponse (Maybe ArchiveStatus)
horrsArchiveStatus = lens _horrsArchiveStatus (\s a -> s {_horrsArchiveStatus = a})

-- | Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
horrsDeleteMarker :: Lens' HeadObjectResponse (Maybe Bool)
horrsDeleteMarker = lens _horrsDeleteMarker (\s a -> s {_horrsDeleteMarker = a})

-- | If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key-value pairs providing object expiration information. The value of the rule-id is URL encoded.
horrsExpiration :: Lens' HeadObjectResponse (Maybe Text)
horrsExpiration = lens _horrsExpiration (\s a -> s {_horrsExpiration = a})

-- | The language the content is in.
horrsContentLanguage :: Lens' HeadObjectResponse (Maybe Text)
horrsContentLanguage = lens _horrsContentLanguage (\s a -> s {_horrsContentLanguage = a})

-- | Amazon S3 can return this header if your request involves a bucket that is either a source or a destination in a replication rule. In replication, you have a source bucket on which you configure replication and destination bucket or buckets where Amazon S3 stores object replicas. When you request an object (@GetObject@ ) or object metadata (@HeadObject@ ) from these buckets, Amazon S3 will return the @x-amz-replication-status@ header in the response as follows:     * If requesting an object from the source bucket — Amazon S3 will return the @x-amz-replication-status@ header if the object in your request is eligible for replication. For example, suppose that in your replication configuration, you specify object prefix @TaxDocs@ requesting Amazon S3 to replicate objects with key prefix @TaxDocs@ . Any objects you upload with this key name prefix, for example @TaxDocs/document1.pdf@ , are eligible for replication. For any object request with this key name prefix, Amazon S3 will return the @x-amz-replication-status@ header with value PENDING, COMPLETED or FAILED indicating object replication status.     * If requesting an object from a destination bucket — Amazon S3 will return the @x-amz-replication-status@ header with value REPLICA if the object in your request is a replica that Amazon S3 created and there is no replica modification replication in progress.     * When replicating objects to multiple destination buckets the @x-amz-replication-status@ header acts differently. The header of the source object will only return a value of COMPLETED when replication is successful to all destinations. The header will remain at value PENDING until replication has completed for all destinations. If one or more destinations fails replication the header will return FAILED.  For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html Replication> .
horrsReplicationStatus :: Lens' HeadObjectResponse (Maybe ReplicationStatus)
horrsReplicationStatus = lens _horrsReplicationStatus (\s a -> s {_horrsReplicationStatus = a})

-- | A map of metadata to store with the object in S3.
horrsMetadata :: Lens' HeadObjectResponse (HashMap Text Text)
horrsMetadata = lens _horrsMetadata (\s a -> s {_horrsMetadata = a}) . _Map

-- | Size of the body in bytes.
horrsContentLength :: Lens' HeadObjectResponse (Maybe Integer)
horrsContentLength = lens _horrsContentLength (\s a -> s {_horrsContentLength = a})

-- | Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
horrsContentEncoding :: Lens' HeadObjectResponse (Maybe Text)
horrsContentEncoding = lens _horrsContentEncoding (\s a -> s {_horrsContentEncoding = a})

-- | If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for the object.
horrsSSEKMSKeyId :: Lens' HeadObjectResponse (Maybe Text)
horrsSSEKMSKeyId = lens _horrsSSEKMSKeyId (\s a -> s {_horrsSSEKMSKeyId = a}) . mapping _Sensitive

-- | If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
horrsSSECustomerKeyMD5 :: Lens' HeadObjectResponse (Maybe Text)
horrsSSECustomerKeyMD5 = lens _horrsSSECustomerKeyMD5 (\s a -> s {_horrsSSECustomerKeyMD5 = a})

-- | Provides storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html Storage Classes> .
horrsStorageClass :: Lens' HeadObjectResponse (Maybe StorageClass)
horrsStorageClass = lens _horrsStorageClass (\s a -> s {_horrsStorageClass = a})

-- | Version of the object.
horrsVersionId :: Lens' HeadObjectResponse (Maybe ObjectVersionId)
horrsVersionId = lens _horrsVersionId (\s a -> s {_horrsVersionId = a})

-- | Indicates that a range of bytes was specified.
horrsAcceptRanges :: Lens' HeadObjectResponse (Maybe Text)
horrsAcceptRanges = lens _horrsAcceptRanges (\s a -> s {_horrsAcceptRanges = a})

-- | Indicates whether the object uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).
horrsBucketKeyEnabled :: Lens' HeadObjectResponse (Maybe Bool)
horrsBucketKeyEnabled = lens _horrsBucketKeyEnabled (\s a -> s {_horrsBucketKeyEnabled = a})

-- | If the object is stored using server-side encryption either with an AWS KMS customer master key (CMK) or an Amazon S3-managed encryption key, the response includes this header with the value of the server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
horrsServerSideEncryption :: Lens' HeadObjectResponse (Maybe ServerSideEncryption)
horrsServerSideEncryption = lens _horrsServerSideEncryption (\s a -> s {_horrsServerSideEncryption = a})

-- | This is set to the number of metadata entries not returned in @x-amz-meta@ headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
horrsMissingMeta :: Lens' HeadObjectResponse (Maybe Int)
horrsMissingMeta = lens _horrsMissingMeta (\s a -> s {_horrsMissingMeta = a})

-- | Specifies whether a legal hold is in effect for this object. This header is only returned if the requester has the @s3:GetObjectLegalHold@ permission. This header is not returned if the specified version of this object has never had a legal hold applied. For more information about S3 Object Lock, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html Object Lock> .
horrsObjectLockLegalHoldStatus :: Lens' HeadObjectResponse (Maybe ObjectLockLegalHoldStatus)
horrsObjectLockLegalHoldStatus = lens _horrsObjectLockLegalHoldStatus (\s a -> s {_horrsObjectLockLegalHoldStatus = a})

-- | If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
horrsSSECustomerAlgorithm :: Lens' HeadObjectResponse (Maybe Text)
horrsSSECustomerAlgorithm = lens _horrsSSECustomerAlgorithm (\s a -> s {_horrsSSECustomerAlgorithm = a})

-- | Creation date of the object.
horrsLastModified :: Lens' HeadObjectResponse (Maybe UTCTime)
horrsLastModified = lens _horrsLastModified (\s a -> s {_horrsLastModified = a}) . mapping _Time

-- | Specifies caching behavior along the request/reply chain.
horrsCacheControl :: Lens' HeadObjectResponse (Maybe Text)
horrsCacheControl = lens _horrsCacheControl (\s a -> s {_horrsCacheControl = a})

-- | The date and time at which the object is no longer cacheable.
horrsExpires :: Lens' HeadObjectResponse (Maybe UTCTime)
horrsExpires = lens _horrsExpires (\s a -> s {_horrsExpires = a}) . mapping _Time

-- | If the object is an archived object (an object whose storage class is GLACIER), the response includes this header if either the archive restoration is in progress (see <https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html RestoreObject> or an archive copy is already restored. If an archive copy is already restored, the header value indicates when Amazon S3 is scheduled to delete the object copy. For example: @x-amz-restore: ongoing-request="false", expiry-date="Fri, 23 Dec 2012 00:00:00 GMT"@  If the object restoration is in progress, the header returns the value @ongoing-request="true"@ . For more information about archiving objects, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-transition-general-considerations Transitioning Objects: General Considerations> .
horrsRestore :: Lens' HeadObjectResponse (Maybe Text)
horrsRestore = lens _horrsRestore (\s a -> s {_horrsRestore = a})

-- | The Object Lock mode, if any, that's in effect for this object. This header is only returned if the requester has the @s3:GetObjectRetention@ permission. For more information about S3 Object Lock, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html Object Lock> .
horrsObjectLockMode :: Lens' HeadObjectResponse (Maybe ObjectLockMode)
horrsObjectLockMode = lens _horrsObjectLockMode (\s a -> s {_horrsObjectLockMode = a})

-- | The date and time when the Object Lock retention period expires. This header is only returned if the requester has the @s3:GetObjectRetention@ permission.
horrsObjectLockRetainUntilDate :: Lens' HeadObjectResponse (Maybe UTCTime)
horrsObjectLockRetainUntilDate = lens _horrsObjectLockRetainUntilDate (\s a -> s {_horrsObjectLockRetainUntilDate = a}) . mapping _Time

-- | -- | The response status code.
horrsResponseStatus :: Lens' HeadObjectResponse Int
horrsResponseStatus = lens _horrsResponseStatus (\s a -> s {_horrsResponseStatus = a})

instance NFData HeadObjectResponse
