{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.TapeInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.TapeInfo where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a virtual tape.
--
--
--
-- /See:/ 'tapeInfo' smart constructor.
data TapeInfo = TapeInfo'
  { _tiPoolEntryDate ::
      !(Maybe POSIX),
    _tiTapeStatus :: !(Maybe Text),
    _tiPoolId :: !(Maybe Text),
    _tiTapeARN :: !(Maybe Text),
    _tiTapeBarcode :: !(Maybe Text),
    _tiTapeSizeInBytes :: !(Maybe Integer),
    _tiRetentionStartDate :: !(Maybe POSIX),
    _tiGatewayARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TapeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiPoolEntryDate' - The date that the tape entered the custom tape pool with tape retention lock enabled.
--
-- * 'tiTapeStatus' - The status of the tape.
--
-- * 'tiPoolId' - The ID of the pool that you want to add your tape to for archiving. The tape in this pool is archived in the S3 storage class that is associated with the pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool. Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
--
-- * 'tiTapeARN' - The Amazon Resource Name (ARN) of a virtual tape.
--
-- * 'tiTapeBarcode' - The barcode that identifies a specific virtual tape.
--
-- * 'tiTapeSizeInBytes' - The size, in bytes, of a virtual tape.
--
-- * 'tiRetentionStartDate' - The date that the tape became subject to tape retention lock.
--
-- * 'tiGatewayARN' - The Amazon Resource Name (ARN) of the gateway. Use the 'ListGateways' operation to return a list of gateways for your account and AWS Region.
tapeInfo ::
  TapeInfo
tapeInfo =
  TapeInfo'
    { _tiPoolEntryDate = Nothing,
      _tiTapeStatus = Nothing,
      _tiPoolId = Nothing,
      _tiTapeARN = Nothing,
      _tiTapeBarcode = Nothing,
      _tiTapeSizeInBytes = Nothing,
      _tiRetentionStartDate = Nothing,
      _tiGatewayARN = Nothing
    }

-- | The date that the tape entered the custom tape pool with tape retention lock enabled.
tiPoolEntryDate :: Lens' TapeInfo (Maybe UTCTime)
tiPoolEntryDate = lens _tiPoolEntryDate (\s a -> s {_tiPoolEntryDate = a}) . mapping _Time

-- | The status of the tape.
tiTapeStatus :: Lens' TapeInfo (Maybe Text)
tiTapeStatus = lens _tiTapeStatus (\s a -> s {_tiTapeStatus = a})

-- | The ID of the pool that you want to add your tape to for archiving. The tape in this pool is archived in the S3 storage class that is associated with the pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool. Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
tiPoolId :: Lens' TapeInfo (Maybe Text)
tiPoolId = lens _tiPoolId (\s a -> s {_tiPoolId = a})

-- | The Amazon Resource Name (ARN) of a virtual tape.
tiTapeARN :: Lens' TapeInfo (Maybe Text)
tiTapeARN = lens _tiTapeARN (\s a -> s {_tiTapeARN = a})

-- | The barcode that identifies a specific virtual tape.
tiTapeBarcode :: Lens' TapeInfo (Maybe Text)
tiTapeBarcode = lens _tiTapeBarcode (\s a -> s {_tiTapeBarcode = a})

-- | The size, in bytes, of a virtual tape.
tiTapeSizeInBytes :: Lens' TapeInfo (Maybe Integer)
tiTapeSizeInBytes = lens _tiTapeSizeInBytes (\s a -> s {_tiTapeSizeInBytes = a})

-- | The date that the tape became subject to tape retention lock.
tiRetentionStartDate :: Lens' TapeInfo (Maybe UTCTime)
tiRetentionStartDate = lens _tiRetentionStartDate (\s a -> s {_tiRetentionStartDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the gateway. Use the 'ListGateways' operation to return a list of gateways for your account and AWS Region.
tiGatewayARN :: Lens' TapeInfo (Maybe Text)
tiGatewayARN = lens _tiGatewayARN (\s a -> s {_tiGatewayARN = a})

instance FromJSON TapeInfo where
  parseJSON =
    withObject
      "TapeInfo"
      ( \x ->
          TapeInfo'
            <$> (x .:? "PoolEntryDate")
            <*> (x .:? "TapeStatus")
            <*> (x .:? "PoolId")
            <*> (x .:? "TapeARN")
            <*> (x .:? "TapeBarcode")
            <*> (x .:? "TapeSizeInBytes")
            <*> (x .:? "RetentionStartDate")
            <*> (x .:? "GatewayARN")
      )

instance Hashable TapeInfo

instance NFData TapeInfo
