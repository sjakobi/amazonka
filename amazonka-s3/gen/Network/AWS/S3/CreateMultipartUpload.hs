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
-- Module      : Network.AWS.S3.CreateMultipartUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation initiates a multipart upload and returns an upload ID. This upload ID is used to associate all of the parts in the specific multipart upload. You specify this upload ID in each of your subsequent upload part requests (see <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart> ). You also include this upload ID in the final request to either complete or abort the multipart upload request.
--
--
-- For more information about multipart uploads, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html Multipart Upload Overview> .
--
-- If you have configured a lifecycle rule to abort incomplete multipart uploads, the upload must complete within the number of days specified in the bucket lifecycle configuration. Otherwise, the incomplete multipart upload becomes eligible for an abort operation and Amazon S3 aborts the multipart upload. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy> .
--
-- For information about the permissions required to use the multipart upload API, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html Multipart Upload API and Permissions> .
--
-- For request signing, multipart upload is just a series of regular requests. You initiate a multipart upload, send one or more requests to upload parts, and then complete the multipart upload process. You sign each request individually. There is nothing special about signing multipart upload requests. For more information about signing, see <https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html Authenticating Requests (AWS Signature Version 4)> .
--
-- You can optionally request server-side encryption. For server-side encryption, Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. You can provide your own encryption key, or use AWS Key Management Service (AWS KMS) customer master keys (CMKs) or Amazon S3-managed encryption keys. If you choose to provide your own encryption key, the request headers you provide in <AmazonS3/latest/API/API_UploadPart.html UploadPart> and <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html UploadPartCopy> requests must match the headers you used in the request to initiate the upload by using @CreateMultipartUpload@ .
--
-- To perform a multipart upload with encryption using an AWS KMS CMK, the requester must have permission to the @kms:Encrypt@ , @kms:Decrypt@ , @kms:ReEncrypt*@ , @kms:GenerateDataKey*@ , and @kms:DescribeKey@ actions on the key. These permissions are required because Amazon S3 must decrypt and read data from the encrypted file parts before it completes the multipart upload.
--
-- If your AWS Identity and Access Management (IAM) user or role is in the same AWS account as the AWS KMS CMK, then you must have these permissions on the key policy. If your IAM user or role belongs to a different account than the key, then you must have the permissions on both the key policy and your IAM user or role.
--
-- For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html Protecting Data Using Server-Side Encryption> .
--
--     * Access Permissions    * When copying an object, you can optionally specify the accounts or groups that should be granted specific permissions on the new object. There are two ways to grant the permissions using the request headers:
--
--     * Specify a canned ACL with the @x-amz-acl@ request header. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL Canned ACL> .
--
--     * Specify access permissions explicitly with the @x-amz-grant-read@ , @x-amz-grant-read-acp@ , @x-amz-grant-write-acp@ , and @x-amz-grant-full-control@ headers. These parameters map to the set of permissions that Amazon S3 supports in an ACL. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html Access Control List (ACL) Overview> .
--
--
--
-- You can use either a canned ACL or specify access permissions explicitly. You cannot do both.
--
--     * Server-Side- Encryption-Specific Request Headers    * You can optionally tell Amazon S3 to encrypt data at rest using server-side encryption. Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. The option you use depends on whether you want to use AWS managed encryption keys or provide your own encryption key.
--
--     * Use encryption keys managed by Amazon S3 or customer master keys (CMKs) stored in AWS Key Management Service (AWS KMS) – If you want AWS to manage the keys used to encrypt data, specify the following headers in the request.
--
--     * x-amz-server-side-encryption
--
--     * x-amz-server-side-encryption-aws-kms-key-id
--
--     * x-amz-server-side-encryption-context
--
--
--
-- /Important:/ All GET and PUT requests for an object protected by AWS KMS fail if you don't make them with SSL or by using SigV4.
--
-- For more information about server-side encryption with CMKs stored in AWS KMS (SSE-KMS), see <https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html Protecting Data Using Server-Side Encryption with CMKs stored in AWS KMS> .
--
--     * Use customer-provided encryption keys – If you want to manage your own encryption keys, provide all the following headers in the request.
--
--     * x-amz-server-side-encryption-customer-algorithm
--
--     * x-amz-server-side-encryption-customer-key
--
--     * x-amz-server-side-encryption-customer-key-MD5
--
--
--
-- For more information about server-side encryption with CMKs stored in AWS KMS (SSE-KMS), see <https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html Protecting Data Using Server-Side Encryption with CMKs stored in AWS KMS> .
--
--
--
--     * Access-Control-List (ACL)-Specific Request Headers    * You also can use the following access control–related headers with this operation. By default, all objects are private. Only the owner has full access control. When adding a new object, you can grant permissions to individual AWS accounts or to predefined groups defined by Amazon S3. These permissions are then added to the access control list (ACL) on the object. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html Using ACLs> . With this operation, you can grant access permissions using one of the following two methods:
--
--     * Specify a canned ACL (@x-amz-acl@ ) — Amazon S3 supports a set of predefined ACLs, known as /canned ACLs/ . Each canned ACL has a predefined set of grantees and permissions. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL Canned ACL> .
--
--     * Specify access permissions explicitly — To explicitly grant access permissions to specific AWS accounts or groups, use the following headers. Each header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html Access Control List (ACL) Overview> . In the header, you specify a list of grantees who get the specific permission. To grant permissions explicitly, use:
--
--     * x-amz-grant-read
--
--     * x-amz-grant-write
--
--     * x-amz-grant-read-acp
--
--     * x-amz-grant-write-acp
--
--     * x-amz-grant-full-control
--
--
--
-- You specify each grantee as a type=value pair, where the type is one of the following:
--
--     * @id@ – if the value specified is the canonical user ID of an AWS account
--
--     * @uri@ – if you are granting permissions to a predefined group
--
--     * @emailAddress@ – if the value specified is the email address of an AWS account
--
--
--
-- For example, the following @x-amz-grant-read@ header grants the AWS accounts identified by account IDs permissions to read object data and its metadata:
--
-- @x-amz-grant-read: id="11112222333", id="444455556666" @
--
--
--
--
--
-- The following operations are related to @CreateMultipartUpload@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html CompleteMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html AbortMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html ListParts>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html ListMultipartUploads>
module Network.AWS.S3.CreateMultipartUpload
  ( -- * Creating a Request
    createMultipartUpload,
    CreateMultipartUpload,

    -- * Request Lenses
    cWebsiteRedirectLocation,
    cGrantRead,
    cContentType,
    cExpectedBucketOwner,
    cContentDisposition,
    cContentLanguage,
    cSSEKMSEncryptionContext,
    cMetadata,
    cContentEncoding,
    cSSEKMSKeyId,
    cSSECustomerKeyMD5,
    cStorageClass,
    cBucketKeyEnabled,
    cGrantWriteACP,
    cServerSideEncryption,
    cObjectLockLegalHoldStatus,
    cGrantReadACP,
    cACL,
    cSSECustomerAlgorithm,
    cRequestPayer,
    cSSECustomerKey,
    cCacheControl,
    cExpires,
    cObjectLockMode,
    cObjectLockRetainUntilDate,
    cTagging,
    cGrantFullControl,
    cBucket,
    cKey,

    -- * Destructuring the Response
    createMultipartUploadResponse,
    CreateMultipartUploadResponse,

    -- * Response Lenses
    crsRequestCharged,
    crsKey,
    crsUploadId,
    crsAbortDate,
    crsSSEKMSEncryptionContext,
    crsSSEKMSKeyId,
    crsSSECustomerKeyMD5,
    crsBucketKeyEnabled,
    crsServerSideEncryption,
    crsAbortRuleId,
    crsSSECustomerAlgorithm,
    crsBucket,
    crsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'createMultipartUpload' smart constructor.
data CreateMultipartUpload = CreateMultipartUpload'
  { _cWebsiteRedirectLocation ::
      !(Maybe Text),
    _cGrantRead ::
      !(Maybe Text),
    _cContentType ::
      !(Maybe Text),
    _cExpectedBucketOwner ::
      !(Maybe Text),
    _cContentDisposition ::
      !(Maybe Text),
    _cContentLanguage ::
      !(Maybe Text),
    _cSSEKMSEncryptionContext ::
      !(Maybe (Sensitive Text)),
    _cMetadata ::
      !(Map Text Text),
    _cContentEncoding ::
      !(Maybe Text),
    _cSSEKMSKeyId ::
      !(Maybe (Sensitive Text)),
    _cSSECustomerKeyMD5 ::
      !(Maybe Text),
    _cStorageClass ::
      !(Maybe StorageClass),
    _cBucketKeyEnabled ::
      !(Maybe Bool),
    _cGrantWriteACP ::
      !(Maybe Text),
    _cServerSideEncryption ::
      !( Maybe
           ServerSideEncryption
       ),
    _cObjectLockLegalHoldStatus ::
      !( Maybe
           ObjectLockLegalHoldStatus
       ),
    _cGrantReadACP ::
      !(Maybe Text),
    _cACL ::
      !(Maybe ObjectCannedACL),
    _cSSECustomerAlgorithm ::
      !(Maybe Text),
    _cRequestPayer ::
      !(Maybe RequestPayer),
    _cSSECustomerKey ::
      !(Maybe (Sensitive Text)),
    _cCacheControl ::
      !(Maybe Text),
    _cExpires ::
      !(Maybe ISO8601),
    _cObjectLockMode ::
      !(Maybe ObjectLockMode),
    _cObjectLockRetainUntilDate ::
      !(Maybe ISO8601),
    _cTagging :: !(Maybe Text),
    _cGrantFullControl ::
      !(Maybe Text),
    _cBucket :: !BucketName,
    _cKey :: !ObjectKey
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateMultipartUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cWebsiteRedirectLocation' - If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
--
-- * 'cGrantRead' - Allows grantee to read the object data and its metadata. This action is not supported by Amazon S3 on Outposts.
--
-- * 'cContentType' - A standard MIME type describing the format of the object data.
--
-- * 'cExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'cContentDisposition' - Specifies presentational information for the object.
--
-- * 'cContentLanguage' - The language the content is in.
--
-- * 'cSSEKMSEncryptionContext' - Specifies the AWS KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
--
-- * 'cMetadata' - A map of metadata to store with the object in S3.
--
-- * 'cContentEncoding' - Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
--
-- * 'cSSEKMSKeyId' - Specifies the ID of the symmetric customer managed AWS KMS CMK to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. For information about configuring using any of the officially supported AWS SDKs and AWS CLI, see <https://docs.aws.amazon.com/http:/docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version Specifying the Signature Version in Request Authentication> in the /Amazon S3 Developer Guide/ .
--
-- * 'cSSECustomerKeyMD5' - Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
--
-- * 'cStorageClass' - By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS Storage Class. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html Storage Classes> in the /Amazon S3 Service Developer Guide/ .
--
-- * 'cBucketKeyEnabled' - Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using AWS KMS (SSE-KMS). Setting this header to @true@ causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS. Specifying this header with an object operation doesn’t affect bucket-level settings for S3 Bucket Key.
--
-- * 'cGrantWriteACP' - Allows grantee to write the ACL for the applicable object. This action is not supported by Amazon S3 on Outposts.
--
-- * 'cServerSideEncryption' - The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
--
-- * 'cObjectLockLegalHoldStatus' - Specifies whether you want to apply a Legal Hold to the uploaded object.
--
-- * 'cGrantReadACP' - Allows grantee to read the object ACL. This action is not supported by Amazon S3 on Outposts.
--
-- * 'cACL' - The canned ACL to apply to the object. This action is not supported by Amazon S3 on Outposts.
--
-- * 'cSSECustomerAlgorithm' - Specifies the algorithm to use to when encrypting the object (for example, AES256).
--
-- * 'cRequestPayer' - Undocumented member.
--
-- * 'cSSECustomerKey' - Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the @x-amz-server-side-encryption-customer-algorithm@ header.
--
-- * 'cCacheControl' - Specifies caching behavior along the request/reply chain.
--
-- * 'cExpires' - The date and time at which the object is no longer cacheable.
--
-- * 'cObjectLockMode' - Specifies the Object Lock mode that you want to apply to the uploaded object.
--
-- * 'cObjectLockRetainUntilDate' - Specifies the date and time when you want the Object Lock to expire.
--
-- * 'cTagging' - The tag-set for the object. The tag-set must be encoded as URL Query parameters.
--
-- * 'cGrantFullControl' - Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object. This action is not supported by Amazon S3 on Outposts.
--
-- * 'cBucket' - The name of the bucket to which to initiate the upload When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'cKey' - Object key for which the multipart upload is to be initiated.
createMultipartUpload ::
  -- | 'cBucket'
  BucketName ->
  -- | 'cKey'
  ObjectKey ->
  CreateMultipartUpload
createMultipartUpload pBucket_ pKey_ =
  CreateMultipartUpload'
    { _cWebsiteRedirectLocation =
        Nothing,
      _cGrantRead = Nothing,
      _cContentType = Nothing,
      _cExpectedBucketOwner = Nothing,
      _cContentDisposition = Nothing,
      _cContentLanguage = Nothing,
      _cSSEKMSEncryptionContext = Nothing,
      _cMetadata = mempty,
      _cContentEncoding = Nothing,
      _cSSEKMSKeyId = Nothing,
      _cSSECustomerKeyMD5 = Nothing,
      _cStorageClass = Nothing,
      _cBucketKeyEnabled = Nothing,
      _cGrantWriteACP = Nothing,
      _cServerSideEncryption = Nothing,
      _cObjectLockLegalHoldStatus = Nothing,
      _cGrantReadACP = Nothing,
      _cACL = Nothing,
      _cSSECustomerAlgorithm = Nothing,
      _cRequestPayer = Nothing,
      _cSSECustomerKey = Nothing,
      _cCacheControl = Nothing,
      _cExpires = Nothing,
      _cObjectLockMode = Nothing,
      _cObjectLockRetainUntilDate = Nothing,
      _cTagging = Nothing,
      _cGrantFullControl = Nothing,
      _cBucket = pBucket_,
      _cKey = pKey_
    }

-- | If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
cWebsiteRedirectLocation :: Lens' CreateMultipartUpload (Maybe Text)
cWebsiteRedirectLocation = lens _cWebsiteRedirectLocation (\s a -> s {_cWebsiteRedirectLocation = a})

-- | Allows grantee to read the object data and its metadata. This action is not supported by Amazon S3 on Outposts.
cGrantRead :: Lens' CreateMultipartUpload (Maybe Text)
cGrantRead = lens _cGrantRead (\s a -> s {_cGrantRead = a})

-- | A standard MIME type describing the format of the object data.
cContentType :: Lens' CreateMultipartUpload (Maybe Text)
cContentType = lens _cContentType (\s a -> s {_cContentType = a})

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
cExpectedBucketOwner :: Lens' CreateMultipartUpload (Maybe Text)
cExpectedBucketOwner = lens _cExpectedBucketOwner (\s a -> s {_cExpectedBucketOwner = a})

-- | Specifies presentational information for the object.
cContentDisposition :: Lens' CreateMultipartUpload (Maybe Text)
cContentDisposition = lens _cContentDisposition (\s a -> s {_cContentDisposition = a})

-- | The language the content is in.
cContentLanguage :: Lens' CreateMultipartUpload (Maybe Text)
cContentLanguage = lens _cContentLanguage (\s a -> s {_cContentLanguage = a})

-- | Specifies the AWS KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
cSSEKMSEncryptionContext :: Lens' CreateMultipartUpload (Maybe Text)
cSSEKMSEncryptionContext = lens _cSSEKMSEncryptionContext (\s a -> s {_cSSEKMSEncryptionContext = a}) . mapping _Sensitive

-- | A map of metadata to store with the object in S3.
cMetadata :: Lens' CreateMultipartUpload (HashMap Text Text)
cMetadata = lens _cMetadata (\s a -> s {_cMetadata = a}) . _Map

-- | Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
cContentEncoding :: Lens' CreateMultipartUpload (Maybe Text)
cContentEncoding = lens _cContentEncoding (\s a -> s {_cContentEncoding = a})

-- | Specifies the ID of the symmetric customer managed AWS KMS CMK to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. For information about configuring using any of the officially supported AWS SDKs and AWS CLI, see <https://docs.aws.amazon.com/http:/docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version Specifying the Signature Version in Request Authentication> in the /Amazon S3 Developer Guide/ .
cSSEKMSKeyId :: Lens' CreateMultipartUpload (Maybe Text)
cSSEKMSKeyId = lens _cSSEKMSKeyId (\s a -> s {_cSSEKMSKeyId = a}) . mapping _Sensitive

-- | Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
cSSECustomerKeyMD5 :: Lens' CreateMultipartUpload (Maybe Text)
cSSECustomerKeyMD5 = lens _cSSECustomerKeyMD5 (\s a -> s {_cSSECustomerKeyMD5 = a})

-- | By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS Storage Class. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html Storage Classes> in the /Amazon S3 Service Developer Guide/ .
cStorageClass :: Lens' CreateMultipartUpload (Maybe StorageClass)
cStorageClass = lens _cStorageClass (\s a -> s {_cStorageClass = a})

-- | Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using AWS KMS (SSE-KMS). Setting this header to @true@ causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS. Specifying this header with an object operation doesn’t affect bucket-level settings for S3 Bucket Key.
cBucketKeyEnabled :: Lens' CreateMultipartUpload (Maybe Bool)
cBucketKeyEnabled = lens _cBucketKeyEnabled (\s a -> s {_cBucketKeyEnabled = a})

-- | Allows grantee to write the ACL for the applicable object. This action is not supported by Amazon S3 on Outposts.
cGrantWriteACP :: Lens' CreateMultipartUpload (Maybe Text)
cGrantWriteACP = lens _cGrantWriteACP (\s a -> s {_cGrantWriteACP = a})

-- | The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
cServerSideEncryption :: Lens' CreateMultipartUpload (Maybe ServerSideEncryption)
cServerSideEncryption = lens _cServerSideEncryption (\s a -> s {_cServerSideEncryption = a})

-- | Specifies whether you want to apply a Legal Hold to the uploaded object.
cObjectLockLegalHoldStatus :: Lens' CreateMultipartUpload (Maybe ObjectLockLegalHoldStatus)
cObjectLockLegalHoldStatus = lens _cObjectLockLegalHoldStatus (\s a -> s {_cObjectLockLegalHoldStatus = a})

-- | Allows grantee to read the object ACL. This action is not supported by Amazon S3 on Outposts.
cGrantReadACP :: Lens' CreateMultipartUpload (Maybe Text)
cGrantReadACP = lens _cGrantReadACP (\s a -> s {_cGrantReadACP = a})

-- | The canned ACL to apply to the object. This action is not supported by Amazon S3 on Outposts.
cACL :: Lens' CreateMultipartUpload (Maybe ObjectCannedACL)
cACL = lens _cACL (\s a -> s {_cACL = a})

-- | Specifies the algorithm to use to when encrypting the object (for example, AES256).
cSSECustomerAlgorithm :: Lens' CreateMultipartUpload (Maybe Text)
cSSECustomerAlgorithm = lens _cSSECustomerAlgorithm (\s a -> s {_cSSECustomerAlgorithm = a})

-- | Undocumented member.
cRequestPayer :: Lens' CreateMultipartUpload (Maybe RequestPayer)
cRequestPayer = lens _cRequestPayer (\s a -> s {_cRequestPayer = a})

-- | Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the @x-amz-server-side-encryption-customer-algorithm@ header.
cSSECustomerKey :: Lens' CreateMultipartUpload (Maybe Text)
cSSECustomerKey = lens _cSSECustomerKey (\s a -> s {_cSSECustomerKey = a}) . mapping _Sensitive

-- | Specifies caching behavior along the request/reply chain.
cCacheControl :: Lens' CreateMultipartUpload (Maybe Text)
cCacheControl = lens _cCacheControl (\s a -> s {_cCacheControl = a})

-- | The date and time at which the object is no longer cacheable.
cExpires :: Lens' CreateMultipartUpload (Maybe UTCTime)
cExpires = lens _cExpires (\s a -> s {_cExpires = a}) . mapping _Time

-- | Specifies the Object Lock mode that you want to apply to the uploaded object.
cObjectLockMode :: Lens' CreateMultipartUpload (Maybe ObjectLockMode)
cObjectLockMode = lens _cObjectLockMode (\s a -> s {_cObjectLockMode = a})

-- | Specifies the date and time when you want the Object Lock to expire.
cObjectLockRetainUntilDate :: Lens' CreateMultipartUpload (Maybe UTCTime)
cObjectLockRetainUntilDate = lens _cObjectLockRetainUntilDate (\s a -> s {_cObjectLockRetainUntilDate = a}) . mapping _Time

-- | The tag-set for the object. The tag-set must be encoded as URL Query parameters.
cTagging :: Lens' CreateMultipartUpload (Maybe Text)
cTagging = lens _cTagging (\s a -> s {_cTagging = a})

-- | Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object. This action is not supported by Amazon S3 on Outposts.
cGrantFullControl :: Lens' CreateMultipartUpload (Maybe Text)
cGrantFullControl = lens _cGrantFullControl (\s a -> s {_cGrantFullControl = a})

-- | The name of the bucket to which to initiate the upload When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
cBucket :: Lens' CreateMultipartUpload BucketName
cBucket = lens _cBucket (\s a -> s {_cBucket = a})

-- | Object key for which the multipart upload is to be initiated.
cKey :: Lens' CreateMultipartUpload ObjectKey
cKey = lens _cKey (\s a -> s {_cKey = a})

instance AWSRequest CreateMultipartUpload where
  type
    Rs CreateMultipartUpload =
      CreateMultipartUploadResponse
  request = post s3
  response =
    receiveXML
      ( \s h x ->
          CreateMultipartUploadResponse'
            <$> (h .#? "x-amz-request-charged")
            <*> (x .@? "Key")
            <*> (x .@? "UploadId")
            <*> (h .#? "x-amz-abort-date")
            <*> (h .#? "x-amz-server-side-encryption-context")
            <*> (h .#? "x-amz-server-side-encryption-aws-kms-key-id")
            <*> ( h
                    .#? "x-amz-server-side-encryption-customer-key-MD5"
                )
            <*> ( h
                    .#? "x-amz-server-side-encryption-bucket-key-enabled"
                )
            <*> (h .#? "x-amz-server-side-encryption")
            <*> (h .#? "x-amz-abort-rule-id")
            <*> ( h
                    .#? "x-amz-server-side-encryption-customer-algorithm"
                )
            <*> (x .@? "Bucket")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateMultipartUpload

instance NFData CreateMultipartUpload

instance ToHeaders CreateMultipartUpload where
  toHeaders CreateMultipartUpload' {..} =
    mconcat
      [ "x-amz-website-redirect-location"
          =# _cWebsiteRedirectLocation,
        "x-amz-grant-read" =# _cGrantRead,
        "Content-Type" =# _cContentType,
        "x-amz-expected-bucket-owner"
          =# _cExpectedBucketOwner,
        "Content-Disposition" =# _cContentDisposition,
        "Content-Language" =# _cContentLanguage,
        "x-amz-server-side-encryption-context"
          =# _cSSEKMSEncryptionContext,
        "x-amz-meta-" =# _cMetadata,
        "Content-Encoding" =# _cContentEncoding,
        "x-amz-server-side-encryption-aws-kms-key-id"
          =# _cSSEKMSKeyId,
        "x-amz-server-side-encryption-customer-key-MD5"
          =# _cSSECustomerKeyMD5,
        "x-amz-storage-class" =# _cStorageClass,
        "x-amz-server-side-encryption-bucket-key-enabled"
          =# _cBucketKeyEnabled,
        "x-amz-grant-write-acp" =# _cGrantWriteACP,
        "x-amz-server-side-encryption"
          =# _cServerSideEncryption,
        "x-amz-object-lock-legal-hold"
          =# _cObjectLockLegalHoldStatus,
        "x-amz-grant-read-acp" =# _cGrantReadACP,
        "x-amz-acl" =# _cACL,
        "x-amz-server-side-encryption-customer-algorithm"
          =# _cSSECustomerAlgorithm,
        "x-amz-request-payer" =# _cRequestPayer,
        "x-amz-server-side-encryption-customer-key"
          =# _cSSECustomerKey,
        "Cache-Control" =# _cCacheControl,
        "Expires" =# _cExpires,
        "x-amz-object-lock-mode" =# _cObjectLockMode,
        "x-amz-object-lock-retain-until-date"
          =# _cObjectLockRetainUntilDate,
        "x-amz-tagging" =# _cTagging,
        "x-amz-grant-full-control" =# _cGrantFullControl
      ]

instance ToPath CreateMultipartUpload where
  toPath CreateMultipartUpload' {..} =
    mconcat ["/", toBS _cBucket, "/", toBS _cKey]

instance ToQuery CreateMultipartUpload where
  toQuery = const (mconcat ["uploads"])

-- | /See:/ 'createMultipartUploadResponse' smart constructor.
data CreateMultipartUploadResponse = CreateMultipartUploadResponse'
  { _crsRequestCharged ::
      !( Maybe
           RequestCharged
       ),
    _crsKey ::
      !( Maybe
           ObjectKey
       ),
    _crsUploadId ::
      !( Maybe
           Text
       ),
    _crsAbortDate ::
      !( Maybe
           ISO8601
       ),
    _crsSSEKMSEncryptionContext ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _crsSSEKMSKeyId ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _crsSSECustomerKeyMD5 ::
      !( Maybe
           Text
       ),
    _crsBucketKeyEnabled ::
      !( Maybe
           Bool
       ),
    _crsServerSideEncryption ::
      !( Maybe
           ServerSideEncryption
       ),
    _crsAbortRuleId ::
      !( Maybe
           Text
       ),
    _crsSSECustomerAlgorithm ::
      !( Maybe
           Text
       ),
    _crsBucket ::
      !( Maybe
           BucketName
       ),
    _crsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateMultipartUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsRequestCharged' - Undocumented member.
--
-- * 'crsKey' - Object key for which the multipart upload was initiated.
--
-- * 'crsUploadId' - ID for the initiated multipart upload.
--
-- * 'crsAbortDate' - If the bucket has a lifecycle rule configured with an action to abort incomplete multipart uploads and the prefix in the lifecycle rule matches the object name in the request, the response includes this header. The header indicates when the initiated multipart upload becomes eligible for an abort operation. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy> . The response also includes the @x-amz-abort-rule-id@ header that provides the ID of the lifecycle configuration rule that defines this action.
--
-- * 'crsSSEKMSEncryptionContext' - If present, specifies the AWS KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
--
-- * 'crsSSEKMSKeyId' - If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for the object.
--
-- * 'crsSSECustomerKeyMD5' - If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
--
-- * 'crsBucketKeyEnabled' - Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).
--
-- * 'crsServerSideEncryption' - The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
--
-- * 'crsAbortRuleId' - This header is returned along with the @x-amz-abort-date@ header. It identifies the applicable lifecycle configuration rule that defines the action to abort incomplete multipart uploads.
--
-- * 'crsSSECustomerAlgorithm' - If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
--
-- * 'crsBucket' - The name of the bucket to which the multipart upload was initiated.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'crsResponseStatus' - -- | The response status code.
createMultipartUploadResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateMultipartUploadResponse
createMultipartUploadResponse pResponseStatus_ =
  CreateMultipartUploadResponse'
    { _crsRequestCharged =
        Nothing,
      _crsKey = Nothing,
      _crsUploadId = Nothing,
      _crsAbortDate = Nothing,
      _crsSSEKMSEncryptionContext = Nothing,
      _crsSSEKMSKeyId = Nothing,
      _crsSSECustomerKeyMD5 = Nothing,
      _crsBucketKeyEnabled = Nothing,
      _crsServerSideEncryption = Nothing,
      _crsAbortRuleId = Nothing,
      _crsSSECustomerAlgorithm = Nothing,
      _crsBucket = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
crsRequestCharged :: Lens' CreateMultipartUploadResponse (Maybe RequestCharged)
crsRequestCharged = lens _crsRequestCharged (\s a -> s {_crsRequestCharged = a})

-- | Object key for which the multipart upload was initiated.
crsKey :: Lens' CreateMultipartUploadResponse (Maybe ObjectKey)
crsKey = lens _crsKey (\s a -> s {_crsKey = a})

-- | ID for the initiated multipart upload.
crsUploadId :: Lens' CreateMultipartUploadResponse (Maybe Text)
crsUploadId = lens _crsUploadId (\s a -> s {_crsUploadId = a})

-- | If the bucket has a lifecycle rule configured with an action to abort incomplete multipart uploads and the prefix in the lifecycle rule matches the object name in the request, the response includes this header. The header indicates when the initiated multipart upload becomes eligible for an abort operation. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy> . The response also includes the @x-amz-abort-rule-id@ header that provides the ID of the lifecycle configuration rule that defines this action.
crsAbortDate :: Lens' CreateMultipartUploadResponse (Maybe UTCTime)
crsAbortDate = lens _crsAbortDate (\s a -> s {_crsAbortDate = a}) . mapping _Time

-- | If present, specifies the AWS KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
crsSSEKMSEncryptionContext :: Lens' CreateMultipartUploadResponse (Maybe Text)
crsSSEKMSEncryptionContext = lens _crsSSEKMSEncryptionContext (\s a -> s {_crsSSEKMSEncryptionContext = a}) . mapping _Sensitive

-- | If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for the object.
crsSSEKMSKeyId :: Lens' CreateMultipartUploadResponse (Maybe Text)
crsSSEKMSKeyId = lens _crsSSEKMSKeyId (\s a -> s {_crsSSEKMSKeyId = a}) . mapping _Sensitive

-- | If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
crsSSECustomerKeyMD5 :: Lens' CreateMultipartUploadResponse (Maybe Text)
crsSSECustomerKeyMD5 = lens _crsSSECustomerKeyMD5 (\s a -> s {_crsSSECustomerKeyMD5 = a})

-- | Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).
crsBucketKeyEnabled :: Lens' CreateMultipartUploadResponse (Maybe Bool)
crsBucketKeyEnabled = lens _crsBucketKeyEnabled (\s a -> s {_crsBucketKeyEnabled = a})

-- | The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
crsServerSideEncryption :: Lens' CreateMultipartUploadResponse (Maybe ServerSideEncryption)
crsServerSideEncryption = lens _crsServerSideEncryption (\s a -> s {_crsServerSideEncryption = a})

-- | This header is returned along with the @x-amz-abort-date@ header. It identifies the applicable lifecycle configuration rule that defines the action to abort incomplete multipart uploads.
crsAbortRuleId :: Lens' CreateMultipartUploadResponse (Maybe Text)
crsAbortRuleId = lens _crsAbortRuleId (\s a -> s {_crsAbortRuleId = a})

-- | If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
crsSSECustomerAlgorithm :: Lens' CreateMultipartUploadResponse (Maybe Text)
crsSSECustomerAlgorithm = lens _crsSSECustomerAlgorithm (\s a -> s {_crsSSECustomerAlgorithm = a})

-- | The name of the bucket to which the multipart upload was initiated.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
crsBucket :: Lens' CreateMultipartUploadResponse (Maybe BucketName)
crsBucket = lens _crsBucket (\s a -> s {_crsBucket = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateMultipartUploadResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateMultipartUploadResponse
