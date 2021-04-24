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
-- Module      : Network.AWS.S3.ListObjectsV2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns some or all (up to 1,000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. A @200 OK@ response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately. Objects are returned sorted in an ascending order of the respective key names in the list.
--
--
-- To use this operation, you must have READ access to the bucket.
--
-- To use this operation in an AWS Identity and Access Management (IAM) policy, you must have permissions to perform the @s3:ListBucket@ action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources Permissions Related to Bucket Subresource Operations> and <https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html Managing Access Permissions to Your Amazon S3 Resources> .
--
-- /Important:/ This section describes the latest revision of the API. We recommend that you use this revised API for application development. For backward compatibility, Amazon S3 continues to support the prior version of this API, <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html ListObjects> .
--
-- To get a list of your buckets, see <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html ListBuckets> .
--
-- The following operations are related to @ListObjectsV2@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html GetObject>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html PutObject>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html CreateBucket>
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.S3.ListObjectsV2
  ( -- * Creating a Request
    listObjectsV2,
    ListObjectsV2,

    -- * Request Lenses
    lStartAfter,
    lExpectedBucketOwner,
    lEncodingType,
    lDelimiter,
    lPrefix,
    lMaxKeys,
    lRequestPayer,
    lFetchOwner,
    lContinuationToken,
    lBucket,

    -- * Destructuring the Response
    listObjectsV2Response,
    ListObjectsV2Response,

    -- * Response Lenses
    lrsStartAfter,
    lrsKeyCount,
    lrsCommonPrefixes,
    lrsEncodingType,
    lrsDelimiter,
    lrsPrefix,
    lrsIsTruncated,
    lrsMaxKeys,
    lrsContents,
    lrsName,
    lrsNextContinuationToken,
    lrsContinuationToken,
    lrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'listObjectsV2' smart constructor.
data ListObjectsV2 = ListObjectsV2'
  { _lStartAfter ::
      !(Maybe Text),
    _lExpectedBucketOwner :: !(Maybe Text),
    _lEncodingType :: !(Maybe EncodingType),
    _lDelimiter :: !(Maybe Delimiter),
    _lPrefix :: !(Maybe Text),
    _lMaxKeys :: !(Maybe Int),
    _lRequestPayer :: !(Maybe RequestPayer),
    _lFetchOwner :: !(Maybe Bool),
    _lContinuationToken :: !(Maybe Text),
    _lBucket :: !BucketName
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListObjectsV2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lStartAfter' - StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket.
--
-- * 'lExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'lEncodingType' - Encoding type used by Amazon S3 to encode object keys in the response.
--
-- * 'lDelimiter' - A delimiter is a character you use to group keys.
--
-- * 'lPrefix' - Limits the response to keys that begin with the specified prefix.
--
-- * 'lMaxKeys' - Sets the maximum number of keys returned in the response. By default the API returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
--
-- * 'lRequestPayer' - Confirms that the requester knows that she or he will be charged for the list objects request in V2 style. Bucket owners need not specify this parameter in their requests.
--
-- * 'lFetchOwner' - The owner field is not present in listV2 by default, if you want to return owner field with each key in the result then set the fetch owner field to true.
--
-- * 'lContinuationToken' - ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key.
--
-- * 'lBucket' - Bucket name to list.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
listObjectsV2 ::
  -- | 'lBucket'
  BucketName ->
  ListObjectsV2
listObjectsV2 pBucket_ =
  ListObjectsV2'
    { _lStartAfter = Nothing,
      _lExpectedBucketOwner = Nothing,
      _lEncodingType = Nothing,
      _lDelimiter = Nothing,
      _lPrefix = Nothing,
      _lMaxKeys = Nothing,
      _lRequestPayer = Nothing,
      _lFetchOwner = Nothing,
      _lContinuationToken = Nothing,
      _lBucket = pBucket_
    }

-- | StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket.
lStartAfter :: Lens' ListObjectsV2 (Maybe Text)
lStartAfter = lens _lStartAfter (\s a -> s {_lStartAfter = a})

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
lExpectedBucketOwner :: Lens' ListObjectsV2 (Maybe Text)
lExpectedBucketOwner = lens _lExpectedBucketOwner (\s a -> s {_lExpectedBucketOwner = a})

-- | Encoding type used by Amazon S3 to encode object keys in the response.
lEncodingType :: Lens' ListObjectsV2 (Maybe EncodingType)
lEncodingType = lens _lEncodingType (\s a -> s {_lEncodingType = a})

-- | A delimiter is a character you use to group keys.
lDelimiter :: Lens' ListObjectsV2 (Maybe Delimiter)
lDelimiter = lens _lDelimiter (\s a -> s {_lDelimiter = a})

-- | Limits the response to keys that begin with the specified prefix.
lPrefix :: Lens' ListObjectsV2 (Maybe Text)
lPrefix = lens _lPrefix (\s a -> s {_lPrefix = a})

-- | Sets the maximum number of keys returned in the response. By default the API returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
lMaxKeys :: Lens' ListObjectsV2 (Maybe Int)
lMaxKeys = lens _lMaxKeys (\s a -> s {_lMaxKeys = a})

-- | Confirms that the requester knows that she or he will be charged for the list objects request in V2 style. Bucket owners need not specify this parameter in their requests.
lRequestPayer :: Lens' ListObjectsV2 (Maybe RequestPayer)
lRequestPayer = lens _lRequestPayer (\s a -> s {_lRequestPayer = a})

-- | The owner field is not present in listV2 by default, if you want to return owner field with each key in the result then set the fetch owner field to true.
lFetchOwner :: Lens' ListObjectsV2 (Maybe Bool)
lFetchOwner = lens _lFetchOwner (\s a -> s {_lFetchOwner = a})

-- | ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key.
lContinuationToken :: Lens' ListObjectsV2 (Maybe Text)
lContinuationToken = lens _lContinuationToken (\s a -> s {_lContinuationToken = a})

-- | Bucket name to list.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
lBucket :: Lens' ListObjectsV2 BucketName
lBucket = lens _lBucket (\s a -> s {_lBucket = a})

instance AWSPager ListObjectsV2 where
  page rq rs
    | stop (rs ^. lrsIsTruncated) = Nothing
    | isNothing (rs ^. lrsNextContinuationToken) =
      Nothing
    | otherwise =
      Just $
        rq
          & lContinuationToken .~ rs ^. lrsNextContinuationToken

instance AWSRequest ListObjectsV2 where
  type Rs ListObjectsV2 = ListObjectsV2Response
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          ListObjectsV2Response'
            <$> (x .@? "StartAfter")
            <*> (x .@? "KeyCount")
            <*> (may (parseXMLList "CommonPrefixes") x)
            <*> (x .@? "EncodingType")
            <*> (x .@? "Delimiter")
            <*> (x .@? "Prefix")
            <*> (x .@? "IsTruncated")
            <*> (x .@? "MaxKeys")
            <*> (may (parseXMLList "Contents") x)
            <*> (x .@? "Name")
            <*> (x .@? "NextContinuationToken")
            <*> (x .@? "ContinuationToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListObjectsV2

instance NFData ListObjectsV2

instance ToHeaders ListObjectsV2 where
  toHeaders ListObjectsV2' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _lExpectedBucketOwner,
        "x-amz-request-payer" =# _lRequestPayer
      ]

instance ToPath ListObjectsV2 where
  toPath ListObjectsV2' {..} =
    mconcat ["/", toBS _lBucket]

instance ToQuery ListObjectsV2 where
  toQuery ListObjectsV2' {..} =
    mconcat
      [ "start-after" =: _lStartAfter,
        "encoding-type" =: _lEncodingType,
        "delimiter" =: _lDelimiter,
        "prefix" =: _lPrefix,
        "max-keys" =: _lMaxKeys,
        "fetch-owner" =: _lFetchOwner,
        "continuation-token" =: _lContinuationToken,
        "list-type=2"
      ]

-- | /See:/ 'listObjectsV2Response' smart constructor.
data ListObjectsV2Response = ListObjectsV2Response'
  { _lrsStartAfter ::
      !(Maybe Text),
    _lrsKeyCount ::
      !(Maybe Int),
    _lrsCommonPrefixes ::
      !(Maybe [CommonPrefix]),
    _lrsEncodingType ::
      !(Maybe EncodingType),
    _lrsDelimiter ::
      !(Maybe Delimiter),
    _lrsPrefix :: !(Maybe Text),
    _lrsIsTruncated ::
      !(Maybe Bool),
    _lrsMaxKeys :: !(Maybe Int),
    _lrsContents ::
      !(Maybe [Object]),
    _lrsName ::
      !(Maybe BucketName),
    _lrsNextContinuationToken ::
      !(Maybe Text),
    _lrsContinuationToken ::
      !(Maybe Text),
    _lrsResponseStatus :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListObjectsV2Response' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsStartAfter' - If StartAfter was sent with the request, it is included in the response.
--
-- * 'lrsKeyCount' - KeyCount is the number of keys returned with this request. KeyCount will always be less than or equals to MaxKeys field. Say you ask for 50 keys, your result will include less than equals 50 keys
--
-- * 'lrsCommonPrefixes' - All of the keys (up to 1,000) rolled up into a common prefix count as a single return when calculating the number of returns. A response can contain @CommonPrefixes@ only if you specify a delimiter. @CommonPrefixes@ contains all (if there are any) keys between @Prefix@ and the next occurrence of the string specified by a delimiter. @CommonPrefixes@ lists keys that act like subdirectories in the directory specified by @Prefix@ . For example, if the prefix is @notes/@ and the delimiter is a slash (@/@ ) as in @notes/summer/july@ , the common prefix is @notes/summer/@ . All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
--
-- * 'lrsEncodingType' - Encoding type used by Amazon S3 to encode object key names in the XML response. If you specify the encoding-type request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements: @Delimiter, Prefix, Key,@ and @StartAfter@ .
--
-- * 'lrsDelimiter' - Causes keys that contain the same string between the prefix and the first occurrence of the delimiter to be rolled up into a single result element in the CommonPrefixes collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the @MaxKeys@ value.
--
-- * 'lrsPrefix' - Keys that begin with the indicated prefix.
--
-- * 'lrsIsTruncated' - Set to false if all of the results were returned. Set to true if more keys are available to return. If the number of results exceeds that specified by MaxKeys, all of the results might not be returned.
--
-- * 'lrsMaxKeys' - Sets the maximum number of keys returned in the response. By default the API returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
--
-- * 'lrsContents' - Metadata about each object returned.
--
-- * 'lrsName' - The bucket name. When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'lrsNextContinuationToken' - @NextContinuationToken@ is sent when @isTruncated@ is true, which means there are more keys in the bucket that can be listed. The next list requests to Amazon S3 can be continued with this @NextContinuationToken@ . @NextContinuationToken@ is obfuscated and is not a real key
--
-- * 'lrsContinuationToken' - If ContinuationToken was sent with the request, it is included in the response.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listObjectsV2Response ::
  -- | 'lrsResponseStatus'
  Int ->
  ListObjectsV2Response
listObjectsV2Response pResponseStatus_ =
  ListObjectsV2Response'
    { _lrsStartAfter = Nothing,
      _lrsKeyCount = Nothing,
      _lrsCommonPrefixes = Nothing,
      _lrsEncodingType = Nothing,
      _lrsDelimiter = Nothing,
      _lrsPrefix = Nothing,
      _lrsIsTruncated = Nothing,
      _lrsMaxKeys = Nothing,
      _lrsContents = Nothing,
      _lrsName = Nothing,
      _lrsNextContinuationToken = Nothing,
      _lrsContinuationToken = Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | If StartAfter was sent with the request, it is included in the response.
lrsStartAfter :: Lens' ListObjectsV2Response (Maybe Text)
lrsStartAfter = lens _lrsStartAfter (\s a -> s {_lrsStartAfter = a})

-- | KeyCount is the number of keys returned with this request. KeyCount will always be less than or equals to MaxKeys field. Say you ask for 50 keys, your result will include less than equals 50 keys
lrsKeyCount :: Lens' ListObjectsV2Response (Maybe Int)
lrsKeyCount = lens _lrsKeyCount (\s a -> s {_lrsKeyCount = a})

-- | All of the keys (up to 1,000) rolled up into a common prefix count as a single return when calculating the number of returns. A response can contain @CommonPrefixes@ only if you specify a delimiter. @CommonPrefixes@ contains all (if there are any) keys between @Prefix@ and the next occurrence of the string specified by a delimiter. @CommonPrefixes@ lists keys that act like subdirectories in the directory specified by @Prefix@ . For example, if the prefix is @notes/@ and the delimiter is a slash (@/@ ) as in @notes/summer/july@ , the common prefix is @notes/summer/@ . All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
lrsCommonPrefixes :: Lens' ListObjectsV2Response [CommonPrefix]
lrsCommonPrefixes = lens _lrsCommonPrefixes (\s a -> s {_lrsCommonPrefixes = a}) . _Default . _Coerce

-- | Encoding type used by Amazon S3 to encode object key names in the XML response. If you specify the encoding-type request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements: @Delimiter, Prefix, Key,@ and @StartAfter@ .
lrsEncodingType :: Lens' ListObjectsV2Response (Maybe EncodingType)
lrsEncodingType = lens _lrsEncodingType (\s a -> s {_lrsEncodingType = a})

-- | Causes keys that contain the same string between the prefix and the first occurrence of the delimiter to be rolled up into a single result element in the CommonPrefixes collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the @MaxKeys@ value.
lrsDelimiter :: Lens' ListObjectsV2Response (Maybe Delimiter)
lrsDelimiter = lens _lrsDelimiter (\s a -> s {_lrsDelimiter = a})

-- | Keys that begin with the indicated prefix.
lrsPrefix :: Lens' ListObjectsV2Response (Maybe Text)
lrsPrefix = lens _lrsPrefix (\s a -> s {_lrsPrefix = a})

-- | Set to false if all of the results were returned. Set to true if more keys are available to return. If the number of results exceeds that specified by MaxKeys, all of the results might not be returned.
lrsIsTruncated :: Lens' ListObjectsV2Response (Maybe Bool)
lrsIsTruncated = lens _lrsIsTruncated (\s a -> s {_lrsIsTruncated = a})

-- | Sets the maximum number of keys returned in the response. By default the API returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
lrsMaxKeys :: Lens' ListObjectsV2Response (Maybe Int)
lrsMaxKeys = lens _lrsMaxKeys (\s a -> s {_lrsMaxKeys = a})

-- | Metadata about each object returned.
lrsContents :: Lens' ListObjectsV2Response [Object]
lrsContents = lens _lrsContents (\s a -> s {_lrsContents = a}) . _Default . _Coerce

-- | The bucket name. When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
lrsName :: Lens' ListObjectsV2Response (Maybe BucketName)
lrsName = lens _lrsName (\s a -> s {_lrsName = a})

-- | @NextContinuationToken@ is sent when @isTruncated@ is true, which means there are more keys in the bucket that can be listed. The next list requests to Amazon S3 can be continued with this @NextContinuationToken@ . @NextContinuationToken@ is obfuscated and is not a real key
lrsNextContinuationToken :: Lens' ListObjectsV2Response (Maybe Text)
lrsNextContinuationToken = lens _lrsNextContinuationToken (\s a -> s {_lrsNextContinuationToken = a})

-- | If ContinuationToken was sent with the request, it is included in the response.
lrsContinuationToken :: Lens' ListObjectsV2Response (Maybe Text)
lrsContinuationToken = lens _lrsContinuationToken (\s a -> s {_lrsContinuationToken = a})

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListObjectsV2Response Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListObjectsV2Response
