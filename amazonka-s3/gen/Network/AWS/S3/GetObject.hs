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
-- Module      : Network.AWS.S3.GetObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves objects from Amazon S3. To use @GET@ , you must have @READ@ access to the object. If you grant @READ@ access to the anonymous user, you can return the object without using an authorization header.
--
--
-- An Amazon S3 bucket has no directory hierarchy such as you would find in a typical computer file system. You can, however, create a logical hierarchy by using object key names that imply a folder structure. For example, instead of naming an object @sample.jpg@ , you can name it @photos/2006/February/sample.jpg@ .
--
-- To get an object from such a logical hierarchy, specify the full key name for the object in the @GET@ operation. For a virtual hosted-style request example, if you have the object @photos/2006/February/sample.jpg@ , specify the resource as @/photos/2006/February/sample.jpg@ . For a path-style request example, if you have the object @photos/2006/February/sample.jpg@ in the bucket named @examplebucket@ , specify the resource as @/examplebucket/photos/2006/February/sample.jpg@ . For more information about request types, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket HTTP Host Header Bucket Specification> .
--
-- To distribute large files to many people, you can save bandwidth costs by using BitTorrent. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3Torrent.html Amazon S3 Torrent> . For more information about returning the ACL of an object, see <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html GetObjectAcl> .
--
-- If the object you are retrieving is stored in the S3 Glacier or S3 Glacier Deep Archive storage class, or S3 Intelligent-Tiering Archive or S3 Intelligent-Tiering Deep Archive tiers, before you can retrieve the object you must first restore a copy using <https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html RestoreObject> . Otherwise, this operation returns an @InvalidObjectStateError@ error. For information about restoring archived objects, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html Restoring Archived Objects> .
--
-- Encryption request headers, like @x-amz-server-side-encryption@ , should not be sent for GET requests if your object uses server-side encryption with CMKs stored in AWS KMS (SSE-KMS) or server-side encryption with Amazon S3–managed encryption keys (SSE-S3). If your object does use these types of keys, you’ll get an HTTP 400 BadRequest error.
--
-- If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following headers:
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
-- Assuming you have permission to read object tags (permission for the @s3:GetObjectVersionTagging@ action), the response also returns the @x-amz-tagging-count@ header that provides the count of number of tags associated with the object. You can use <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html GetObjectTagging> to retrieve the tag set associated with an object.
--
-- __Permissions__
--
-- You need the @s3:GetObject@ permission for this operation. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html Specifying Permissions in a Policy> . If the object you request does not exist, the error Amazon S3 returns depends on whether you also have the @s3:ListBucket@ permission.
--
--     * If you have the @s3:ListBucket@ permission on the bucket, Amazon S3 will return an HTTP status code 404 ("no such key") error.
--
--     * If you don’t have the @s3:ListBucket@ permission, Amazon S3 will return an HTTP status code 403 ("access denied") error.
--
--
--
-- __Versioning__
--
-- By default, the GET operation returns the current version of an object. To return a different version, use the @versionId@ subresource.
--
-- For more information about versioning, see <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html PutBucketVersioning> .
--
-- __Overriding Response Header Values__
--
-- There are times when you want to override certain response header values in a GET response. For example, you might override the Content-Disposition response header value in your GET request.
--
-- You can override values for a set of response headers using the following query parameters. These response header values are sent only on a successful request, that is, when status code 200 OK is returned. The set of headers you can override using these parameters is a subset of the headers that Amazon S3 accepts when you create an object. The response headers that you can override for the GET response are @Content-Type@ , @Content-Language@ , @Expires@ , @Cache-Control@ , @Content-Disposition@ , and @Content-Encoding@ . To override these header values in the GET response, you use the following request parameters.
--
--     * @response-content-type@
--
--     * @response-content-language@
--
--     * @response-expires@
--
--     * @response-cache-control@
--
--     * @response-content-disposition@
--
--     * @response-content-encoding@
--
--
--
-- __Additional Considerations about Request Headers__
--
-- If both of the @If-Match@ and @If-Unmodified-Since@ headers are present in the request as follows: @If-Match@ condition evaluates to @true@ , and; @If-Unmodified-Since@ condition evaluates to @false@ ; then, S3 returns 200 OK and the data requested.
--
-- If both of the @If-None-Match@ and @If-Modified-Since@ headers are present in the request as follows:@If-None-Match@ condition evaluates to @false@ , and; @If-Modified-Since@ condition evaluates to @true@ ; then, S3 returns 304 Not Modified response code.
--
-- For more information about conditional requests, see <https://tools.ietf.org/html/rfc7232 RFC 7232> .
--
-- The following operations are related to @GetObject@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html ListBuckets>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html GetObjectAcl>
module Network.AWS.S3.GetObject
  ( -- * Creating a Request
    getObject,
    GetObject,

    -- * Request Lenses
    goIfUnmodifiedSince,
    goRange,
    goIfModifiedSince,
    goExpectedBucketOwner,
    goResponseExpires,
    goSSECustomerKeyMD5,
    goVersionId,
    goIfMatch,
    goPartNumber,
    goResponseContentEncoding,
    goIfNoneMatch,
    goSSECustomerAlgorithm,
    goRequestPayer,
    goSSECustomerKey,
    goResponseContentLanguage,
    goResponseCacheControl,
    goResponseContentDisposition,
    goResponseContentType,
    goBucket,
    goKey,

    -- * Destructuring the Response
    getObjectResponse,
    GetObjectResponse,

    -- * Response Lenses
    gorrsETag,
    gorrsRequestCharged,
    gorrsPartsCount,
    gorrsWebsiteRedirectLocation,
    gorrsContentType,
    gorrsTagCount,
    gorrsContentRange,
    gorrsContentDisposition,
    gorrsDeleteMarker,
    gorrsExpiration,
    gorrsContentLanguage,
    gorrsReplicationStatus,
    gorrsMetadata,
    gorrsContentLength,
    gorrsContentEncoding,
    gorrsSSEKMSKeyId,
    gorrsSSECustomerKeyMD5,
    gorrsStorageClass,
    gorrsVersionId,
    gorrsAcceptRanges,
    gorrsBucketKeyEnabled,
    gorrsServerSideEncryption,
    gorrsMissingMeta,
    gorrsObjectLockLegalHoldStatus,
    gorrsSSECustomerAlgorithm,
    gorrsLastModified,
    gorrsCacheControl,
    gorrsExpires,
    gorrsRestore,
    gorrsObjectLockMode,
    gorrsObjectLockRetainUntilDate,
    gorrsResponseStatus,
    gorrsBody,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'getObject' smart constructor.
data GetObject = GetObject'
  { _goIfUnmodifiedSince ::
      !(Maybe ISO8601),
    _goRange :: !(Maybe Text),
    _goIfModifiedSince :: !(Maybe ISO8601),
    _goExpectedBucketOwner :: !(Maybe Text),
    _goResponseExpires :: !(Maybe ISO8601),
    _goSSECustomerKeyMD5 :: !(Maybe Text),
    _goVersionId :: !(Maybe ObjectVersionId),
    _goIfMatch :: !(Maybe Text),
    _goPartNumber :: !(Maybe Int),
    _goResponseContentEncoding :: !(Maybe Text),
    _goIfNoneMatch :: !(Maybe Text),
    _goSSECustomerAlgorithm :: !(Maybe Text),
    _goRequestPayer :: !(Maybe RequestPayer),
    _goSSECustomerKey :: !(Maybe (Sensitive Text)),
    _goResponseContentLanguage :: !(Maybe Text),
    _goResponseCacheControl :: !(Maybe Text),
    _goResponseContentDisposition :: !(Maybe Text),
    _goResponseContentType :: !(Maybe Text),
    _goBucket :: !BucketName,
    _goKey :: !ObjectKey
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goIfUnmodifiedSince' - Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).
--
-- * 'goRange' - Downloads the specified range bytes of an object. For more information about the HTTP Range header, see <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35 https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35> .
--
-- * 'goIfModifiedSince' - Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).
--
-- * 'goExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'goResponseExpires' - Sets the @Expires@ header of the response.
--
-- * 'goSSECustomerKeyMD5' - Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
--
-- * 'goVersionId' - VersionId used to reference a specific version of the object.
--
-- * 'goIfMatch' - Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).
--
-- * 'goPartNumber' - Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an object.
--
-- * 'goResponseContentEncoding' - Sets the @Content-Encoding@ header of the response.
--
-- * 'goIfNoneMatch' - Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).
--
-- * 'goSSECustomerAlgorithm' - Specifies the algorithm to use to when decrypting the object (for example, AES256).
--
-- * 'goRequestPayer' - Undocumented member.
--
-- * 'goSSECustomerKey' - Specifies the customer-provided encryption key for Amazon S3 used to encrypt the data. This value is used to decrypt the object when recovering it and must match the one used when storing the data. The key must be appropriate for use with the algorithm specified in the @x-amz-server-side-encryption-customer-algorithm@ header.
--
-- * 'goResponseContentLanguage' - Sets the @Content-Language@ header of the response.
--
-- * 'goResponseCacheControl' - Sets the @Cache-Control@ header of the response.
--
-- * 'goResponseContentDisposition' - Sets the @Content-Disposition@ header of the response
--
-- * 'goResponseContentType' - Sets the @Content-Type@ header of the response.
--
-- * 'goBucket' - The bucket name containing the object.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'goKey' - Key of the object to get.
getObject ::
  -- | 'goBucket'
  BucketName ->
  -- | 'goKey'
  ObjectKey ->
  GetObject
getObject pBucket_ pKey_ =
  GetObject'
    { _goIfUnmodifiedSince = Nothing,
      _goRange = Nothing,
      _goIfModifiedSince = Nothing,
      _goExpectedBucketOwner = Nothing,
      _goResponseExpires = Nothing,
      _goSSECustomerKeyMD5 = Nothing,
      _goVersionId = Nothing,
      _goIfMatch = Nothing,
      _goPartNumber = Nothing,
      _goResponseContentEncoding = Nothing,
      _goIfNoneMatch = Nothing,
      _goSSECustomerAlgorithm = Nothing,
      _goRequestPayer = Nothing,
      _goSSECustomerKey = Nothing,
      _goResponseContentLanguage = Nothing,
      _goResponseCacheControl = Nothing,
      _goResponseContentDisposition = Nothing,
      _goResponseContentType = Nothing,
      _goBucket = pBucket_,
      _goKey = pKey_
    }

-- | Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).
goIfUnmodifiedSince :: Lens' GetObject (Maybe UTCTime)
goIfUnmodifiedSince = lens _goIfUnmodifiedSince (\s a -> s {_goIfUnmodifiedSince = a}) . mapping _Time

-- | Downloads the specified range bytes of an object. For more information about the HTTP Range header, see <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35 https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35> .
goRange :: Lens' GetObject (Maybe Text)
goRange = lens _goRange (\s a -> s {_goRange = a})

-- | Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).
goIfModifiedSince :: Lens' GetObject (Maybe UTCTime)
goIfModifiedSince = lens _goIfModifiedSince (\s a -> s {_goIfModifiedSince = a}) . mapping _Time

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
goExpectedBucketOwner :: Lens' GetObject (Maybe Text)
goExpectedBucketOwner = lens _goExpectedBucketOwner (\s a -> s {_goExpectedBucketOwner = a})

-- | Sets the @Expires@ header of the response.
goResponseExpires :: Lens' GetObject (Maybe UTCTime)
goResponseExpires = lens _goResponseExpires (\s a -> s {_goResponseExpires = a}) . mapping _Time

-- | Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
goSSECustomerKeyMD5 :: Lens' GetObject (Maybe Text)
goSSECustomerKeyMD5 = lens _goSSECustomerKeyMD5 (\s a -> s {_goSSECustomerKeyMD5 = a})

-- | VersionId used to reference a specific version of the object.
goVersionId :: Lens' GetObject (Maybe ObjectVersionId)
goVersionId = lens _goVersionId (\s a -> s {_goVersionId = a})

-- | Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).
goIfMatch :: Lens' GetObject (Maybe Text)
goIfMatch = lens _goIfMatch (\s a -> s {_goIfMatch = a})

-- | Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an object.
goPartNumber :: Lens' GetObject (Maybe Int)
goPartNumber = lens _goPartNumber (\s a -> s {_goPartNumber = a})

-- | Sets the @Content-Encoding@ header of the response.
goResponseContentEncoding :: Lens' GetObject (Maybe Text)
goResponseContentEncoding = lens _goResponseContentEncoding (\s a -> s {_goResponseContentEncoding = a})

-- | Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).
goIfNoneMatch :: Lens' GetObject (Maybe Text)
goIfNoneMatch = lens _goIfNoneMatch (\s a -> s {_goIfNoneMatch = a})

-- | Specifies the algorithm to use to when decrypting the object (for example, AES256).
goSSECustomerAlgorithm :: Lens' GetObject (Maybe Text)
goSSECustomerAlgorithm = lens _goSSECustomerAlgorithm (\s a -> s {_goSSECustomerAlgorithm = a})

-- | Undocumented member.
goRequestPayer :: Lens' GetObject (Maybe RequestPayer)
goRequestPayer = lens _goRequestPayer (\s a -> s {_goRequestPayer = a})

-- | Specifies the customer-provided encryption key for Amazon S3 used to encrypt the data. This value is used to decrypt the object when recovering it and must match the one used when storing the data. The key must be appropriate for use with the algorithm specified in the @x-amz-server-side-encryption-customer-algorithm@ header.
goSSECustomerKey :: Lens' GetObject (Maybe Text)
goSSECustomerKey = lens _goSSECustomerKey (\s a -> s {_goSSECustomerKey = a}) . mapping _Sensitive

-- | Sets the @Content-Language@ header of the response.
goResponseContentLanguage :: Lens' GetObject (Maybe Text)
goResponseContentLanguage = lens _goResponseContentLanguage (\s a -> s {_goResponseContentLanguage = a})

-- | Sets the @Cache-Control@ header of the response.
goResponseCacheControl :: Lens' GetObject (Maybe Text)
goResponseCacheControl = lens _goResponseCacheControl (\s a -> s {_goResponseCacheControl = a})

-- | Sets the @Content-Disposition@ header of the response
goResponseContentDisposition :: Lens' GetObject (Maybe Text)
goResponseContentDisposition = lens _goResponseContentDisposition (\s a -> s {_goResponseContentDisposition = a})

-- | Sets the @Content-Type@ header of the response.
goResponseContentType :: Lens' GetObject (Maybe Text)
goResponseContentType = lens _goResponseContentType (\s a -> s {_goResponseContentType = a})

-- | The bucket name containing the object.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
goBucket :: Lens' GetObject BucketName
goBucket = lens _goBucket (\s a -> s {_goBucket = a})

-- | Key of the object to get.
goKey :: Lens' GetObject ObjectKey
goKey = lens _goKey (\s a -> s {_goKey = a})

instance AWSRequest GetObject where
  type Rs GetObject = GetObjectResponse
  request = get s3
  response =
    receiveBody
      ( \s h x ->
          GetObjectResponse'
            <$> (h .#? "ETag")
            <*> (h .#? "x-amz-request-charged")
            <*> (h .#? "x-amz-mp-parts-count")
            <*> (h .#? "x-amz-website-redirect-location")
            <*> (h .#? "Content-Type")
            <*> (h .#? "x-amz-tagging-count")
            <*> (h .#? "Content-Range")
            <*> (h .#? "Content-Disposition")
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
            <*> (pure x)
      )

instance Hashable GetObject

instance NFData GetObject

instance ToHeaders GetObject where
  toHeaders GetObject' {..} =
    mconcat
      [ "If-Unmodified-Since" =# _goIfUnmodifiedSince,
        "Range" =# _goRange,
        "If-Modified-Since" =# _goIfModifiedSince,
        "x-amz-expected-bucket-owner"
          =# _goExpectedBucketOwner,
        "x-amz-server-side-encryption-customer-key-MD5"
          =# _goSSECustomerKeyMD5,
        "If-Match" =# _goIfMatch,
        "If-None-Match" =# _goIfNoneMatch,
        "x-amz-server-side-encryption-customer-algorithm"
          =# _goSSECustomerAlgorithm,
        "x-amz-request-payer" =# _goRequestPayer,
        "x-amz-server-side-encryption-customer-key"
          =# _goSSECustomerKey
      ]

instance ToPath GetObject where
  toPath GetObject' {..} =
    mconcat ["/", toBS _goBucket, "/", toBS _goKey]

instance ToQuery GetObject where
  toQuery GetObject' {..} =
    mconcat
      [ "response-expires" =: _goResponseExpires,
        "versionId" =: _goVersionId,
        "partNumber" =: _goPartNumber,
        "response-content-encoding"
          =: _goResponseContentEncoding,
        "response-content-language"
          =: _goResponseContentLanguage,
        "response-cache-control" =: _goResponseCacheControl,
        "response-content-disposition"
          =: _goResponseContentDisposition,
        "response-content-type" =: _goResponseContentType
      ]

-- | /See:/ 'getObjectResponse' smart constructor.
data GetObjectResponse = GetObjectResponse'
  { _gorrsETag ::
      !(Maybe ETag),
    _gorrsRequestCharged ::
      !(Maybe RequestCharged),
    _gorrsPartsCount :: !(Maybe Int),
    _gorrsWebsiteRedirectLocation ::
      !(Maybe Text),
    _gorrsContentType :: !(Maybe Text),
    _gorrsTagCount :: !(Maybe Int),
    _gorrsContentRange :: !(Maybe Text),
    _gorrsContentDisposition ::
      !(Maybe Text),
    _gorrsDeleteMarker :: !(Maybe Bool),
    _gorrsExpiration :: !(Maybe Text),
    _gorrsContentLanguage ::
      !(Maybe Text),
    _gorrsReplicationStatus ::
      !(Maybe ReplicationStatus),
    _gorrsMetadata :: !(Map Text Text),
    _gorrsContentLength ::
      !(Maybe Integer),
    _gorrsContentEncoding ::
      !(Maybe Text),
    _gorrsSSEKMSKeyId ::
      !(Maybe (Sensitive Text)),
    _gorrsSSECustomerKeyMD5 ::
      !(Maybe Text),
    _gorrsStorageClass ::
      !(Maybe StorageClass),
    _gorrsVersionId ::
      !(Maybe ObjectVersionId),
    _gorrsAcceptRanges :: !(Maybe Text),
    _gorrsBucketKeyEnabled ::
      !(Maybe Bool),
    _gorrsServerSideEncryption ::
      !(Maybe ServerSideEncryption),
    _gorrsMissingMeta :: !(Maybe Int),
    _gorrsObjectLockLegalHoldStatus ::
      !(Maybe ObjectLockLegalHoldStatus),
    _gorrsSSECustomerAlgorithm ::
      !(Maybe Text),
    _gorrsLastModified ::
      !(Maybe ISO8601),
    _gorrsCacheControl :: !(Maybe Text),
    _gorrsExpires :: !(Maybe ISO8601),
    _gorrsRestore :: !(Maybe Text),
    _gorrsObjectLockMode ::
      !(Maybe ObjectLockMode),
    _gorrsObjectLockRetainUntilDate ::
      !(Maybe ISO8601),
    _gorrsResponseStatus :: !Int,
    _gorrsBody :: !RsBody
  }
  deriving (Show, Generic)

-- | Creates a value of 'GetObjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gorrsETag' - An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
--
-- * 'gorrsRequestCharged' - Undocumented member.
--
-- * 'gorrsPartsCount' - The count of parts this object has.
--
-- * 'gorrsWebsiteRedirectLocation' - If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
--
-- * 'gorrsContentType' - A standard MIME type describing the format of the object data.
--
-- * 'gorrsTagCount' - The number of tags, if any, on the object.
--
-- * 'gorrsContentRange' - The portion of the object returned in the response.
--
-- * 'gorrsContentDisposition' - Specifies presentational information for the object.
--
-- * 'gorrsDeleteMarker' - Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
--
-- * 'gorrsExpiration' - If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key-value pairs providing object expiration information. The value of the rule-id is URL encoded.
--
-- * 'gorrsContentLanguage' - The language the content is in.
--
-- * 'gorrsReplicationStatus' - Amazon S3 can return this if your request involves a bucket that is either a source or destination in a replication rule.
--
-- * 'gorrsMetadata' - A map of metadata to store with the object in S3.
--
-- * 'gorrsContentLength' - Size of the body in bytes.
--
-- * 'gorrsContentEncoding' - Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
--
-- * 'gorrsSSEKMSKeyId' - If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for the object.
--
-- * 'gorrsSSECustomerKeyMD5' - If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
--
-- * 'gorrsStorageClass' - Provides storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects.
--
-- * 'gorrsVersionId' - Version of the object.
--
-- * 'gorrsAcceptRanges' - Indicates that a range of bytes was specified.
--
-- * 'gorrsBucketKeyEnabled' - Indicates whether the object uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).
--
-- * 'gorrsServerSideEncryption' - The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
--
-- * 'gorrsMissingMeta' - This is set to the number of metadata entries not returned in @x-amz-meta@ headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
--
-- * 'gorrsObjectLockLegalHoldStatus' - Indicates whether this object has an active legal hold. This field is only returned if you have permission to view an object's legal hold status.
--
-- * 'gorrsSSECustomerAlgorithm' - If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
--
-- * 'gorrsLastModified' - Creation date of the object.
--
-- * 'gorrsCacheControl' - Specifies caching behavior along the request/reply chain.
--
-- * 'gorrsExpires' - The date and time at which the object is no longer cacheable.
--
-- * 'gorrsRestore' - Provides information about object restoration operation and expiration time of the restored object copy.
--
-- * 'gorrsObjectLockMode' - The Object Lock mode currently in place for this object.
--
-- * 'gorrsObjectLockRetainUntilDate' - The date and time when this object's Object Lock will expire.
--
-- * 'gorrsResponseStatus' - -- | The response status code.
--
-- * 'gorrsBody' - Object data.
getObjectResponse ::
  -- | 'gorrsResponseStatus'
  Int ->
  -- | 'gorrsBody'
  RsBody ->
  GetObjectResponse
getObjectResponse pResponseStatus_ pBody_ =
  GetObjectResponse'
    { _gorrsETag = Nothing,
      _gorrsRequestCharged = Nothing,
      _gorrsPartsCount = Nothing,
      _gorrsWebsiteRedirectLocation = Nothing,
      _gorrsContentType = Nothing,
      _gorrsTagCount = Nothing,
      _gorrsContentRange = Nothing,
      _gorrsContentDisposition = Nothing,
      _gorrsDeleteMarker = Nothing,
      _gorrsExpiration = Nothing,
      _gorrsContentLanguage = Nothing,
      _gorrsReplicationStatus = Nothing,
      _gorrsMetadata = mempty,
      _gorrsContentLength = Nothing,
      _gorrsContentEncoding = Nothing,
      _gorrsSSEKMSKeyId = Nothing,
      _gorrsSSECustomerKeyMD5 = Nothing,
      _gorrsStorageClass = Nothing,
      _gorrsVersionId = Nothing,
      _gorrsAcceptRanges = Nothing,
      _gorrsBucketKeyEnabled = Nothing,
      _gorrsServerSideEncryption = Nothing,
      _gorrsMissingMeta = Nothing,
      _gorrsObjectLockLegalHoldStatus = Nothing,
      _gorrsSSECustomerAlgorithm = Nothing,
      _gorrsLastModified = Nothing,
      _gorrsCacheControl = Nothing,
      _gorrsExpires = Nothing,
      _gorrsRestore = Nothing,
      _gorrsObjectLockMode = Nothing,
      _gorrsObjectLockRetainUntilDate = Nothing,
      _gorrsResponseStatus = pResponseStatus_,
      _gorrsBody = pBody_
    }

-- | An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
gorrsETag :: Lens' GetObjectResponse (Maybe ETag)
gorrsETag = lens _gorrsETag (\s a -> s {_gorrsETag = a})

-- | Undocumented member.
gorrsRequestCharged :: Lens' GetObjectResponse (Maybe RequestCharged)
gorrsRequestCharged = lens _gorrsRequestCharged (\s a -> s {_gorrsRequestCharged = a})

-- | The count of parts this object has.
gorrsPartsCount :: Lens' GetObjectResponse (Maybe Int)
gorrsPartsCount = lens _gorrsPartsCount (\s a -> s {_gorrsPartsCount = a})

-- | If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
gorrsWebsiteRedirectLocation :: Lens' GetObjectResponse (Maybe Text)
gorrsWebsiteRedirectLocation = lens _gorrsWebsiteRedirectLocation (\s a -> s {_gorrsWebsiteRedirectLocation = a})

-- | A standard MIME type describing the format of the object data.
gorrsContentType :: Lens' GetObjectResponse (Maybe Text)
gorrsContentType = lens _gorrsContentType (\s a -> s {_gorrsContentType = a})

-- | The number of tags, if any, on the object.
gorrsTagCount :: Lens' GetObjectResponse (Maybe Int)
gorrsTagCount = lens _gorrsTagCount (\s a -> s {_gorrsTagCount = a})

-- | The portion of the object returned in the response.
gorrsContentRange :: Lens' GetObjectResponse (Maybe Text)
gorrsContentRange = lens _gorrsContentRange (\s a -> s {_gorrsContentRange = a})

-- | Specifies presentational information for the object.
gorrsContentDisposition :: Lens' GetObjectResponse (Maybe Text)
gorrsContentDisposition = lens _gorrsContentDisposition (\s a -> s {_gorrsContentDisposition = a})

-- | Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
gorrsDeleteMarker :: Lens' GetObjectResponse (Maybe Bool)
gorrsDeleteMarker = lens _gorrsDeleteMarker (\s a -> s {_gorrsDeleteMarker = a})

-- | If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key-value pairs providing object expiration information. The value of the rule-id is URL encoded.
gorrsExpiration :: Lens' GetObjectResponse (Maybe Text)
gorrsExpiration = lens _gorrsExpiration (\s a -> s {_gorrsExpiration = a})

-- | The language the content is in.
gorrsContentLanguage :: Lens' GetObjectResponse (Maybe Text)
gorrsContentLanguage = lens _gorrsContentLanguage (\s a -> s {_gorrsContentLanguage = a})

-- | Amazon S3 can return this if your request involves a bucket that is either a source or destination in a replication rule.
gorrsReplicationStatus :: Lens' GetObjectResponse (Maybe ReplicationStatus)
gorrsReplicationStatus = lens _gorrsReplicationStatus (\s a -> s {_gorrsReplicationStatus = a})

-- | A map of metadata to store with the object in S3.
gorrsMetadata :: Lens' GetObjectResponse (HashMap Text Text)
gorrsMetadata = lens _gorrsMetadata (\s a -> s {_gorrsMetadata = a}) . _Map

-- | Size of the body in bytes.
gorrsContentLength :: Lens' GetObjectResponse (Maybe Integer)
gorrsContentLength = lens _gorrsContentLength (\s a -> s {_gorrsContentLength = a})

-- | Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
gorrsContentEncoding :: Lens' GetObjectResponse (Maybe Text)
gorrsContentEncoding = lens _gorrsContentEncoding (\s a -> s {_gorrsContentEncoding = a})

-- | If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for the object.
gorrsSSEKMSKeyId :: Lens' GetObjectResponse (Maybe Text)
gorrsSSEKMSKeyId = lens _gorrsSSEKMSKeyId (\s a -> s {_gorrsSSEKMSKeyId = a}) . mapping _Sensitive

-- | If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
gorrsSSECustomerKeyMD5 :: Lens' GetObjectResponse (Maybe Text)
gorrsSSECustomerKeyMD5 = lens _gorrsSSECustomerKeyMD5 (\s a -> s {_gorrsSSECustomerKeyMD5 = a})

-- | Provides storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects.
gorrsStorageClass :: Lens' GetObjectResponse (Maybe StorageClass)
gorrsStorageClass = lens _gorrsStorageClass (\s a -> s {_gorrsStorageClass = a})

-- | Version of the object.
gorrsVersionId :: Lens' GetObjectResponse (Maybe ObjectVersionId)
gorrsVersionId = lens _gorrsVersionId (\s a -> s {_gorrsVersionId = a})

-- | Indicates that a range of bytes was specified.
gorrsAcceptRanges :: Lens' GetObjectResponse (Maybe Text)
gorrsAcceptRanges = lens _gorrsAcceptRanges (\s a -> s {_gorrsAcceptRanges = a})

-- | Indicates whether the object uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).
gorrsBucketKeyEnabled :: Lens' GetObjectResponse (Maybe Bool)
gorrsBucketKeyEnabled = lens _gorrsBucketKeyEnabled (\s a -> s {_gorrsBucketKeyEnabled = a})

-- | The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
gorrsServerSideEncryption :: Lens' GetObjectResponse (Maybe ServerSideEncryption)
gorrsServerSideEncryption = lens _gorrsServerSideEncryption (\s a -> s {_gorrsServerSideEncryption = a})

-- | This is set to the number of metadata entries not returned in @x-amz-meta@ headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
gorrsMissingMeta :: Lens' GetObjectResponse (Maybe Int)
gorrsMissingMeta = lens _gorrsMissingMeta (\s a -> s {_gorrsMissingMeta = a})

-- | Indicates whether this object has an active legal hold. This field is only returned if you have permission to view an object's legal hold status.
gorrsObjectLockLegalHoldStatus :: Lens' GetObjectResponse (Maybe ObjectLockLegalHoldStatus)
gorrsObjectLockLegalHoldStatus = lens _gorrsObjectLockLegalHoldStatus (\s a -> s {_gorrsObjectLockLegalHoldStatus = a})

-- | If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
gorrsSSECustomerAlgorithm :: Lens' GetObjectResponse (Maybe Text)
gorrsSSECustomerAlgorithm = lens _gorrsSSECustomerAlgorithm (\s a -> s {_gorrsSSECustomerAlgorithm = a})

-- | Creation date of the object.
gorrsLastModified :: Lens' GetObjectResponse (Maybe UTCTime)
gorrsLastModified = lens _gorrsLastModified (\s a -> s {_gorrsLastModified = a}) . mapping _Time

-- | Specifies caching behavior along the request/reply chain.
gorrsCacheControl :: Lens' GetObjectResponse (Maybe Text)
gorrsCacheControl = lens _gorrsCacheControl (\s a -> s {_gorrsCacheControl = a})

-- | The date and time at which the object is no longer cacheable.
gorrsExpires :: Lens' GetObjectResponse (Maybe UTCTime)
gorrsExpires = lens _gorrsExpires (\s a -> s {_gorrsExpires = a}) . mapping _Time

-- | Provides information about object restoration operation and expiration time of the restored object copy.
gorrsRestore :: Lens' GetObjectResponse (Maybe Text)
gorrsRestore = lens _gorrsRestore (\s a -> s {_gorrsRestore = a})

-- | The Object Lock mode currently in place for this object.
gorrsObjectLockMode :: Lens' GetObjectResponse (Maybe ObjectLockMode)
gorrsObjectLockMode = lens _gorrsObjectLockMode (\s a -> s {_gorrsObjectLockMode = a})

-- | The date and time when this object's Object Lock will expire.
gorrsObjectLockRetainUntilDate :: Lens' GetObjectResponse (Maybe UTCTime)
gorrsObjectLockRetainUntilDate = lens _gorrsObjectLockRetainUntilDate (\s a -> s {_gorrsObjectLockRetainUntilDate = a}) . mapping _Time

-- | -- | The response status code.
gorrsResponseStatus :: Lens' GetObjectResponse Int
gorrsResponseStatus = lens _gorrsResponseStatus (\s a -> s {_gorrsResponseStatus = a})

-- | Object data.
gorrsBody :: Lens' GetObjectResponse RsBody
gorrsBody = lens _gorrsBody (\s a -> s {_gorrsBody = a})
