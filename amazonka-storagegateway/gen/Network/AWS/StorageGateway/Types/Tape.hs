{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.Tape
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.Tape where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a virtual tape object.
--
--
--
-- /See:/ 'tape' smart constructor.
data Tape = Tape'
  { _tPoolEntryDate :: !(Maybe POSIX),
    _tTapeStatus :: !(Maybe Text),
    _tTapeCreatedDate :: !(Maybe POSIX),
    _tPoolId :: !(Maybe Text),
    _tVTLDevice :: !(Maybe Text),
    _tTapeARN :: !(Maybe Text),
    _tKMSKey :: !(Maybe Text),
    _tWorm :: !(Maybe Bool),
    _tTapeBarcode :: !(Maybe Text),
    _tTapeUsedInBytes :: !(Maybe Integer),
    _tTapeSizeInBytes :: !(Maybe Integer),
    _tRetentionStartDate :: !(Maybe POSIX),
    _tProgress :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Tape' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tPoolEntryDate' - The date that the tape enters a custom tape pool.
--
-- * 'tTapeStatus' - The current state of the virtual tape.
--
-- * 'tTapeCreatedDate' - The date the virtual tape was created.
--
-- * 'tPoolId' - The ID of the pool that contains tapes that will be archived. The tapes in this pool are archived in the S3 storage class that is associated with the pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool. Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
--
-- * 'tVTLDevice' - The virtual tape library (VTL) device that the virtual tape is associated with.
--
-- * 'tTapeARN' - The Amazon Resource Name (ARN) of the virtual tape.
--
-- * 'tKMSKey' - Undocumented member.
--
-- * 'tWorm' - If the tape is archived as write-once-read-many (WORM), this value is @true@ .
--
-- * 'tTapeBarcode' - The barcode that identifies a specific virtual tape.
--
-- * 'tTapeUsedInBytes' - The size, in bytes, of data stored on the virtual tape.
--
-- * 'tTapeSizeInBytes' - The size, in bytes, of the virtual tape capacity.
--
-- * 'tRetentionStartDate' - The date that the tape is first archived with tape retention lock enabled.
--
-- * 'tProgress' - For archiving virtual tapes, indicates how much data remains to be uploaded before archiving is complete. Range: 0 (not started) to 100 (complete).
tape ::
  Tape
tape =
  Tape'
    { _tPoolEntryDate = Nothing,
      _tTapeStatus = Nothing,
      _tTapeCreatedDate = Nothing,
      _tPoolId = Nothing,
      _tVTLDevice = Nothing,
      _tTapeARN = Nothing,
      _tKMSKey = Nothing,
      _tWorm = Nothing,
      _tTapeBarcode = Nothing,
      _tTapeUsedInBytes = Nothing,
      _tTapeSizeInBytes = Nothing,
      _tRetentionStartDate = Nothing,
      _tProgress = Nothing
    }

-- | The date that the tape enters a custom tape pool.
tPoolEntryDate :: Lens' Tape (Maybe UTCTime)
tPoolEntryDate = lens _tPoolEntryDate (\s a -> s {_tPoolEntryDate = a}) . mapping _Time

-- | The current state of the virtual tape.
tTapeStatus :: Lens' Tape (Maybe Text)
tTapeStatus = lens _tTapeStatus (\s a -> s {_tTapeStatus = a})

-- | The date the virtual tape was created.
tTapeCreatedDate :: Lens' Tape (Maybe UTCTime)
tTapeCreatedDate = lens _tTapeCreatedDate (\s a -> s {_tTapeCreatedDate = a}) . mapping _Time

-- | The ID of the pool that contains tapes that will be archived. The tapes in this pool are archived in the S3 storage class that is associated with the pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool. Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
tPoolId :: Lens' Tape (Maybe Text)
tPoolId = lens _tPoolId (\s a -> s {_tPoolId = a})

-- | The virtual tape library (VTL) device that the virtual tape is associated with.
tVTLDevice :: Lens' Tape (Maybe Text)
tVTLDevice = lens _tVTLDevice (\s a -> s {_tVTLDevice = a})

-- | The Amazon Resource Name (ARN) of the virtual tape.
tTapeARN :: Lens' Tape (Maybe Text)
tTapeARN = lens _tTapeARN (\s a -> s {_tTapeARN = a})

-- | Undocumented member.
tKMSKey :: Lens' Tape (Maybe Text)
tKMSKey = lens _tKMSKey (\s a -> s {_tKMSKey = a})

-- | If the tape is archived as write-once-read-many (WORM), this value is @true@ .
tWorm :: Lens' Tape (Maybe Bool)
tWorm = lens _tWorm (\s a -> s {_tWorm = a})

-- | The barcode that identifies a specific virtual tape.
tTapeBarcode :: Lens' Tape (Maybe Text)
tTapeBarcode = lens _tTapeBarcode (\s a -> s {_tTapeBarcode = a})

-- | The size, in bytes, of data stored on the virtual tape.
tTapeUsedInBytes :: Lens' Tape (Maybe Integer)
tTapeUsedInBytes = lens _tTapeUsedInBytes (\s a -> s {_tTapeUsedInBytes = a})

-- | The size, in bytes, of the virtual tape capacity.
tTapeSizeInBytes :: Lens' Tape (Maybe Integer)
tTapeSizeInBytes = lens _tTapeSizeInBytes (\s a -> s {_tTapeSizeInBytes = a})

-- | The date that the tape is first archived with tape retention lock enabled.
tRetentionStartDate :: Lens' Tape (Maybe UTCTime)
tRetentionStartDate = lens _tRetentionStartDate (\s a -> s {_tRetentionStartDate = a}) . mapping _Time

-- | For archiving virtual tapes, indicates how much data remains to be uploaded before archiving is complete. Range: 0 (not started) to 100 (complete).
tProgress :: Lens' Tape (Maybe Double)
tProgress = lens _tProgress (\s a -> s {_tProgress = a})

instance FromJSON Tape where
  parseJSON =
    withObject
      "Tape"
      ( \x ->
          Tape'
            <$> (x .:? "PoolEntryDate")
            <*> (x .:? "TapeStatus")
            <*> (x .:? "TapeCreatedDate")
            <*> (x .:? "PoolId")
            <*> (x .:? "VTLDevice")
            <*> (x .:? "TapeARN")
            <*> (x .:? "KMSKey")
            <*> (x .:? "Worm")
            <*> (x .:? "TapeBarcode")
            <*> (x .:? "TapeUsedInBytes")
            <*> (x .:? "TapeSizeInBytes")
            <*> (x .:? "RetentionStartDate")
            <*> (x .:? "Progress")
      )

instance Hashable Tape

instance NFData Tape
