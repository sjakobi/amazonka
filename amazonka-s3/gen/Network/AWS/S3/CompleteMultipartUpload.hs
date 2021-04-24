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
-- Module      : Network.AWS.S3.CompleteMultipartUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes a multipart upload by assembling previously uploaded parts.
--
--
-- You first initiate the multipart upload and then upload all parts using the <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart> operation. After successfully uploading all relevant parts of an upload, you call this operation to complete the upload. Upon receiving this request, Amazon S3 concatenates all the parts in ascending order by part number to create a new object. In the Complete Multipart Upload request, you must provide the parts list. You must ensure that the parts list is complete. This operation concatenates the parts that you provide in the list. For each part in the list, you must provide the part number and the @ETag@ value, returned after that part was uploaded.
--
-- Processing of a Complete Multipart Upload request could take several minutes to complete. After Amazon S3 begins processing the request, it sends an HTTP response header that specifies a 200 OK response. While processing is in progress, Amazon S3 periodically sends white space characters to keep the connection from timing out. Because a request could fail after the initial 200 OK response has been sent, it is important that you check the response body to determine whether the request succeeded.
--
-- Note that if @CompleteMultipartUpload@ fails, applications should be prepared to retry the failed requests. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/ErrorBestPractices.html Amazon S3 Error Best Practices> .
--
-- For more information about multipart uploads, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html Uploading Objects Using Multipart Upload> .
--
-- For information about permissions required to use the multipart upload API, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html Multipart Upload API and Permissions> .
--
-- @CompleteMultipartUpload@ has the following special errors:
--
--     * Error code: @EntityTooSmall@
--
--     * Description: Your proposed upload is smaller than the minimum allowed object size. Each part must be at least 5 MB in size, except the last part.
--
--     * 400 Bad Request
--
--
--
--     * Error code: @InvalidPart@
--
--     * Description: One or more of the specified parts could not be found. The part might not have been uploaded, or the specified entity tag might not have matched the part's entity tag.
--
--     * 400 Bad Request
--
--
--
--     * Error code: @InvalidPartOrder@
--
--     * Description: The list of parts was not in ascending order. The parts list must be specified in order by part number.
--
--     * 400 Bad Request
--
--
--
--     * Error code: @NoSuchUpload@
--
--     * Description: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.
--
--     * 404 Not Found
--
--
--
--
--
-- The following operations are related to @CompleteMultipartUpload@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html CreateMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html AbortMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html ListParts>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html ListMultipartUploads>
module Network.AWS.S3.CompleteMultipartUpload
  ( -- * Creating a Request
    completeMultipartUpload,
    CompleteMultipartUpload,

    -- * Request Lenses
    cmuExpectedBucketOwner,
    cmuRequestPayer,
    cmuMultipartUpload,
    cmuBucket,
    cmuKey,
    cmuUploadId,

    -- * Destructuring the Response
    completeMultipartUploadResponse,
    CompleteMultipartUploadResponse,

    -- * Response Lenses
    cmurrsETag,
    cmurrsRequestCharged,
    cmurrsKey,
    cmurrsExpiration,
    cmurrsSSEKMSKeyId,
    cmurrsVersionId,
    cmurrsBucketKeyEnabled,
    cmurrsServerSideEncryption,
    cmurrsBucket,
    cmurrsLocation,
    cmurrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'completeMultipartUpload' smart constructor.
data CompleteMultipartUpload = CompleteMultipartUpload'
  { _cmuExpectedBucketOwner ::
      !(Maybe Text),
    _cmuRequestPayer ::
      !(Maybe RequestPayer),
    _cmuMultipartUpload ::
      !( Maybe
           CompletedMultipartUpload
       ),
    _cmuBucket ::
      !BucketName,
    _cmuKey :: !ObjectKey,
    _cmuUploadId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CompleteMultipartUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmuExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'cmuRequestPayer' - Undocumented member.
--
-- * 'cmuMultipartUpload' - The container for the multipart upload request information.
--
-- * 'cmuBucket' - Name of the bucket to which the multipart upload was initiated.
--
-- * 'cmuKey' - Object key for which the multipart upload was initiated.
--
-- * 'cmuUploadId' - ID for the initiated multipart upload.
completeMultipartUpload ::
  -- | 'cmuBucket'
  BucketName ->
  -- | 'cmuKey'
  ObjectKey ->
  -- | 'cmuUploadId'
  Text ->
  CompleteMultipartUpload
completeMultipartUpload pBucket_ pKey_ pUploadId_ =
  CompleteMultipartUpload'
    { _cmuExpectedBucketOwner =
        Nothing,
      _cmuRequestPayer = Nothing,
      _cmuMultipartUpload = Nothing,
      _cmuBucket = pBucket_,
      _cmuKey = pKey_,
      _cmuUploadId = pUploadId_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
cmuExpectedBucketOwner :: Lens' CompleteMultipartUpload (Maybe Text)
cmuExpectedBucketOwner = lens _cmuExpectedBucketOwner (\s a -> s {_cmuExpectedBucketOwner = a})

-- | Undocumented member.
cmuRequestPayer :: Lens' CompleteMultipartUpload (Maybe RequestPayer)
cmuRequestPayer = lens _cmuRequestPayer (\s a -> s {_cmuRequestPayer = a})

-- | The container for the multipart upload request information.
cmuMultipartUpload :: Lens' CompleteMultipartUpload (Maybe CompletedMultipartUpload)
cmuMultipartUpload = lens _cmuMultipartUpload (\s a -> s {_cmuMultipartUpload = a})

-- | Name of the bucket to which the multipart upload was initiated.
cmuBucket :: Lens' CompleteMultipartUpload BucketName
cmuBucket = lens _cmuBucket (\s a -> s {_cmuBucket = a})

-- | Object key for which the multipart upload was initiated.
cmuKey :: Lens' CompleteMultipartUpload ObjectKey
cmuKey = lens _cmuKey (\s a -> s {_cmuKey = a})

-- | ID for the initiated multipart upload.
cmuUploadId :: Lens' CompleteMultipartUpload Text
cmuUploadId = lens _cmuUploadId (\s a -> s {_cmuUploadId = a})

instance AWSRequest CompleteMultipartUpload where
  type
    Rs CompleteMultipartUpload =
      CompleteMultipartUploadResponse
  request = postXML s3
  response =
    receiveXML
      ( \s h x ->
          CompleteMultipartUploadResponse'
            <$> (x .@? "ETag")
            <*> (h .#? "x-amz-request-charged")
            <*> (x .@? "Key")
            <*> (h .#? "x-amz-expiration")
            <*> (h .#? "x-amz-server-side-encryption-aws-kms-key-id")
            <*> (h .#? "x-amz-version-id")
            <*> ( h
                    .#? "x-amz-server-side-encryption-bucket-key-enabled"
                )
            <*> (h .#? "x-amz-server-side-encryption")
            <*> (x .@? "Bucket")
            <*> (x .@? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CompleteMultipartUpload

instance NFData CompleteMultipartUpload

instance ToElement CompleteMultipartUpload where
  toElement =
    mkElement
      "{http://s3.amazonaws.com/doc/2006-03-01/}CompleteMultipartUpload"
      . _cmuMultipartUpload

instance ToHeaders CompleteMultipartUpload where
  toHeaders CompleteMultipartUpload' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _cmuExpectedBucketOwner,
        "x-amz-request-payer" =# _cmuRequestPayer
      ]

instance ToPath CompleteMultipartUpload where
  toPath CompleteMultipartUpload' {..} =
    mconcat ["/", toBS _cmuBucket, "/", toBS _cmuKey]

instance ToQuery CompleteMultipartUpload where
  toQuery CompleteMultipartUpload' {..} =
    mconcat ["uploadId" =: _cmuUploadId]

-- | /See:/ 'completeMultipartUploadResponse' smart constructor.
data CompleteMultipartUploadResponse = CompleteMultipartUploadResponse'
  { _cmurrsETag ::
      !( Maybe
           ETag
       ),
    _cmurrsRequestCharged ::
      !( Maybe
           RequestCharged
       ),
    _cmurrsKey ::
      !( Maybe
           ObjectKey
       ),
    _cmurrsExpiration ::
      !( Maybe
           Text
       ),
    _cmurrsSSEKMSKeyId ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _cmurrsVersionId ::
      !( Maybe
           ObjectVersionId
       ),
    _cmurrsBucketKeyEnabled ::
      !( Maybe
           Bool
       ),
    _cmurrsServerSideEncryption ::
      !( Maybe
           ServerSideEncryption
       ),
    _cmurrsBucket ::
      !( Maybe
           BucketName
       ),
    _cmurrsLocation ::
      !( Maybe
           Text
       ),
    _cmurrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CompleteMultipartUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmurrsETag' - Entity tag that identifies the newly created object's data. Objects with different object data will have different entity tags. The entity tag is an opaque string. The entity tag may or may not be an MD5 digest of the object data. If the entity tag is not an MD5 digest of the object data, it will contain one or more nonhexadecimal characters and/or will consist of less than 32 or more than 32 hexadecimal digits.
--
-- * 'cmurrsRequestCharged' - Undocumented member.
--
-- * 'cmurrsKey' - The object key of the newly created object.
--
-- * 'cmurrsExpiration' - If the object expiration is configured, this will contain the expiration date (expiry-date) and rule ID (rule-id). The value of rule-id is URL encoded.
--
-- * 'cmurrsSSEKMSKeyId' - If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for the object.
--
-- * 'cmurrsVersionId' - Version ID of the newly created object, in case the bucket has versioning turned on.
--
-- * 'cmurrsBucketKeyEnabled' - Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).
--
-- * 'cmurrsServerSideEncryption' - If you specified server-side encryption either with an Amazon S3-managed encryption key or an AWS KMS customer master key (CMK) in your initiate multipart upload request, the response includes this header. It confirms the encryption algorithm that Amazon S3 used to encrypt the object.
--
-- * 'cmurrsBucket' - The name of the bucket that contains the newly created object. When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'cmurrsLocation' - The URI that identifies the newly created object.
--
-- * 'cmurrsResponseStatus' - -- | The response status code.
completeMultipartUploadResponse ::
  -- | 'cmurrsResponseStatus'
  Int ->
  CompleteMultipartUploadResponse
completeMultipartUploadResponse pResponseStatus_ =
  CompleteMultipartUploadResponse'
    { _cmurrsETag =
        Nothing,
      _cmurrsRequestCharged = Nothing,
      _cmurrsKey = Nothing,
      _cmurrsExpiration = Nothing,
      _cmurrsSSEKMSKeyId = Nothing,
      _cmurrsVersionId = Nothing,
      _cmurrsBucketKeyEnabled = Nothing,
      _cmurrsServerSideEncryption = Nothing,
      _cmurrsBucket = Nothing,
      _cmurrsLocation = Nothing,
      _cmurrsResponseStatus = pResponseStatus_
    }

-- | Entity tag that identifies the newly created object's data. Objects with different object data will have different entity tags. The entity tag is an opaque string. The entity tag may or may not be an MD5 digest of the object data. If the entity tag is not an MD5 digest of the object data, it will contain one or more nonhexadecimal characters and/or will consist of less than 32 or more than 32 hexadecimal digits.
cmurrsETag :: Lens' CompleteMultipartUploadResponse (Maybe ETag)
cmurrsETag = lens _cmurrsETag (\s a -> s {_cmurrsETag = a})

-- | Undocumented member.
cmurrsRequestCharged :: Lens' CompleteMultipartUploadResponse (Maybe RequestCharged)
cmurrsRequestCharged = lens _cmurrsRequestCharged (\s a -> s {_cmurrsRequestCharged = a})

-- | The object key of the newly created object.
cmurrsKey :: Lens' CompleteMultipartUploadResponse (Maybe ObjectKey)
cmurrsKey = lens _cmurrsKey (\s a -> s {_cmurrsKey = a})

-- | If the object expiration is configured, this will contain the expiration date (expiry-date) and rule ID (rule-id). The value of rule-id is URL encoded.
cmurrsExpiration :: Lens' CompleteMultipartUploadResponse (Maybe Text)
cmurrsExpiration = lens _cmurrsExpiration (\s a -> s {_cmurrsExpiration = a})

-- | If present, specifies the ID of the AWS Key Management Service (AWS KMS) symmetric customer managed customer master key (CMK) that was used for the object.
cmurrsSSEKMSKeyId :: Lens' CompleteMultipartUploadResponse (Maybe Text)
cmurrsSSEKMSKeyId = lens _cmurrsSSEKMSKeyId (\s a -> s {_cmurrsSSEKMSKeyId = a}) . mapping _Sensitive

-- | Version ID of the newly created object, in case the bucket has versioning turned on.
cmurrsVersionId :: Lens' CompleteMultipartUploadResponse (Maybe ObjectVersionId)
cmurrsVersionId = lens _cmurrsVersionId (\s a -> s {_cmurrsVersionId = a})

-- | Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with AWS KMS (SSE-KMS).
cmurrsBucketKeyEnabled :: Lens' CompleteMultipartUploadResponse (Maybe Bool)
cmurrsBucketKeyEnabled = lens _cmurrsBucketKeyEnabled (\s a -> s {_cmurrsBucketKeyEnabled = a})

-- | If you specified server-side encryption either with an Amazon S3-managed encryption key or an AWS KMS customer master key (CMK) in your initiate multipart upload request, the response includes this header. It confirms the encryption algorithm that Amazon S3 used to encrypt the object.
cmurrsServerSideEncryption :: Lens' CompleteMultipartUploadResponse (Maybe ServerSideEncryption)
cmurrsServerSideEncryption = lens _cmurrsServerSideEncryption (\s a -> s {_cmurrsServerSideEncryption = a})

-- | The name of the bucket that contains the newly created object. When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
cmurrsBucket :: Lens' CompleteMultipartUploadResponse (Maybe BucketName)
cmurrsBucket = lens _cmurrsBucket (\s a -> s {_cmurrsBucket = a})

-- | The URI that identifies the newly created object.
cmurrsLocation :: Lens' CompleteMultipartUploadResponse (Maybe Text)
cmurrsLocation = lens _cmurrsLocation (\s a -> s {_cmurrsLocation = a})

-- | -- | The response status code.
cmurrsResponseStatus :: Lens' CompleteMultipartUploadResponse Int
cmurrsResponseStatus = lens _cmurrsResponseStatus (\s a -> s {_cmurrsResponseStatus = a})

instance NFData CompleteMultipartUploadResponse
