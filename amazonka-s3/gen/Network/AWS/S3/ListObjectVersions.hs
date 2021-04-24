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
-- Module      : Network.AWS.S3.ListObjectVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about all versions of the objects in a bucket. You can also use request parameters as selection criteria to return metadata about a subset of all the object versions.
--
--
-- To use this operation, you must have READ access to the bucket.
--
-- This action is not supported by Amazon S3 on Outposts.
--
-- The following operations are related to @ListObjectVersions@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html ListObjectsV2>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html GetObject>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html PutObject>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html DeleteObject>
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.S3.ListObjectVersions
  ( -- * Creating a Request
    listObjectVersions,
    ListObjectVersions,

    -- * Request Lenses
    lovExpectedBucketOwner,
    lovEncodingType,
    lovDelimiter,
    lovPrefix,
    lovMaxKeys,
    lovKeyMarker,
    lovVersionIdMarker,
    lovBucket,

    -- * Destructuring the Response
    listObjectVersionsResponse,
    ListObjectVersionsResponse,

    -- * Response Lenses
    lovrrsVersions,
    lovrrsCommonPrefixes,
    lovrrsEncodingType,
    lovrrsDelimiter,
    lovrrsPrefix,
    lovrrsIsTruncated,
    lovrrsMaxKeys,
    lovrrsKeyMarker,
    lovrrsNextKeyMarker,
    lovrrsName,
    lovrrsDeleteMarkers,
    lovrrsVersionIdMarker,
    lovrrsNextVersionIdMarker,
    lovrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'listObjectVersions' smart constructor.
data ListObjectVersions = ListObjectVersions'
  { _lovExpectedBucketOwner ::
      !(Maybe Text),
    _lovEncodingType ::
      !(Maybe EncodingType),
    _lovDelimiter ::
      !(Maybe Delimiter),
    _lovPrefix :: !(Maybe Text),
    _lovMaxKeys :: !(Maybe Int),
    _lovKeyMarker :: !(Maybe Text),
    _lovVersionIdMarker ::
      !(Maybe Text),
    _lovBucket :: !BucketName
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListObjectVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lovExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'lovEncodingType' - Undocumented member.
--
-- * 'lovDelimiter' - A delimiter is a character that you specify to group keys. All keys that contain the same string between the @prefix@ and the first occurrence of the delimiter are grouped under a single result element in CommonPrefixes. These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.
--
-- * 'lovPrefix' - Use this parameter to select only those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different groupings of keys. (You can think of using prefix to make groups in the same way you'd use a folder in a file system.) You can use prefix with delimiter to roll up numerous objects into a single result under CommonPrefixes.
--
-- * 'lovMaxKeys' - Sets the maximum number of keys returned in the response. By default the API returns up to 1,000 key names. The response might contain fewer keys but will never contain more. If additional keys satisfy the search criteria, but were not returned because max-keys was exceeded, the response contains <isTruncated>true</isTruncated>. To return the additional keys, see key-marker and version-id-marker.
--
-- * 'lovKeyMarker' - Specifies the key to start with when listing objects in a bucket.
--
-- * 'lovVersionIdMarker' - Specifies the object version you want to start listing from.
--
-- * 'lovBucket' - The bucket name that contains the objects.
listObjectVersions ::
  -- | 'lovBucket'
  BucketName ->
  ListObjectVersions
listObjectVersions pBucket_ =
  ListObjectVersions'
    { _lovExpectedBucketOwner =
        Nothing,
      _lovEncodingType = Nothing,
      _lovDelimiter = Nothing,
      _lovPrefix = Nothing,
      _lovMaxKeys = Nothing,
      _lovKeyMarker = Nothing,
      _lovVersionIdMarker = Nothing,
      _lovBucket = pBucket_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
lovExpectedBucketOwner :: Lens' ListObjectVersions (Maybe Text)
lovExpectedBucketOwner = lens _lovExpectedBucketOwner (\s a -> s {_lovExpectedBucketOwner = a})

-- | Undocumented member.
lovEncodingType :: Lens' ListObjectVersions (Maybe EncodingType)
lovEncodingType = lens _lovEncodingType (\s a -> s {_lovEncodingType = a})

-- | A delimiter is a character that you specify to group keys. All keys that contain the same string between the @prefix@ and the first occurrence of the delimiter are grouped under a single result element in CommonPrefixes. These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.
lovDelimiter :: Lens' ListObjectVersions (Maybe Delimiter)
lovDelimiter = lens _lovDelimiter (\s a -> s {_lovDelimiter = a})

-- | Use this parameter to select only those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different groupings of keys. (You can think of using prefix to make groups in the same way you'd use a folder in a file system.) You can use prefix with delimiter to roll up numerous objects into a single result under CommonPrefixes.
lovPrefix :: Lens' ListObjectVersions (Maybe Text)
lovPrefix = lens _lovPrefix (\s a -> s {_lovPrefix = a})

-- | Sets the maximum number of keys returned in the response. By default the API returns up to 1,000 key names. The response might contain fewer keys but will never contain more. If additional keys satisfy the search criteria, but were not returned because max-keys was exceeded, the response contains <isTruncated>true</isTruncated>. To return the additional keys, see key-marker and version-id-marker.
lovMaxKeys :: Lens' ListObjectVersions (Maybe Int)
lovMaxKeys = lens _lovMaxKeys (\s a -> s {_lovMaxKeys = a})

-- | Specifies the key to start with when listing objects in a bucket.
lovKeyMarker :: Lens' ListObjectVersions (Maybe Text)
lovKeyMarker = lens _lovKeyMarker (\s a -> s {_lovKeyMarker = a})

-- | Specifies the object version you want to start listing from.
lovVersionIdMarker :: Lens' ListObjectVersions (Maybe Text)
lovVersionIdMarker = lens _lovVersionIdMarker (\s a -> s {_lovVersionIdMarker = a})

-- | The bucket name that contains the objects.
lovBucket :: Lens' ListObjectVersions BucketName
lovBucket = lens _lovBucket (\s a -> s {_lovBucket = a})

instance AWSPager ListObjectVersions where
  page rq rs
    | stop (rs ^. lovrrsIsTruncated) = Nothing
    | isNothing (rs ^. lovrrsNextKeyMarker)
        && isNothing (rs ^. lovrrsNextVersionIdMarker) =
      Nothing
    | otherwise =
      Just $
        rq & lovKeyMarker .~ rs ^. lovrrsNextKeyMarker
          & lovVersionIdMarker .~ rs ^. lovrrsNextVersionIdMarker

instance AWSRequest ListObjectVersions where
  type
    Rs ListObjectVersions =
      ListObjectVersionsResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          ListObjectVersionsResponse'
            <$> (may (parseXMLList "Version") x)
            <*> (may (parseXMLList "CommonPrefixes") x)
            <*> (x .@? "EncodingType")
            <*> (x .@? "Delimiter")
            <*> (x .@? "Prefix")
            <*> (x .@? "IsTruncated")
            <*> (x .@? "MaxKeys")
            <*> (x .@? "KeyMarker")
            <*> (x .@? "NextKeyMarker")
            <*> (x .@? "Name")
            <*> (may (parseXMLList "DeleteMarker") x)
            <*> (x .@? "VersionIdMarker")
            <*> (x .@? "NextVersionIdMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListObjectVersions

instance NFData ListObjectVersions

instance ToHeaders ListObjectVersions where
  toHeaders ListObjectVersions' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _lovExpectedBucketOwner
      ]

instance ToPath ListObjectVersions where
  toPath ListObjectVersions' {..} =
    mconcat ["/", toBS _lovBucket]

instance ToQuery ListObjectVersions where
  toQuery ListObjectVersions' {..} =
    mconcat
      [ "encoding-type" =: _lovEncodingType,
        "delimiter" =: _lovDelimiter,
        "prefix" =: _lovPrefix,
        "max-keys" =: _lovMaxKeys,
        "key-marker" =: _lovKeyMarker,
        "version-id-marker" =: _lovVersionIdMarker,
        "versions"
      ]

-- | /See:/ 'listObjectVersionsResponse' smart constructor.
data ListObjectVersionsResponse = ListObjectVersionsResponse'
  { _lovrrsVersions ::
      !( Maybe
           [ObjectVersion]
       ),
    _lovrrsCommonPrefixes ::
      !( Maybe
           [CommonPrefix]
       ),
    _lovrrsEncodingType ::
      !( Maybe
           EncodingType
       ),
    _lovrrsDelimiter ::
      !( Maybe
           Delimiter
       ),
    _lovrrsPrefix ::
      !(Maybe Text),
    _lovrrsIsTruncated ::
      !(Maybe Bool),
    _lovrrsMaxKeys ::
      !(Maybe Int),
    _lovrrsKeyMarker ::
      !(Maybe Text),
    _lovrrsNextKeyMarker ::
      !(Maybe Text),
    _lovrrsName ::
      !( Maybe
           BucketName
       ),
    _lovrrsDeleteMarkers ::
      !( Maybe
           [DeleteMarkerEntry]
       ),
    _lovrrsVersionIdMarker ::
      !(Maybe Text),
    _lovrrsNextVersionIdMarker ::
      !(Maybe Text),
    _lovrrsResponseStatus ::
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

-- | Creates a value of 'ListObjectVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lovrrsVersions' - Container for version information.
--
-- * 'lovrrsCommonPrefixes' - All of the keys rolled up into a common prefix count as a single return when calculating the number of returns.
--
-- * 'lovrrsEncodingType' - Encoding type used by Amazon S3 to encode object key names in the XML response. If you specify encoding-type request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements: @KeyMarker, NextKeyMarker, Prefix, Key@ , and @Delimiter@ .
--
-- * 'lovrrsDelimiter' - The delimiter grouping the included keys. A delimiter is a character that you specify to group keys. All keys that contain the same string between the prefix and the first occurrence of the delimiter are grouped under a single result element in @CommonPrefixes@ . These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.
--
-- * 'lovrrsPrefix' - Selects objects that start with the value supplied by this parameter.
--
-- * 'lovrrsIsTruncated' - A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria. If your results were truncated, you can make a follow-up paginated request using the NextKeyMarker and NextVersionIdMarker response parameters as a starting place in another request to return the rest of the results.
--
-- * 'lovrrsMaxKeys' - Specifies the maximum number of objects to return.
--
-- * 'lovrrsKeyMarker' - Marks the last key returned in a truncated response.
--
-- * 'lovrrsNextKeyMarker' - When the number of responses exceeds the value of @MaxKeys@ , @NextKeyMarker@ specifies the first key not returned that satisfies the search criteria. Use this value for the key-marker request parameter in a subsequent request.
--
-- * 'lovrrsName' - The bucket name.
--
-- * 'lovrrsDeleteMarkers' - Container for an object that is a delete marker.
--
-- * 'lovrrsVersionIdMarker' - Marks the last version of the key returned in a truncated response.
--
-- * 'lovrrsNextVersionIdMarker' - When the number of responses exceeds the value of @MaxKeys@ , @NextVersionIdMarker@ specifies the first object version not returned that satisfies the search criteria. Use this value for the version-id-marker request parameter in a subsequent request.
--
-- * 'lovrrsResponseStatus' - -- | The response status code.
listObjectVersionsResponse ::
  -- | 'lovrrsResponseStatus'
  Int ->
  ListObjectVersionsResponse
listObjectVersionsResponse pResponseStatus_ =
  ListObjectVersionsResponse'
    { _lovrrsVersions =
        Nothing,
      _lovrrsCommonPrefixes = Nothing,
      _lovrrsEncodingType = Nothing,
      _lovrrsDelimiter = Nothing,
      _lovrrsPrefix = Nothing,
      _lovrrsIsTruncated = Nothing,
      _lovrrsMaxKeys = Nothing,
      _lovrrsKeyMarker = Nothing,
      _lovrrsNextKeyMarker = Nothing,
      _lovrrsName = Nothing,
      _lovrrsDeleteMarkers = Nothing,
      _lovrrsVersionIdMarker = Nothing,
      _lovrrsNextVersionIdMarker = Nothing,
      _lovrrsResponseStatus = pResponseStatus_
    }

-- | Container for version information.
lovrrsVersions :: Lens' ListObjectVersionsResponse [ObjectVersion]
lovrrsVersions = lens _lovrrsVersions (\s a -> s {_lovrrsVersions = a}) . _Default . _Coerce

-- | All of the keys rolled up into a common prefix count as a single return when calculating the number of returns.
lovrrsCommonPrefixes :: Lens' ListObjectVersionsResponse [CommonPrefix]
lovrrsCommonPrefixes = lens _lovrrsCommonPrefixes (\s a -> s {_lovrrsCommonPrefixes = a}) . _Default . _Coerce

-- | Encoding type used by Amazon S3 to encode object key names in the XML response. If you specify encoding-type request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements: @KeyMarker, NextKeyMarker, Prefix, Key@ , and @Delimiter@ .
lovrrsEncodingType :: Lens' ListObjectVersionsResponse (Maybe EncodingType)
lovrrsEncodingType = lens _lovrrsEncodingType (\s a -> s {_lovrrsEncodingType = a})

-- | The delimiter grouping the included keys. A delimiter is a character that you specify to group keys. All keys that contain the same string between the prefix and the first occurrence of the delimiter are grouped under a single result element in @CommonPrefixes@ . These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.
lovrrsDelimiter :: Lens' ListObjectVersionsResponse (Maybe Delimiter)
lovrrsDelimiter = lens _lovrrsDelimiter (\s a -> s {_lovrrsDelimiter = a})

-- | Selects objects that start with the value supplied by this parameter.
lovrrsPrefix :: Lens' ListObjectVersionsResponse (Maybe Text)
lovrrsPrefix = lens _lovrrsPrefix (\s a -> s {_lovrrsPrefix = a})

-- | A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria. If your results were truncated, you can make a follow-up paginated request using the NextKeyMarker and NextVersionIdMarker response parameters as a starting place in another request to return the rest of the results.
lovrrsIsTruncated :: Lens' ListObjectVersionsResponse (Maybe Bool)
lovrrsIsTruncated = lens _lovrrsIsTruncated (\s a -> s {_lovrrsIsTruncated = a})

-- | Specifies the maximum number of objects to return.
lovrrsMaxKeys :: Lens' ListObjectVersionsResponse (Maybe Int)
lovrrsMaxKeys = lens _lovrrsMaxKeys (\s a -> s {_lovrrsMaxKeys = a})

-- | Marks the last key returned in a truncated response.
lovrrsKeyMarker :: Lens' ListObjectVersionsResponse (Maybe Text)
lovrrsKeyMarker = lens _lovrrsKeyMarker (\s a -> s {_lovrrsKeyMarker = a})

-- | When the number of responses exceeds the value of @MaxKeys@ , @NextKeyMarker@ specifies the first key not returned that satisfies the search criteria. Use this value for the key-marker request parameter in a subsequent request.
lovrrsNextKeyMarker :: Lens' ListObjectVersionsResponse (Maybe Text)
lovrrsNextKeyMarker = lens _lovrrsNextKeyMarker (\s a -> s {_lovrrsNextKeyMarker = a})

-- | The bucket name.
lovrrsName :: Lens' ListObjectVersionsResponse (Maybe BucketName)
lovrrsName = lens _lovrrsName (\s a -> s {_lovrrsName = a})

-- | Container for an object that is a delete marker.
lovrrsDeleteMarkers :: Lens' ListObjectVersionsResponse [DeleteMarkerEntry]
lovrrsDeleteMarkers = lens _lovrrsDeleteMarkers (\s a -> s {_lovrrsDeleteMarkers = a}) . _Default . _Coerce

-- | Marks the last version of the key returned in a truncated response.
lovrrsVersionIdMarker :: Lens' ListObjectVersionsResponse (Maybe Text)
lovrrsVersionIdMarker = lens _lovrrsVersionIdMarker (\s a -> s {_lovrrsVersionIdMarker = a})

-- | When the number of responses exceeds the value of @MaxKeys@ , @NextVersionIdMarker@ specifies the first object version not returned that satisfies the search criteria. Use this value for the version-id-marker request parameter in a subsequent request.
lovrrsNextVersionIdMarker :: Lens' ListObjectVersionsResponse (Maybe Text)
lovrrsNextVersionIdMarker = lens _lovrrsNextVersionIdMarker (\s a -> s {_lovrrsNextVersionIdMarker = a})

-- | -- | The response status code.
lovrrsResponseStatus :: Lens' ListObjectVersionsResponse Int
lovrrsResponseStatus = lens _lovrrsResponseStatus (\s a -> s {_lovrrsResponseStatus = a})

instance NFData ListObjectVersionsResponse
