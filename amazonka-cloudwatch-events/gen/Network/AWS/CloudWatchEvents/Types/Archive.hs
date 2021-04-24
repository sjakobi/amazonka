{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.Archive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.Archive where

import Network.AWS.CloudWatchEvents.Types.ArchiveState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An @Archive@ object that contains details about an archive.
--
--
--
-- /See:/ 'archive' smart constructor.
data Archive = Archive'
  { _aEventCount ::
      !(Maybe Integer),
    _aEventSourceARN :: !(Maybe Text),
    _aCreationTime :: !(Maybe POSIX),
    _aStateReason :: !(Maybe Text),
    _aArchiveName :: !(Maybe Text),
    _aState :: !(Maybe ArchiveState),
    _aSizeBytes :: !(Maybe Integer),
    _aRetentionDays :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Archive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEventCount' - The number of events in the archive.
--
-- * 'aEventSourceARN' - The ARN of the event bus associated with the archive. Only events from this event bus are sent to the archive.
--
-- * 'aCreationTime' - The time stamp for the time that the archive was created.
--
-- * 'aStateReason' - A description for the reason that the archive is in the current state.
--
-- * 'aArchiveName' - The name of the archive.
--
-- * 'aState' - The current state of the archive.
--
-- * 'aSizeBytes' - The size of the archive, in bytes.
--
-- * 'aRetentionDays' - The number of days to retain events in the archive before they are deleted.
archive ::
  Archive
archive =
  Archive'
    { _aEventCount = Nothing,
      _aEventSourceARN = Nothing,
      _aCreationTime = Nothing,
      _aStateReason = Nothing,
      _aArchiveName = Nothing,
      _aState = Nothing,
      _aSizeBytes = Nothing,
      _aRetentionDays = Nothing
    }

-- | The number of events in the archive.
aEventCount :: Lens' Archive (Maybe Integer)
aEventCount = lens _aEventCount (\s a -> s {_aEventCount = a})

-- | The ARN of the event bus associated with the archive. Only events from this event bus are sent to the archive.
aEventSourceARN :: Lens' Archive (Maybe Text)
aEventSourceARN = lens _aEventSourceARN (\s a -> s {_aEventSourceARN = a})

-- | The time stamp for the time that the archive was created.
aCreationTime :: Lens' Archive (Maybe UTCTime)
aCreationTime = lens _aCreationTime (\s a -> s {_aCreationTime = a}) . mapping _Time

-- | A description for the reason that the archive is in the current state.
aStateReason :: Lens' Archive (Maybe Text)
aStateReason = lens _aStateReason (\s a -> s {_aStateReason = a})

-- | The name of the archive.
aArchiveName :: Lens' Archive (Maybe Text)
aArchiveName = lens _aArchiveName (\s a -> s {_aArchiveName = a})

-- | The current state of the archive.
aState :: Lens' Archive (Maybe ArchiveState)
aState = lens _aState (\s a -> s {_aState = a})

-- | The size of the archive, in bytes.
aSizeBytes :: Lens' Archive (Maybe Integer)
aSizeBytes = lens _aSizeBytes (\s a -> s {_aSizeBytes = a})

-- | The number of days to retain events in the archive before they are deleted.
aRetentionDays :: Lens' Archive (Maybe Natural)
aRetentionDays = lens _aRetentionDays (\s a -> s {_aRetentionDays = a}) . mapping _Nat

instance FromJSON Archive where
  parseJSON =
    withObject
      "Archive"
      ( \x ->
          Archive'
            <$> (x .:? "EventCount")
            <*> (x .:? "EventSourceArn")
            <*> (x .:? "CreationTime")
            <*> (x .:? "StateReason")
            <*> (x .:? "ArchiveName")
            <*> (x .:? "State")
            <*> (x .:? "SizeBytes")
            <*> (x .:? "RetentionDays")
      )

instance Hashable Archive

instance NFData Archive
