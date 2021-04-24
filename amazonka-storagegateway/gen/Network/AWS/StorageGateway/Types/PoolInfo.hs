{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.PoolInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.PoolInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.StorageGateway.Types.PoolStatus
import Network.AWS.StorageGateway.Types.RetentionLockType
import Network.AWS.StorageGateway.Types.TapeStorageClass

-- | Describes a custom tape pool.
--
--
--
-- /See:/ 'poolInfo' smart constructor.
data PoolInfo = PoolInfo'
  { _piPoolARN ::
      !(Maybe Text),
    _piPoolName :: !(Maybe Text),
    _piStorageClass :: !(Maybe TapeStorageClass),
    _piRetentionLockType :: !(Maybe RetentionLockType),
    _piPoolStatus :: !(Maybe PoolStatus),
    _piRetentionLockTimeInDays :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PoolInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piPoolARN' - The Amazon Resource Name (ARN) of the custom tape pool. Use the 'ListTapePools' operation to return a list of custom tape pools for your account and AWS Region.
--
-- * 'piPoolName' - The name of the custom tape pool. @PoolName@ can use all ASCII characters, except '/' and '\'.
--
-- * 'piStorageClass' - The storage class that is associated with the custom pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.
--
-- * 'piRetentionLockType' - Tape retention lock type, which can be configured in two modes. When configured in governance mode, AWS accounts with specific IAM permissions are authorized to remove the tape retention lock from archived virtual tapes. When configured in compliance mode, the tape retention lock cannot be removed by any user, including the root AWS account.
--
-- * 'piPoolStatus' - Status of the custom tape pool. Pool can be @ACTIVE@ or @DELETED@ .
--
-- * 'piRetentionLockTimeInDays' - Tape retention lock time is set in days. Tape retention lock can be enabled for up to 100 years (36,500 days).
poolInfo ::
  PoolInfo
poolInfo =
  PoolInfo'
    { _piPoolARN = Nothing,
      _piPoolName = Nothing,
      _piStorageClass = Nothing,
      _piRetentionLockType = Nothing,
      _piPoolStatus = Nothing,
      _piRetentionLockTimeInDays = Nothing
    }

-- | The Amazon Resource Name (ARN) of the custom tape pool. Use the 'ListTapePools' operation to return a list of custom tape pools for your account and AWS Region.
piPoolARN :: Lens' PoolInfo (Maybe Text)
piPoolARN = lens _piPoolARN (\s a -> s {_piPoolARN = a})

-- | The name of the custom tape pool. @PoolName@ can use all ASCII characters, except '/' and '\'.
piPoolName :: Lens' PoolInfo (Maybe Text)
piPoolName = lens _piPoolName (\s a -> s {_piPoolName = a})

-- | The storage class that is associated with the custom pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.
piStorageClass :: Lens' PoolInfo (Maybe TapeStorageClass)
piStorageClass = lens _piStorageClass (\s a -> s {_piStorageClass = a})

-- | Tape retention lock type, which can be configured in two modes. When configured in governance mode, AWS accounts with specific IAM permissions are authorized to remove the tape retention lock from archived virtual tapes. When configured in compliance mode, the tape retention lock cannot be removed by any user, including the root AWS account.
piRetentionLockType :: Lens' PoolInfo (Maybe RetentionLockType)
piRetentionLockType = lens _piRetentionLockType (\s a -> s {_piRetentionLockType = a})

-- | Status of the custom tape pool. Pool can be @ACTIVE@ or @DELETED@ .
piPoolStatus :: Lens' PoolInfo (Maybe PoolStatus)
piPoolStatus = lens _piPoolStatus (\s a -> s {_piPoolStatus = a})

-- | Tape retention lock time is set in days. Tape retention lock can be enabled for up to 100 years (36,500 days).
piRetentionLockTimeInDays :: Lens' PoolInfo (Maybe Natural)
piRetentionLockTimeInDays = lens _piRetentionLockTimeInDays (\s a -> s {_piRetentionLockTimeInDays = a}) . mapping _Nat

instance FromJSON PoolInfo where
  parseJSON =
    withObject
      "PoolInfo"
      ( \x ->
          PoolInfo'
            <$> (x .:? "PoolARN")
            <*> (x .:? "PoolName")
            <*> (x .:? "StorageClass")
            <*> (x .:? "RetentionLockType")
            <*> (x .:? "PoolStatus")
            <*> (x .:? "RetentionLockTimeInDays")
      )

instance Hashable PoolInfo

instance NFData PoolInfo
