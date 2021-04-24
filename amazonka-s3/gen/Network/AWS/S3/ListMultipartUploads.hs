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
-- Module      : Network.AWS.S3.ListMultipartUploads
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists in-progress multipart uploads. An in-progress multipart upload is a multipart upload that has been initiated using the Initiate Multipart Upload request, but has not yet been completed or aborted.
--
--
-- This operation returns at most 1,000 multipart uploads in the response. 1,000 multipart uploads is the maximum number of uploads a response can include, which is also the default value. You can further limit the number of uploads in a response by specifying the @max-uploads@ parameter in the response. If additional multipart uploads satisfy the list criteria, the response will contain an @IsTruncated@ element with the value true. To list the additional multipart uploads, use the @key-marker@ and @upload-id-marker@ request parameters.
--
-- In the response, the uploads are sorted by key. If your application has initiated more than one multipart upload using the same object key, then uploads in the response are first sorted by key. Additionally, uploads are sorted in ascending order within each key by the upload initiation time.
--
-- For more information on multipart uploads, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html Uploading Objects Using Multipart Upload> .
--
-- For information on permissions required to use the multipart upload API, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html Multipart Upload API and Permissions> .
--
-- The following operations are related to @ListMultipartUploads@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html CreateMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html CompleteMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html ListParts>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html AbortMultipartUpload>
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.S3.ListMultipartUploads
  ( -- * Creating a Request
    listMultipartUploads,
    ListMultipartUploads,

    -- * Request Lenses
    lmuExpectedBucketOwner,
    lmuEncodingType,
    lmuDelimiter,
    lmuPrefix,
    lmuKeyMarker,
    lmuMaxUploads,
    lmuUploadIdMarker,
    lmuBucket,

    -- * Destructuring the Response
    listMultipartUploadsResponse,
    ListMultipartUploadsResponse,

    -- * Response Lenses
    lmurrsCommonPrefixes,
    lmurrsEncodingType,
    lmurrsDelimiter,
    lmurrsUploads,
    lmurrsPrefix,
    lmurrsIsTruncated,
    lmurrsKeyMarker,
    lmurrsNextKeyMarker,
    lmurrsMaxUploads,
    lmurrsUploadIdMarker,
    lmurrsBucket,
    lmurrsNextUploadIdMarker,
    lmurrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'listMultipartUploads' smart constructor.
data ListMultipartUploads = ListMultipartUploads'
  { _lmuExpectedBucketOwner ::
      !(Maybe Text),
    _lmuEncodingType ::
      !(Maybe EncodingType),
    _lmuDelimiter ::
      !(Maybe Delimiter),
    _lmuPrefix :: !(Maybe Text),
    _lmuKeyMarker ::
      !(Maybe Text),
    _lmuMaxUploads ::
      !(Maybe Int),
    _lmuUploadIdMarker ::
      !(Maybe Text),
    _lmuBucket :: !BucketName
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMultipartUploads' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmuExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'lmuEncodingType' - Undocumented member.
--
-- * 'lmuDelimiter' - Character you use to group keys. All keys that contain the same string between the prefix, if specified, and the first occurrence of the delimiter after the prefix are grouped under a single result element, @CommonPrefixes@ . If you don't specify the prefix parameter, then the substring starts at the beginning of the key. The keys that are grouped under @CommonPrefixes@ result element are not returned elsewhere in the response.
--
-- * 'lmuPrefix' - Lists in-progress uploads only for those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different grouping of keys. (You can think of using prefix to make groups in the same way you'd use a folder in a file system.)
--
-- * 'lmuKeyMarker' - Together with upload-id-marker, this parameter specifies the multipart upload after which listing should begin. If @upload-id-marker@ is not specified, only the keys lexicographically greater than the specified @key-marker@ will be included in the list. If @upload-id-marker@ is specified, any multipart uploads for a key equal to the @key-marker@ might also be included, provided those multipart uploads have upload IDs lexicographically greater than the specified @upload-id-marker@ .
--
-- * 'lmuMaxUploads' - Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000 is the maximum number of uploads that can be returned in a response.
--
-- * 'lmuUploadIdMarker' - Together with key-marker, specifies the multipart upload after which listing should begin. If key-marker is not specified, the upload-id-marker parameter is ignored. Otherwise, any multipart uploads for a key equal to the key-marker might be included in the list only if they have an upload ID lexicographically greater than the specified @upload-id-marker@ .
--
-- * 'lmuBucket' - The name of the bucket to which the multipart upload was initiated.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
listMultipartUploads ::
  -- | 'lmuBucket'
  BucketName ->
  ListMultipartUploads
listMultipartUploads pBucket_ =
  ListMultipartUploads'
    { _lmuExpectedBucketOwner =
        Nothing,
      _lmuEncodingType = Nothing,
      _lmuDelimiter = Nothing,
      _lmuPrefix = Nothing,
      _lmuKeyMarker = Nothing,
      _lmuMaxUploads = Nothing,
      _lmuUploadIdMarker = Nothing,
      _lmuBucket = pBucket_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
lmuExpectedBucketOwner :: Lens' ListMultipartUploads (Maybe Text)
lmuExpectedBucketOwner = lens _lmuExpectedBucketOwner (\s a -> s {_lmuExpectedBucketOwner = a})

-- | Undocumented member.
lmuEncodingType :: Lens' ListMultipartUploads (Maybe EncodingType)
lmuEncodingType = lens _lmuEncodingType (\s a -> s {_lmuEncodingType = a})

-- | Character you use to group keys. All keys that contain the same string between the prefix, if specified, and the first occurrence of the delimiter after the prefix are grouped under a single result element, @CommonPrefixes@ . If you don't specify the prefix parameter, then the substring starts at the beginning of the key. The keys that are grouped under @CommonPrefixes@ result element are not returned elsewhere in the response.
lmuDelimiter :: Lens' ListMultipartUploads (Maybe Delimiter)
lmuDelimiter = lens _lmuDelimiter (\s a -> s {_lmuDelimiter = a})

-- | Lists in-progress uploads only for those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different grouping of keys. (You can think of using prefix to make groups in the same way you'd use a folder in a file system.)
lmuPrefix :: Lens' ListMultipartUploads (Maybe Text)
lmuPrefix = lens _lmuPrefix (\s a -> s {_lmuPrefix = a})

-- | Together with upload-id-marker, this parameter specifies the multipart upload after which listing should begin. If @upload-id-marker@ is not specified, only the keys lexicographically greater than the specified @key-marker@ will be included in the list. If @upload-id-marker@ is specified, any multipart uploads for a key equal to the @key-marker@ might also be included, provided those multipart uploads have upload IDs lexicographically greater than the specified @upload-id-marker@ .
lmuKeyMarker :: Lens' ListMultipartUploads (Maybe Text)
lmuKeyMarker = lens _lmuKeyMarker (\s a -> s {_lmuKeyMarker = a})

-- | Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000 is the maximum number of uploads that can be returned in a response.
lmuMaxUploads :: Lens' ListMultipartUploads (Maybe Int)
lmuMaxUploads = lens _lmuMaxUploads (\s a -> s {_lmuMaxUploads = a})

-- | Together with key-marker, specifies the multipart upload after which listing should begin. If key-marker is not specified, the upload-id-marker parameter is ignored. Otherwise, any multipart uploads for a key equal to the key-marker might be included in the list only if they have an upload ID lexicographically greater than the specified @upload-id-marker@ .
lmuUploadIdMarker :: Lens' ListMultipartUploads (Maybe Text)
lmuUploadIdMarker = lens _lmuUploadIdMarker (\s a -> s {_lmuUploadIdMarker = a})

-- | The name of the bucket to which the multipart upload was initiated.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
lmuBucket :: Lens' ListMultipartUploads BucketName
lmuBucket = lens _lmuBucket (\s a -> s {_lmuBucket = a})

instance AWSPager ListMultipartUploads where
  page rq rs
    | stop (rs ^. lmurrsIsTruncated) = Nothing
    | isNothing (rs ^. lmurrsNextKeyMarker)
        && isNothing (rs ^. lmurrsNextUploadIdMarker) =
      Nothing
    | otherwise =
      Just $
        rq & lmuKeyMarker .~ rs ^. lmurrsNextKeyMarker
          & lmuUploadIdMarker .~ rs ^. lmurrsNextUploadIdMarker

instance AWSRequest ListMultipartUploads where
  type
    Rs ListMultipartUploads =
      ListMultipartUploadsResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          ListMultipartUploadsResponse'
            <$> (may (parseXMLList "CommonPrefixes") x)
            <*> (x .@? "EncodingType")
            <*> (x .@? "Delimiter")
            <*> (may (parseXMLList "Upload") x)
            <*> (x .@? "Prefix")
            <*> (x .@? "IsTruncated")
            <*> (x .@? "KeyMarker")
            <*> (x .@? "NextKeyMarker")
            <*> (x .@? "MaxUploads")
            <*> (x .@? "UploadIdMarker")
            <*> (x .@? "Bucket")
            <*> (x .@? "NextUploadIdMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListMultipartUploads

instance NFData ListMultipartUploads

instance ToHeaders ListMultipartUploads where
  toHeaders ListMultipartUploads' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _lmuExpectedBucketOwner
      ]

instance ToPath ListMultipartUploads where
  toPath ListMultipartUploads' {..} =
    mconcat ["/", toBS _lmuBucket]

instance ToQuery ListMultipartUploads where
  toQuery ListMultipartUploads' {..} =
    mconcat
      [ "encoding-type" =: _lmuEncodingType,
        "delimiter" =: _lmuDelimiter,
        "prefix" =: _lmuPrefix,
        "key-marker" =: _lmuKeyMarker,
        "max-uploads" =: _lmuMaxUploads,
        "upload-id-marker" =: _lmuUploadIdMarker,
        "uploads"
      ]

-- | /See:/ 'listMultipartUploadsResponse' smart constructor.
data ListMultipartUploadsResponse = ListMultipartUploadsResponse'
  { _lmurrsCommonPrefixes ::
      !( Maybe
           [CommonPrefix]
       ),
    _lmurrsEncodingType ::
      !( Maybe
           EncodingType
       ),
    _lmurrsDelimiter ::
      !( Maybe
           Delimiter
       ),
    _lmurrsUploads ::
      !( Maybe
           [MultipartUpload]
       ),
    _lmurrsPrefix ::
      !(Maybe Text),
    _lmurrsIsTruncated ::
      !(Maybe Bool),
    _lmurrsKeyMarker ::
      !(Maybe Text),
    _lmurrsNextKeyMarker ::
      !(Maybe Text),
    _lmurrsMaxUploads ::
      !(Maybe Int),
    _lmurrsUploadIdMarker ::
      !(Maybe Text),
    _lmurrsBucket ::
      !( Maybe
           BucketName
       ),
    _lmurrsNextUploadIdMarker ::
      !(Maybe Text),
    _lmurrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListMultipartUploadsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmurrsCommonPrefixes' - If you specify a delimiter in the request, then the result returns each distinct key prefix containing the delimiter in a @CommonPrefixes@ element. The distinct key prefixes are returned in the @Prefix@ child element.
--
-- * 'lmurrsEncodingType' - Encoding type used by Amazon S3 to encode object keys in the response. If you specify @encoding-type@ request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements: @Delimiter@ , @KeyMarker@ , @Prefix@ , @NextKeyMarker@ , @Key@ .
--
-- * 'lmurrsDelimiter' - Contains the delimiter you specified in the request. If you don't specify a delimiter in your request, this element is absent from the response.
--
-- * 'lmurrsUploads' - Container for elements related to a particular multipart upload. A response can contain zero or more @Upload@ elements.
--
-- * 'lmurrsPrefix' - When a prefix is provided in the request, this field contains the specified prefix. The result contains only keys starting with the specified prefix.
--
-- * 'lmurrsIsTruncated' - Indicates whether the returned list of multipart uploads is truncated. A value of true indicates that the list was truncated. The list can be truncated if the number of multipart uploads exceeds the limit allowed or specified by max uploads.
--
-- * 'lmurrsKeyMarker' - The key at or after which the listing began.
--
-- * 'lmurrsNextKeyMarker' - When a list is truncated, this element specifies the value that should be used for the key-marker request parameter in a subsequent request.
--
-- * 'lmurrsMaxUploads' - Maximum number of multipart uploads that could have been included in the response.
--
-- * 'lmurrsUploadIdMarker' - Upload ID after which listing began.
--
-- * 'lmurrsBucket' - The name of the bucket to which the multipart upload was initiated.
--
-- * 'lmurrsNextUploadIdMarker' - When a list is truncated, this element specifies the value that should be used for the @upload-id-marker@ request parameter in a subsequent request.
--
-- * 'lmurrsResponseStatus' - -- | The response status code.
listMultipartUploadsResponse ::
  -- | 'lmurrsResponseStatus'
  Int ->
  ListMultipartUploadsResponse
listMultipartUploadsResponse pResponseStatus_ =
  ListMultipartUploadsResponse'
    { _lmurrsCommonPrefixes =
        Nothing,
      _lmurrsEncodingType = Nothing,
      _lmurrsDelimiter = Nothing,
      _lmurrsUploads = Nothing,
      _lmurrsPrefix = Nothing,
      _lmurrsIsTruncated = Nothing,
      _lmurrsKeyMarker = Nothing,
      _lmurrsNextKeyMarker = Nothing,
      _lmurrsMaxUploads = Nothing,
      _lmurrsUploadIdMarker = Nothing,
      _lmurrsBucket = Nothing,
      _lmurrsNextUploadIdMarker = Nothing,
      _lmurrsResponseStatus = pResponseStatus_
    }

-- | If you specify a delimiter in the request, then the result returns each distinct key prefix containing the delimiter in a @CommonPrefixes@ element. The distinct key prefixes are returned in the @Prefix@ child element.
lmurrsCommonPrefixes :: Lens' ListMultipartUploadsResponse [CommonPrefix]
lmurrsCommonPrefixes = lens _lmurrsCommonPrefixes (\s a -> s {_lmurrsCommonPrefixes = a}) . _Default . _Coerce

-- | Encoding type used by Amazon S3 to encode object keys in the response. If you specify @encoding-type@ request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements: @Delimiter@ , @KeyMarker@ , @Prefix@ , @NextKeyMarker@ , @Key@ .
lmurrsEncodingType :: Lens' ListMultipartUploadsResponse (Maybe EncodingType)
lmurrsEncodingType = lens _lmurrsEncodingType (\s a -> s {_lmurrsEncodingType = a})

-- | Contains the delimiter you specified in the request. If you don't specify a delimiter in your request, this element is absent from the response.
lmurrsDelimiter :: Lens' ListMultipartUploadsResponse (Maybe Delimiter)
lmurrsDelimiter = lens _lmurrsDelimiter (\s a -> s {_lmurrsDelimiter = a})

-- | Container for elements related to a particular multipart upload. A response can contain zero or more @Upload@ elements.
lmurrsUploads :: Lens' ListMultipartUploadsResponse [MultipartUpload]
lmurrsUploads = lens _lmurrsUploads (\s a -> s {_lmurrsUploads = a}) . _Default . _Coerce

-- | When a prefix is provided in the request, this field contains the specified prefix. The result contains only keys starting with the specified prefix.
lmurrsPrefix :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmurrsPrefix = lens _lmurrsPrefix (\s a -> s {_lmurrsPrefix = a})

-- | Indicates whether the returned list of multipart uploads is truncated. A value of true indicates that the list was truncated. The list can be truncated if the number of multipart uploads exceeds the limit allowed or specified by max uploads.
lmurrsIsTruncated :: Lens' ListMultipartUploadsResponse (Maybe Bool)
lmurrsIsTruncated = lens _lmurrsIsTruncated (\s a -> s {_lmurrsIsTruncated = a})

-- | The key at or after which the listing began.
lmurrsKeyMarker :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmurrsKeyMarker = lens _lmurrsKeyMarker (\s a -> s {_lmurrsKeyMarker = a})

-- | When a list is truncated, this element specifies the value that should be used for the key-marker request parameter in a subsequent request.
lmurrsNextKeyMarker :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmurrsNextKeyMarker = lens _lmurrsNextKeyMarker (\s a -> s {_lmurrsNextKeyMarker = a})

-- | Maximum number of multipart uploads that could have been included in the response.
lmurrsMaxUploads :: Lens' ListMultipartUploadsResponse (Maybe Int)
lmurrsMaxUploads = lens _lmurrsMaxUploads (\s a -> s {_lmurrsMaxUploads = a})

-- | Upload ID after which listing began.
lmurrsUploadIdMarker :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmurrsUploadIdMarker = lens _lmurrsUploadIdMarker (\s a -> s {_lmurrsUploadIdMarker = a})

-- | The name of the bucket to which the multipart upload was initiated.
lmurrsBucket :: Lens' ListMultipartUploadsResponse (Maybe BucketName)
lmurrsBucket = lens _lmurrsBucket (\s a -> s {_lmurrsBucket = a})

-- | When a list is truncated, this element specifies the value that should be used for the @upload-id-marker@ request parameter in a subsequent request.
lmurrsNextUploadIdMarker :: Lens' ListMultipartUploadsResponse (Maybe Text)
lmurrsNextUploadIdMarker = lens _lmurrsNextUploadIdMarker (\s a -> s {_lmurrsNextUploadIdMarker = a})

-- | -- | The response status code.
lmurrsResponseStatus :: Lens' ListMultipartUploadsResponse Int
lmurrsResponseStatus = lens _lmurrsResponseStatus (\s a -> s {_lmurrsResponseStatus = a})

instance NFData ListMultipartUploadsResponse
