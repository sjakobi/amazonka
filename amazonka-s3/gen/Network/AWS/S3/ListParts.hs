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
-- Module      : Network.AWS.S3.ListParts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the parts that have been uploaded for a specific multipart upload. This operation must include the upload ID, which you obtain by sending the initiate multipart upload request (see <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html CreateMultipartUpload> ). This request returns a maximum of 1,000 uploaded parts. The default number of parts returned is 1,000 parts. You can restrict the number of parts returned by specifying the @max-parts@ request parameter. If your multipart upload consists of more than 1,000 parts, the response returns an @IsTruncated@ field with the value of true, and a @NextPartNumberMarker@ element. In subsequent @ListParts@ requests you can include the part-number-marker query string parameter and set its value to the @NextPartNumberMarker@ field value from the previous response.
--
--
-- For more information on multipart uploads, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html Uploading Objects Using Multipart Upload> .
--
-- For information on permissions required to use the multipart upload API, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html Multipart Upload API and Permissions> .
--
-- The following operations are related to @ListParts@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html CreateMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html CompleteMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html AbortMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html ListMultipartUploads>
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.S3.ListParts
  ( -- * Creating a Request
    listParts,
    ListParts,

    -- * Request Lenses
    lpExpectedBucketOwner,
    lpPartNumberMarker,
    lpMaxParts,
    lpRequestPayer,
    lpBucket,
    lpKey,
    lpUploadId,

    -- * Destructuring the Response
    listPartsResponse,
    ListPartsResponse,

    -- * Response Lenses
    lprrsRequestCharged,
    lprrsKey,
    lprrsNextPartNumberMarker,
    lprrsUploadId,
    lprrsAbortDate,
    lprrsPartNumberMarker,
    lprrsMaxParts,
    lprrsIsTruncated,
    lprrsStorageClass,
    lprrsParts,
    lprrsAbortRuleId,
    lprrsOwner,
    lprrsBucket,
    lprrsInitiator,
    lprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'listParts' smart constructor.
data ListParts = ListParts'
  { _lpExpectedBucketOwner ::
      !(Maybe Text),
    _lpPartNumberMarker :: !(Maybe Int),
    _lpMaxParts :: !(Maybe Int),
    _lpRequestPayer :: !(Maybe RequestPayer),
    _lpBucket :: !BucketName,
    _lpKey :: !ObjectKey,
    _lpUploadId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListParts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'lpPartNumberMarker' - Specifies the part after which listing should begin. Only parts with higher part numbers will be listed.
--
-- * 'lpMaxParts' - Sets the maximum number of parts to return.
--
-- * 'lpRequestPayer' - Undocumented member.
--
-- * 'lpBucket' - The name of the bucket to which the parts are being uploaded.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'lpKey' - Object key for which the multipart upload was initiated.
--
-- * 'lpUploadId' - Upload ID identifying the multipart upload whose parts are being listed.
listParts ::
  -- | 'lpBucket'
  BucketName ->
  -- | 'lpKey'
  ObjectKey ->
  -- | 'lpUploadId'
  Text ->
  ListParts
listParts pBucket_ pKey_ pUploadId_ =
  ListParts'
    { _lpExpectedBucketOwner = Nothing,
      _lpPartNumberMarker = Nothing,
      _lpMaxParts = Nothing,
      _lpRequestPayer = Nothing,
      _lpBucket = pBucket_,
      _lpKey = pKey_,
      _lpUploadId = pUploadId_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
lpExpectedBucketOwner :: Lens' ListParts (Maybe Text)
lpExpectedBucketOwner = lens _lpExpectedBucketOwner (\s a -> s {_lpExpectedBucketOwner = a})

-- | Specifies the part after which listing should begin. Only parts with higher part numbers will be listed.
lpPartNumberMarker :: Lens' ListParts (Maybe Int)
lpPartNumberMarker = lens _lpPartNumberMarker (\s a -> s {_lpPartNumberMarker = a})

-- | Sets the maximum number of parts to return.
lpMaxParts :: Lens' ListParts (Maybe Int)
lpMaxParts = lens _lpMaxParts (\s a -> s {_lpMaxParts = a})

-- | Undocumented member.
lpRequestPayer :: Lens' ListParts (Maybe RequestPayer)
lpRequestPayer = lens _lpRequestPayer (\s a -> s {_lpRequestPayer = a})

-- | The name of the bucket to which the parts are being uploaded.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
lpBucket :: Lens' ListParts BucketName
lpBucket = lens _lpBucket (\s a -> s {_lpBucket = a})

-- | Object key for which the multipart upload was initiated.
lpKey :: Lens' ListParts ObjectKey
lpKey = lens _lpKey (\s a -> s {_lpKey = a})

-- | Upload ID identifying the multipart upload whose parts are being listed.
lpUploadId :: Lens' ListParts Text
lpUploadId = lens _lpUploadId (\s a -> s {_lpUploadId = a})

instance AWSPager ListParts where
  page rq rs
    | stop (rs ^. lprrsIsTruncated) = Nothing
    | isNothing (rs ^. lprrsNextPartNumberMarker) =
      Nothing
    | otherwise =
      Just $
        rq
          & lpPartNumberMarker .~ rs ^. lprrsNextPartNumberMarker

instance AWSRequest ListParts where
  type Rs ListParts = ListPartsResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          ListPartsResponse'
            <$> (h .#? "x-amz-request-charged")
            <*> (x .@? "Key")
            <*> (x .@? "NextPartNumberMarker")
            <*> (x .@? "UploadId")
            <*> (h .#? "x-amz-abort-date")
            <*> (x .@? "PartNumberMarker")
            <*> (x .@? "MaxParts")
            <*> (x .@? "IsTruncated")
            <*> (x .@? "StorageClass")
            <*> (may (parseXMLList "Part") x)
            <*> (h .#? "x-amz-abort-rule-id")
            <*> (x .@? "Owner")
            <*> (x .@? "Bucket")
            <*> (x .@? "Initiator")
            <*> (pure (fromEnum s))
      )

instance Hashable ListParts

instance NFData ListParts

instance ToHeaders ListParts where
  toHeaders ListParts' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _lpExpectedBucketOwner,
        "x-amz-request-payer" =# _lpRequestPayer
      ]

instance ToPath ListParts where
  toPath ListParts' {..} =
    mconcat ["/", toBS _lpBucket, "/", toBS _lpKey]

instance ToQuery ListParts where
  toQuery ListParts' {..} =
    mconcat
      [ "part-number-marker" =: _lpPartNumberMarker,
        "max-parts" =: _lpMaxParts,
        "uploadId" =: _lpUploadId
      ]

-- | /See:/ 'listPartsResponse' smart constructor.
data ListPartsResponse = ListPartsResponse'
  { _lprrsRequestCharged ::
      !(Maybe RequestCharged),
    _lprrsKey :: !(Maybe ObjectKey),
    _lprrsNextPartNumberMarker ::
      !(Maybe Int),
    _lprrsUploadId :: !(Maybe Text),
    _lprrsAbortDate :: !(Maybe ISO8601),
    _lprrsPartNumberMarker ::
      !(Maybe Int),
    _lprrsMaxParts :: !(Maybe Int),
    _lprrsIsTruncated :: !(Maybe Bool),
    _lprrsStorageClass ::
      !(Maybe StorageClass),
    _lprrsParts :: !(Maybe [Part]),
    _lprrsAbortRuleId :: !(Maybe Text),
    _lprrsOwner :: !(Maybe Owner),
    _lprrsBucket :: !(Maybe BucketName),
    _lprrsInitiator ::
      !(Maybe Initiator),
    _lprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPartsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsRequestCharged' - Undocumented member.
--
-- * 'lprrsKey' - Object key for which the multipart upload was initiated.
--
-- * 'lprrsNextPartNumberMarker' - When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
--
-- * 'lprrsUploadId' - Upload ID identifying the multipart upload whose parts are being listed.
--
-- * 'lprrsAbortDate' - If the bucket has a lifecycle rule configured with an action to abort incomplete multipart uploads and the prefix in the lifecycle rule matches the object name in the request, then the response includes this header indicating when the initiated multipart upload will become eligible for abort operation. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy> . The response will also include the @x-amz-abort-rule-id@ header that will provide the ID of the lifecycle configuration rule that defines this action.
--
-- * 'lprrsPartNumberMarker' - When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
--
-- * 'lprrsMaxParts' - Maximum number of parts that were allowed in the response.
--
-- * 'lprrsIsTruncated' - Indicates whether the returned list of parts is truncated. A true value indicates that the list was truncated. A list can be truncated if the number of parts exceeds the limit returned in the MaxParts element.
--
-- * 'lprrsStorageClass' - Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the uploaded object.
--
-- * 'lprrsParts' - Container for elements related to a particular part. A response can contain zero or more @Part@ elements.
--
-- * 'lprrsAbortRuleId' - This header is returned along with the @x-amz-abort-date@ header. It identifies applicable lifecycle configuration rule that defines the action to abort incomplete multipart uploads.
--
-- * 'lprrsOwner' - Container element that identifies the object owner, after the object is created. If multipart upload is initiated by an IAM user, this element provides the parent account ID and display name.
--
-- * 'lprrsBucket' - The name of the bucket to which the multipart upload was initiated.
--
-- * 'lprrsInitiator' - Container element that identifies who initiated the multipart upload. If the initiator is an AWS account, this element provides the same information as the @Owner@ element. If the initiator is an IAM User, this element provides the user ARN and display name.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPartsResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPartsResponse
listPartsResponse pResponseStatus_ =
  ListPartsResponse'
    { _lprrsRequestCharged = Nothing,
      _lprrsKey = Nothing,
      _lprrsNextPartNumberMarker = Nothing,
      _lprrsUploadId = Nothing,
      _lprrsAbortDate = Nothing,
      _lprrsPartNumberMarker = Nothing,
      _lprrsMaxParts = Nothing,
      _lprrsIsTruncated = Nothing,
      _lprrsStorageClass = Nothing,
      _lprrsParts = Nothing,
      _lprrsAbortRuleId = Nothing,
      _lprrsOwner = Nothing,
      _lprrsBucket = Nothing,
      _lprrsInitiator = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lprrsRequestCharged :: Lens' ListPartsResponse (Maybe RequestCharged)
lprrsRequestCharged = lens _lprrsRequestCharged (\s a -> s {_lprrsRequestCharged = a})

-- | Object key for which the multipart upload was initiated.
lprrsKey :: Lens' ListPartsResponse (Maybe ObjectKey)
lprrsKey = lens _lprrsKey (\s a -> s {_lprrsKey = a})

-- | When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
lprrsNextPartNumberMarker :: Lens' ListPartsResponse (Maybe Int)
lprrsNextPartNumberMarker = lens _lprrsNextPartNumberMarker (\s a -> s {_lprrsNextPartNumberMarker = a})

-- | Upload ID identifying the multipart upload whose parts are being listed.
lprrsUploadId :: Lens' ListPartsResponse (Maybe Text)
lprrsUploadId = lens _lprrsUploadId (\s a -> s {_lprrsUploadId = a})

-- | If the bucket has a lifecycle rule configured with an action to abort incomplete multipart uploads and the prefix in the lifecycle rule matches the object name in the request, then the response includes this header indicating when the initiated multipart upload will become eligible for abort operation. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy> . The response will also include the @x-amz-abort-rule-id@ header that will provide the ID of the lifecycle configuration rule that defines this action.
lprrsAbortDate :: Lens' ListPartsResponse (Maybe UTCTime)
lprrsAbortDate = lens _lprrsAbortDate (\s a -> s {_lprrsAbortDate = a}) . mapping _Time

-- | When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
lprrsPartNumberMarker :: Lens' ListPartsResponse (Maybe Int)
lprrsPartNumberMarker = lens _lprrsPartNumberMarker (\s a -> s {_lprrsPartNumberMarker = a})

-- | Maximum number of parts that were allowed in the response.
lprrsMaxParts :: Lens' ListPartsResponse (Maybe Int)
lprrsMaxParts = lens _lprrsMaxParts (\s a -> s {_lprrsMaxParts = a})

-- | Indicates whether the returned list of parts is truncated. A true value indicates that the list was truncated. A list can be truncated if the number of parts exceeds the limit returned in the MaxParts element.
lprrsIsTruncated :: Lens' ListPartsResponse (Maybe Bool)
lprrsIsTruncated = lens _lprrsIsTruncated (\s a -> s {_lprrsIsTruncated = a})

-- | Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the uploaded object.
lprrsStorageClass :: Lens' ListPartsResponse (Maybe StorageClass)
lprrsStorageClass = lens _lprrsStorageClass (\s a -> s {_lprrsStorageClass = a})

-- | Container for elements related to a particular part. A response can contain zero or more @Part@ elements.
lprrsParts :: Lens' ListPartsResponse [Part]
lprrsParts = lens _lprrsParts (\s a -> s {_lprrsParts = a}) . _Default . _Coerce

-- | This header is returned along with the @x-amz-abort-date@ header. It identifies applicable lifecycle configuration rule that defines the action to abort incomplete multipart uploads.
lprrsAbortRuleId :: Lens' ListPartsResponse (Maybe Text)
lprrsAbortRuleId = lens _lprrsAbortRuleId (\s a -> s {_lprrsAbortRuleId = a})

-- | Container element that identifies the object owner, after the object is created. If multipart upload is initiated by an IAM user, this element provides the parent account ID and display name.
lprrsOwner :: Lens' ListPartsResponse (Maybe Owner)
lprrsOwner = lens _lprrsOwner (\s a -> s {_lprrsOwner = a})

-- | The name of the bucket to which the multipart upload was initiated.
lprrsBucket :: Lens' ListPartsResponse (Maybe BucketName)
lprrsBucket = lens _lprrsBucket (\s a -> s {_lprrsBucket = a})

-- | Container element that identifies who initiated the multipart upload. If the initiator is an AWS account, this element provides the same information as the @Owner@ element. If the initiator is an IAM User, this element provides the user ARN and display name.
lprrsInitiator :: Lens' ListPartsResponse (Maybe Initiator)
lprrsInitiator = lens _lprrsInitiator (\s a -> s {_lprrsInitiator = a})

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPartsResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPartsResponse
