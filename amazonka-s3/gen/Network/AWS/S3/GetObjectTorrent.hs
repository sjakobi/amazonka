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
-- Module      : Network.AWS.S3.GetObjectTorrent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns torrent files from a bucket. BitTorrent can save you bandwidth when you're distributing large files. For more information about BitTorrent, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3Torrent.html Using BitTorrent with Amazon S3> .
--
--
-- To use GET, you must have READ access to the object.
--
-- This action is not supported by Amazon S3 on Outposts.
--
-- The following operation is related to @GetObjectTorrent@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html GetObject>
module Network.AWS.S3.GetObjectTorrent
  ( -- * Creating a Request
    getObjectTorrent,
    GetObjectTorrent,

    -- * Request Lenses
    gExpectedBucketOwner,
    gRequestPayer,
    gBucket,
    gKey,

    -- * Destructuring the Response
    getObjectTorrentResponse,
    GetObjectTorrentResponse,

    -- * Response Lenses
    gotrrsRequestCharged,
    gotrrsResponseStatus,
    gotrrsBody,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'getObjectTorrent' smart constructor.
data GetObjectTorrent = GetObjectTorrent'
  { _gExpectedBucketOwner ::
      !(Maybe Text),
    _gRequestPayer ::
      !(Maybe RequestPayer),
    _gBucket :: !BucketName,
    _gKey :: !ObjectKey
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetObjectTorrent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'gRequestPayer' - Undocumented member.
--
-- * 'gBucket' - The name of the bucket containing the object for which to get the torrent files.
--
-- * 'gKey' - The object key for which to get the information.
getObjectTorrent ::
  -- | 'gBucket'
  BucketName ->
  -- | 'gKey'
  ObjectKey ->
  GetObjectTorrent
getObjectTorrent pBucket_ pKey_ =
  GetObjectTorrent'
    { _gExpectedBucketOwner = Nothing,
      _gRequestPayer = Nothing,
      _gBucket = pBucket_,
      _gKey = pKey_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
gExpectedBucketOwner :: Lens' GetObjectTorrent (Maybe Text)
gExpectedBucketOwner = lens _gExpectedBucketOwner (\s a -> s {_gExpectedBucketOwner = a})

-- | Undocumented member.
gRequestPayer :: Lens' GetObjectTorrent (Maybe RequestPayer)
gRequestPayer = lens _gRequestPayer (\s a -> s {_gRequestPayer = a})

-- | The name of the bucket containing the object for which to get the torrent files.
gBucket :: Lens' GetObjectTorrent BucketName
gBucket = lens _gBucket (\s a -> s {_gBucket = a})

-- | The object key for which to get the information.
gKey :: Lens' GetObjectTorrent ObjectKey
gKey = lens _gKey (\s a -> s {_gKey = a})

instance AWSRequest GetObjectTorrent where
  type Rs GetObjectTorrent = GetObjectTorrentResponse
  request = get s3
  response =
    receiveBody
      ( \s h x ->
          GetObjectTorrentResponse'
            <$> (h .#? "x-amz-request-charged")
            <*> (pure (fromEnum s))
            <*> (pure x)
      )

instance Hashable GetObjectTorrent

instance NFData GetObjectTorrent

instance ToHeaders GetObjectTorrent where
  toHeaders GetObjectTorrent' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _gExpectedBucketOwner,
        "x-amz-request-payer" =# _gRequestPayer
      ]

instance ToPath GetObjectTorrent where
  toPath GetObjectTorrent' {..} =
    mconcat ["/", toBS _gBucket, "/", toBS _gKey]

instance ToQuery GetObjectTorrent where
  toQuery = const (mconcat ["torrent"])

-- | /See:/ 'getObjectTorrentResponse' smart constructor.
data GetObjectTorrentResponse = GetObjectTorrentResponse'
  { _gotrrsRequestCharged ::
      !( Maybe
           RequestCharged
       ),
    _gotrrsResponseStatus ::
      !Int,
    _gotrrsBody ::
      !RsBody
  }
  deriving (Show, Generic)

-- | Creates a value of 'GetObjectTorrentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gotrrsRequestCharged' - Undocumented member.
--
-- * 'gotrrsResponseStatus' - -- | The response status code.
--
-- * 'gotrrsBody' - A Bencoded dictionary as defined by the BitTorrent specification
getObjectTorrentResponse ::
  -- | 'gotrrsResponseStatus'
  Int ->
  -- | 'gotrrsBody'
  RsBody ->
  GetObjectTorrentResponse
getObjectTorrentResponse pResponseStatus_ pBody_ =
  GetObjectTorrentResponse'
    { _gotrrsRequestCharged =
        Nothing,
      _gotrrsResponseStatus = pResponseStatus_,
      _gotrrsBody = pBody_
    }

-- | Undocumented member.
gotrrsRequestCharged :: Lens' GetObjectTorrentResponse (Maybe RequestCharged)
gotrrsRequestCharged = lens _gotrrsRequestCharged (\s a -> s {_gotrrsRequestCharged = a})

-- | -- | The response status code.
gotrrsResponseStatus :: Lens' GetObjectTorrentResponse Int
gotrrsResponseStatus = lens _gotrrsResponseStatus (\s a -> s {_gotrrsResponseStatus = a})

-- | A Bencoded dictionary as defined by the BitTorrent specification
gotrrsBody :: Lens' GetObjectTorrentResponse RsBody
gotrrsBody = lens _gotrrsBody (\s a -> s {_gotrrsBody = a})
