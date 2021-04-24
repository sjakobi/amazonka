{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.S3BucketDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.S3BucketDetail where

import Network.AWS.GuardDuty.Types.DefaultServerSideEncryption
import Network.AWS.GuardDuty.Types.Owner
import Network.AWS.GuardDuty.Types.PublicAccess
import Network.AWS.GuardDuty.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information on the S3 bucket.
--
--
--
-- /See:/ 's3BucketDetail' smart constructor.
data S3BucketDetail = S3BucketDetail'
  { _sbdARN ::
      !(Maybe Text),
    _sbdPublicAccess :: !(Maybe PublicAccess),
    _sbdCreatedAt :: !(Maybe POSIX),
    _sbdDefaultServerSideEncryption ::
      !(Maybe DefaultServerSideEncryption),
    _sbdName :: !(Maybe Text),
    _sbdTags :: !(Maybe [Tag]),
    _sbdOwner :: !(Maybe Owner),
    _sbdType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3BucketDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbdARN' - The Amazon Resource Name (ARN) of the S3 bucket.
--
-- * 'sbdPublicAccess' - Describes the public access policies that apply to the S3 bucket.
--
-- * 'sbdCreatedAt' - The date and time the bucket was created at.
--
-- * 'sbdDefaultServerSideEncryption' - Describes the server side encryption method used in the S3 bucket.
--
-- * 'sbdName' - The name of the S3 bucket.
--
-- * 'sbdTags' - All tags attached to the S3 bucket
--
-- * 'sbdOwner' - The owner of the S3 bucket.
--
-- * 'sbdType' - Describes whether the bucket is a source or destination bucket.
s3BucketDetail ::
  S3BucketDetail
s3BucketDetail =
  S3BucketDetail'
    { _sbdARN = Nothing,
      _sbdPublicAccess = Nothing,
      _sbdCreatedAt = Nothing,
      _sbdDefaultServerSideEncryption = Nothing,
      _sbdName = Nothing,
      _sbdTags = Nothing,
      _sbdOwner = Nothing,
      _sbdType = Nothing
    }

-- | The Amazon Resource Name (ARN) of the S3 bucket.
sbdARN :: Lens' S3BucketDetail (Maybe Text)
sbdARN = lens _sbdARN (\s a -> s {_sbdARN = a})

-- | Describes the public access policies that apply to the S3 bucket.
sbdPublicAccess :: Lens' S3BucketDetail (Maybe PublicAccess)
sbdPublicAccess = lens _sbdPublicAccess (\s a -> s {_sbdPublicAccess = a})

-- | The date and time the bucket was created at.
sbdCreatedAt :: Lens' S3BucketDetail (Maybe UTCTime)
sbdCreatedAt = lens _sbdCreatedAt (\s a -> s {_sbdCreatedAt = a}) . mapping _Time

-- | Describes the server side encryption method used in the S3 bucket.
sbdDefaultServerSideEncryption :: Lens' S3BucketDetail (Maybe DefaultServerSideEncryption)
sbdDefaultServerSideEncryption = lens _sbdDefaultServerSideEncryption (\s a -> s {_sbdDefaultServerSideEncryption = a})

-- | The name of the S3 bucket.
sbdName :: Lens' S3BucketDetail (Maybe Text)
sbdName = lens _sbdName (\s a -> s {_sbdName = a})

-- | All tags attached to the S3 bucket
sbdTags :: Lens' S3BucketDetail [Tag]
sbdTags = lens _sbdTags (\s a -> s {_sbdTags = a}) . _Default . _Coerce

-- | The owner of the S3 bucket.
sbdOwner :: Lens' S3BucketDetail (Maybe Owner)
sbdOwner = lens _sbdOwner (\s a -> s {_sbdOwner = a})

-- | Describes whether the bucket is a source or destination bucket.
sbdType :: Lens' S3BucketDetail (Maybe Text)
sbdType = lens _sbdType (\s a -> s {_sbdType = a})

instance FromJSON S3BucketDetail where
  parseJSON =
    withObject
      "S3BucketDetail"
      ( \x ->
          S3BucketDetail'
            <$> (x .:? "arn")
            <*> (x .:? "publicAccess")
            <*> (x .:? "createdAt")
            <*> (x .:? "defaultServerSideEncryption")
            <*> (x .:? "name")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "owner")
            <*> (x .:? "type")
      )

instance Hashable S3BucketDetail

instance NFData S3BucketDetail
