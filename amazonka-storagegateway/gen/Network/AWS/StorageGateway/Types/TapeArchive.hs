{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.TapeArchive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.TapeArchive where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a virtual tape that is archived in the virtual tape shelf (VTS).
--
--
--
-- /See:/ 'tapeArchive' smart constructor.
data TapeArchive = TapeArchive'
  { _taPoolEntryDate ::
      !(Maybe POSIX),
    _taTapeStatus :: !(Maybe Text),
    _taTapeCreatedDate :: !(Maybe POSIX),
    _taPoolId :: !(Maybe Text),
    _taCompletionTime :: !(Maybe POSIX),
    _taRetrievedTo :: !(Maybe Text),
    _taTapeARN :: !(Maybe Text),
    _taKMSKey :: !(Maybe Text),
    _taWorm :: !(Maybe Bool),
    _taTapeBarcode :: !(Maybe Text),
    _taTapeUsedInBytes :: !(Maybe Integer),
    _taTapeSizeInBytes :: !(Maybe Integer),
    _taRetentionStartDate :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TapeArchive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taPoolEntryDate' - The time that the tape entered the custom tape pool. The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.
--
-- * 'taTapeStatus' - The current state of the archived virtual tape.
--
-- * 'taTapeCreatedDate' - The date the virtual tape was created.
--
-- * 'taPoolId' - The ID of the pool that was used to archive the tape. The tapes in this pool are archived in the S3 storage class that is associated with the pool. Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
--
-- * 'taCompletionTime' - The time that the archiving of the virtual tape was completed. The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.
--
-- * 'taRetrievedTo' - The Amazon Resource Name (ARN) of the tape gateway that the virtual tape is being retrieved to. The virtual tape is retrieved from the virtual tape shelf (VTS).
--
-- * 'taTapeARN' - The Amazon Resource Name (ARN) of an archived virtual tape.
--
-- * 'taKMSKey' - Undocumented member.
--
-- * 'taWorm' - Set to @true@ if the archived tape is stored as write-once-read-many (WORM).
--
-- * 'taTapeBarcode' - The barcode that identifies the archived virtual tape.
--
-- * 'taTapeUsedInBytes' - The size, in bytes, of data stored on the virtual tape.
--
-- * 'taTapeSizeInBytes' - The size, in bytes, of the archived virtual tape.
--
-- * 'taRetentionStartDate' - If the archived tape is subject to tape retention lock, the date that the archived tape started being retained.
tapeArchive ::
  TapeArchive
tapeArchive =
  TapeArchive'
    { _taPoolEntryDate = Nothing,
      _taTapeStatus = Nothing,
      _taTapeCreatedDate = Nothing,
      _taPoolId = Nothing,
      _taCompletionTime = Nothing,
      _taRetrievedTo = Nothing,
      _taTapeARN = Nothing,
      _taKMSKey = Nothing,
      _taWorm = Nothing,
      _taTapeBarcode = Nothing,
      _taTapeUsedInBytes = Nothing,
      _taTapeSizeInBytes = Nothing,
      _taRetentionStartDate = Nothing
    }

-- | The time that the tape entered the custom tape pool. The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.
taPoolEntryDate :: Lens' TapeArchive (Maybe UTCTime)
taPoolEntryDate = lens _taPoolEntryDate (\s a -> s {_taPoolEntryDate = a}) . mapping _Time

-- | The current state of the archived virtual tape.
taTapeStatus :: Lens' TapeArchive (Maybe Text)
taTapeStatus = lens _taTapeStatus (\s a -> s {_taTapeStatus = a})

-- | The date the virtual tape was created.
taTapeCreatedDate :: Lens' TapeArchive (Maybe UTCTime)
taTapeCreatedDate = lens _taTapeCreatedDate (\s a -> s {_taTapeCreatedDate = a}) . mapping _Time

-- | The ID of the pool that was used to archive the tape. The tapes in this pool are archived in the S3 storage class that is associated with the pool. Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
taPoolId :: Lens' TapeArchive (Maybe Text)
taPoolId = lens _taPoolId (\s a -> s {_taPoolId = a})

-- | The time that the archiving of the virtual tape was completed. The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.
taCompletionTime :: Lens' TapeArchive (Maybe UTCTime)
taCompletionTime = lens _taCompletionTime (\s a -> s {_taCompletionTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the tape gateway that the virtual tape is being retrieved to. The virtual tape is retrieved from the virtual tape shelf (VTS).
taRetrievedTo :: Lens' TapeArchive (Maybe Text)
taRetrievedTo = lens _taRetrievedTo (\s a -> s {_taRetrievedTo = a})

-- | The Amazon Resource Name (ARN) of an archived virtual tape.
taTapeARN :: Lens' TapeArchive (Maybe Text)
taTapeARN = lens _taTapeARN (\s a -> s {_taTapeARN = a})

-- | Undocumented member.
taKMSKey :: Lens' TapeArchive (Maybe Text)
taKMSKey = lens _taKMSKey (\s a -> s {_taKMSKey = a})

-- | Set to @true@ if the archived tape is stored as write-once-read-many (WORM).
taWorm :: Lens' TapeArchive (Maybe Bool)
taWorm = lens _taWorm (\s a -> s {_taWorm = a})

-- | The barcode that identifies the archived virtual tape.
taTapeBarcode :: Lens' TapeArchive (Maybe Text)
taTapeBarcode = lens _taTapeBarcode (\s a -> s {_taTapeBarcode = a})

-- | The size, in bytes, of data stored on the virtual tape.
taTapeUsedInBytes :: Lens' TapeArchive (Maybe Integer)
taTapeUsedInBytes = lens _taTapeUsedInBytes (\s a -> s {_taTapeUsedInBytes = a})

-- | The size, in bytes, of the archived virtual tape.
taTapeSizeInBytes :: Lens' TapeArchive (Maybe Integer)
taTapeSizeInBytes = lens _taTapeSizeInBytes (\s a -> s {_taTapeSizeInBytes = a})

-- | If the archived tape is subject to tape retention lock, the date that the archived tape started being retained.
taRetentionStartDate :: Lens' TapeArchive (Maybe UTCTime)
taRetentionStartDate = lens _taRetentionStartDate (\s a -> s {_taRetentionStartDate = a}) . mapping _Time

instance FromJSON TapeArchive where
  parseJSON =
    withObject
      "TapeArchive"
      ( \x ->
          TapeArchive'
            <$> (x .:? "PoolEntryDate")
            <*> (x .:? "TapeStatus")
            <*> (x .:? "TapeCreatedDate")
            <*> (x .:? "PoolId")
            <*> (x .:? "CompletionTime")
            <*> (x .:? "RetrievedTo")
            <*> (x .:? "TapeARN")
            <*> (x .:? "KMSKey")
            <*> (x .:? "Worm")
            <*> (x .:? "TapeBarcode")
            <*> (x .:? "TapeUsedInBytes")
            <*> (x .:? "TapeSizeInBytes")
            <*> (x .:? "RetentionStartDate")
      )

instance Hashable TapeArchive

instance NFData TapeArchive
