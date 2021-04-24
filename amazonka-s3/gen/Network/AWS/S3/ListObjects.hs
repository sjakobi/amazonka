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
-- Module      : Network.AWS.S3.ListObjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns some or all (up to 1,000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. A 200 OK response can contain valid or invalid XML. Be sure to design your application to parse the contents of the response and handle it appropriately.
--
--
-- /Important:/ This API has been revised. We recommend that you use the newer version, <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html ListObjectsV2> , when developing applications. For backward compatibility, Amazon S3 continues to support @ListObjects@ .
--
-- The following operations are related to @ListObjects@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html ListObjectsV2>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html GetObject>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html PutObject>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html CreateBucket>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html ListBuckets>
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.S3.ListObjects
  ( -- * Creating a Request
    listObjects,
    ListObjects,

    -- * Request Lenses
    loExpectedBucketOwner,
    loEncodingType,
    loDelimiter,
    loPrefix,
    loMaxKeys,
    loRequestPayer,
    loMarker,
    loBucket,

    -- * Destructuring the Response
    listObjectsResponse,
    ListObjectsResponse,

    -- * Response Lenses
    lorrsCommonPrefixes,
    lorrsEncodingType,
    lorrsDelimiter,
    lorrsPrefix,
    lorrsIsTruncated,
    lorrsMaxKeys,
    lorrsNextMarker,
    lorrsContents,
    lorrsName,
    lorrsMarker,
    lorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'listObjects' smart constructor.
data ListObjects = ListObjects'
  { _loExpectedBucketOwner ::
      !(Maybe Text),
    _loEncodingType :: !(Maybe EncodingType),
    _loDelimiter :: !(Maybe Delimiter),
    _loPrefix :: !(Maybe Text),
    _loMaxKeys :: !(Maybe Int),
    _loRequestPayer :: !(Maybe RequestPayer),
    _loMarker :: !(Maybe Text),
    _loBucket :: !BucketName
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListObjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'loEncodingType' - Undocumented member.
--
-- * 'loDelimiter' - A delimiter is a character you use to group keys.
--
-- * 'loPrefix' - Limits the response to keys that begin with the specified prefix.
--
-- * 'loMaxKeys' - Sets the maximum number of keys returned in the response. By default the API returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
--
-- * 'loRequestPayer' - Confirms that the requester knows that she or he will be charged for the list objects request. Bucket owners need not specify this parameter in their requests.
--
-- * 'loMarker' - Specifies the key to start with when listing objects in a bucket.
--
-- * 'loBucket' - The name of the bucket containing the objects. When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
listObjects ::
  -- | 'loBucket'
  BucketName ->
  ListObjects
listObjects pBucket_ =
  ListObjects'
    { _loExpectedBucketOwner = Nothing,
      _loEncodingType = Nothing,
      _loDelimiter = Nothing,
      _loPrefix = Nothing,
      _loMaxKeys = Nothing,
      _loRequestPayer = Nothing,
      _loMarker = Nothing,
      _loBucket = pBucket_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
loExpectedBucketOwner :: Lens' ListObjects (Maybe Text)
loExpectedBucketOwner = lens _loExpectedBucketOwner (\s a -> s {_loExpectedBucketOwner = a})

-- | Undocumented member.
loEncodingType :: Lens' ListObjects (Maybe EncodingType)
loEncodingType = lens _loEncodingType (\s a -> s {_loEncodingType = a})

-- | A delimiter is a character you use to group keys.
loDelimiter :: Lens' ListObjects (Maybe Delimiter)
loDelimiter = lens _loDelimiter (\s a -> s {_loDelimiter = a})

-- | Limits the response to keys that begin with the specified prefix.
loPrefix :: Lens' ListObjects (Maybe Text)
loPrefix = lens _loPrefix (\s a -> s {_loPrefix = a})

-- | Sets the maximum number of keys returned in the response. By default the API returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
loMaxKeys :: Lens' ListObjects (Maybe Int)
loMaxKeys = lens _loMaxKeys (\s a -> s {_loMaxKeys = a})

-- | Confirms that the requester knows that she or he will be charged for the list objects request. Bucket owners need not specify this parameter in their requests.
loRequestPayer :: Lens' ListObjects (Maybe RequestPayer)
loRequestPayer = lens _loRequestPayer (\s a -> s {_loRequestPayer = a})

-- | Specifies the key to start with when listing objects in a bucket.
loMarker :: Lens' ListObjects (Maybe Text)
loMarker = lens _loMarker (\s a -> s {_loMarker = a})

-- | The name of the bucket containing the objects. When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
loBucket :: Lens' ListObjects BucketName
loBucket = lens _loBucket (\s a -> s {_loBucket = a})

instance AWSPager ListObjects where
  page rq rs
    | stop (rs ^. lorrsIsTruncated) = Nothing
    | isNothing
        ( rs
            ^. choice
              (^. lorrsNextMarker)
              (^? (lorrsContents . _last . oKey))
        ) =
      Nothing
    | otherwise =
      Just $
        rq
          & loMarker
          .~ rs
          ^. choice
            (^. lorrsNextMarker)
            (^? (lorrsContents . _last . oKey))

instance AWSRequest ListObjects where
  type Rs ListObjects = ListObjectsResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          ListObjectsResponse'
            <$> (may (parseXMLList "CommonPrefixes") x)
            <*> (x .@? "EncodingType")
            <*> (x .@? "Delimiter")
            <*> (x .@? "Prefix")
            <*> (x .@? "IsTruncated")
            <*> (x .@? "MaxKeys")
            <*> (x .@? "NextMarker")
            <*> (may (parseXMLList "Contents") x)
            <*> (x .@? "Name")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListObjects

instance NFData ListObjects

instance ToHeaders ListObjects where
  toHeaders ListObjects' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _loExpectedBucketOwner,
        "x-amz-request-payer" =# _loRequestPayer
      ]

instance ToPath ListObjects where
  toPath ListObjects' {..} =
    mconcat ["/", toBS _loBucket]

instance ToQuery ListObjects where
  toQuery ListObjects' {..} =
    mconcat
      [ "encoding-type" =: _loEncodingType,
        "delimiter" =: _loDelimiter,
        "prefix" =: _loPrefix,
        "max-keys" =: _loMaxKeys,
        "marker" =: _loMarker
      ]

-- | /See:/ 'listObjectsResponse' smart constructor.
data ListObjectsResponse = ListObjectsResponse'
  { _lorrsCommonPrefixes ::
      !(Maybe [CommonPrefix]),
    _lorrsEncodingType ::
      !(Maybe EncodingType),
    _lorrsDelimiter ::
      !(Maybe Delimiter),
    _lorrsPrefix :: !(Maybe Text),
    _lorrsIsTruncated ::
      !(Maybe Bool),
    _lorrsMaxKeys :: !(Maybe Int),
    _lorrsNextMarker ::
      !(Maybe Text),
    _lorrsContents ::
      !(Maybe [Object]),
    _lorrsName ::
      !(Maybe BucketName),
    _lorrsMarker :: !(Maybe Text),
    _lorrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListObjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorrsCommonPrefixes' - All of the keys (up to 1,000) rolled up in a common prefix count as a single return when calculating the number of returns.  A response can contain CommonPrefixes only if you specify a delimiter. CommonPrefixes contains all (if there are any) keys between Prefix and the next occurrence of the string specified by the delimiter. CommonPrefixes lists keys that act like subdirectories in the directory specified by Prefix. For example, if the prefix is notes/ and the delimiter is a slash (/) as in notes/summer/july, the common prefix is notes/summer/. All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
--
-- * 'lorrsEncodingType' - Encoding type used by Amazon S3 to encode object keys in the response.
--
-- * 'lorrsDelimiter' - Causes keys that contain the same string between the prefix and the first occurrence of the delimiter to be rolled up into a single result element in the @CommonPrefixes@ collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the @MaxKeys@ value.
--
-- * 'lorrsPrefix' - Keys that begin with the indicated prefix.
--
-- * 'lorrsIsTruncated' - A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria.
--
-- * 'lorrsMaxKeys' - The maximum number of keys returned in the response body.
--
-- * 'lorrsNextMarker' - When response is truncated (the IsTruncated element value in the response is true), you can use the key name in this field as marker in the subsequent request to get next set of objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if you have delimiter request parameter specified. If response does not include the NextMarker and it is truncated, you can use the value of the last Key in the response as the marker in the subsequent request to get the next set of object keys.
--
-- * 'lorrsContents' - Metadata about each object returned.
--
-- * 'lorrsName' - The bucket name.
--
-- * 'lorrsMarker' - Indicates where in the bucket listing begins. Marker is included in the response if it was sent with the request.
--
-- * 'lorrsResponseStatus' - -- | The response status code.
listObjectsResponse ::
  -- | 'lorrsResponseStatus'
  Int ->
  ListObjectsResponse
listObjectsResponse pResponseStatus_ =
  ListObjectsResponse'
    { _lorrsCommonPrefixes =
        Nothing,
      _lorrsEncodingType = Nothing,
      _lorrsDelimiter = Nothing,
      _lorrsPrefix = Nothing,
      _lorrsIsTruncated = Nothing,
      _lorrsMaxKeys = Nothing,
      _lorrsNextMarker = Nothing,
      _lorrsContents = Nothing,
      _lorrsName = Nothing,
      _lorrsMarker = Nothing,
      _lorrsResponseStatus = pResponseStatus_
    }

-- | All of the keys (up to 1,000) rolled up in a common prefix count as a single return when calculating the number of returns.  A response can contain CommonPrefixes only if you specify a delimiter. CommonPrefixes contains all (if there are any) keys between Prefix and the next occurrence of the string specified by the delimiter. CommonPrefixes lists keys that act like subdirectories in the directory specified by Prefix. For example, if the prefix is notes/ and the delimiter is a slash (/) as in notes/summer/july, the common prefix is notes/summer/. All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
lorrsCommonPrefixes :: Lens' ListObjectsResponse [CommonPrefix]
lorrsCommonPrefixes = lens _lorrsCommonPrefixes (\s a -> s {_lorrsCommonPrefixes = a}) . _Default . _Coerce

-- | Encoding type used by Amazon S3 to encode object keys in the response.
lorrsEncodingType :: Lens' ListObjectsResponse (Maybe EncodingType)
lorrsEncodingType = lens _lorrsEncodingType (\s a -> s {_lorrsEncodingType = a})

-- | Causes keys that contain the same string between the prefix and the first occurrence of the delimiter to be rolled up into a single result element in the @CommonPrefixes@ collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the @MaxKeys@ value.
lorrsDelimiter :: Lens' ListObjectsResponse (Maybe Delimiter)
lorrsDelimiter = lens _lorrsDelimiter (\s a -> s {_lorrsDelimiter = a})

-- | Keys that begin with the indicated prefix.
lorrsPrefix :: Lens' ListObjectsResponse (Maybe Text)
lorrsPrefix = lens _lorrsPrefix (\s a -> s {_lorrsPrefix = a})

-- | A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria.
lorrsIsTruncated :: Lens' ListObjectsResponse (Maybe Bool)
lorrsIsTruncated = lens _lorrsIsTruncated (\s a -> s {_lorrsIsTruncated = a})

-- | The maximum number of keys returned in the response body.
lorrsMaxKeys :: Lens' ListObjectsResponse (Maybe Int)
lorrsMaxKeys = lens _lorrsMaxKeys (\s a -> s {_lorrsMaxKeys = a})

-- | When response is truncated (the IsTruncated element value in the response is true), you can use the key name in this field as marker in the subsequent request to get next set of objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if you have delimiter request parameter specified. If response does not include the NextMarker and it is truncated, you can use the value of the last Key in the response as the marker in the subsequent request to get the next set of object keys.
lorrsNextMarker :: Lens' ListObjectsResponse (Maybe Text)
lorrsNextMarker = lens _lorrsNextMarker (\s a -> s {_lorrsNextMarker = a})

-- | Metadata about each object returned.
lorrsContents :: Lens' ListObjectsResponse [Object]
lorrsContents = lens _lorrsContents (\s a -> s {_lorrsContents = a}) . _Default . _Coerce

-- | The bucket name.
lorrsName :: Lens' ListObjectsResponse (Maybe BucketName)
lorrsName = lens _lorrsName (\s a -> s {_lorrsName = a})

-- | Indicates where in the bucket listing begins. Marker is included in the response if it was sent with the request.
lorrsMarker :: Lens' ListObjectsResponse (Maybe Text)
lorrsMarker = lens _lorrsMarker (\s a -> s {_lorrsMarker = a})

-- | -- | The response status code.
lorrsResponseStatus :: Lens' ListObjectsResponse Int
lorrsResponseStatus = lens _lorrsResponseStatus (\s a -> s {_lorrsResponseStatus = a})

instance NFData ListObjectsResponse
