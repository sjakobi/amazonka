{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Types.MigrationTaskSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Types.MigrationTaskSummary where

import Network.AWS.Lens
import Network.AWS.MigrationHub.Types.MigrationStatus
import Network.AWS.Prelude

-- | MigrationTaskSummary includes @MigrationTaskName@ , @ProgressPercent@ , @ProgressUpdateStream@ , @Status@ , and @UpdateDateTime@ for each task.
--
--
--
-- /See:/ 'migrationTaskSummary' smart constructor.
data MigrationTaskSummary = MigrationTaskSummary'
  { _mtsStatus ::
      !(Maybe MigrationStatus),
    _mtsProgressPercent ::
      !(Maybe Nat),
    _mtsUpdateDateTime ::
      !(Maybe POSIX),
    _mtsStatusDetail ::
      !(Maybe Text),
    _mtsMigrationTaskName ::
      !(Maybe Text),
    _mtsProgressUpdateStream ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MigrationTaskSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtsStatus' - Status of the task.
--
-- * 'mtsProgressPercent' - Indication of the percentage completion of the task.
--
-- * 'mtsUpdateDateTime' - The timestamp when the task was gathered.
--
-- * 'mtsStatusDetail' - Detail information of what is being done within the overall status state.
--
-- * 'mtsMigrationTaskName' - Unique identifier that references the migration task. /Do not store personal data in this field./
--
-- * 'mtsProgressUpdateStream' - An AWS resource used for access control. It should uniquely identify the migration tool as it is used for all updates made by the tool.
migrationTaskSummary ::
  MigrationTaskSummary
migrationTaskSummary =
  MigrationTaskSummary'
    { _mtsStatus = Nothing,
      _mtsProgressPercent = Nothing,
      _mtsUpdateDateTime = Nothing,
      _mtsStatusDetail = Nothing,
      _mtsMigrationTaskName = Nothing,
      _mtsProgressUpdateStream = Nothing
    }

-- | Status of the task.
mtsStatus :: Lens' MigrationTaskSummary (Maybe MigrationStatus)
mtsStatus = lens _mtsStatus (\s a -> s {_mtsStatus = a})

-- | Indication of the percentage completion of the task.
mtsProgressPercent :: Lens' MigrationTaskSummary (Maybe Natural)
mtsProgressPercent = lens _mtsProgressPercent (\s a -> s {_mtsProgressPercent = a}) . mapping _Nat

-- | The timestamp when the task was gathered.
mtsUpdateDateTime :: Lens' MigrationTaskSummary (Maybe UTCTime)
mtsUpdateDateTime = lens _mtsUpdateDateTime (\s a -> s {_mtsUpdateDateTime = a}) . mapping _Time

-- | Detail information of what is being done within the overall status state.
mtsStatusDetail :: Lens' MigrationTaskSummary (Maybe Text)
mtsStatusDetail = lens _mtsStatusDetail (\s a -> s {_mtsStatusDetail = a})

-- | Unique identifier that references the migration task. /Do not store personal data in this field./
mtsMigrationTaskName :: Lens' MigrationTaskSummary (Maybe Text)
mtsMigrationTaskName = lens _mtsMigrationTaskName (\s a -> s {_mtsMigrationTaskName = a})

-- | An AWS resource used for access control. It should uniquely identify the migration tool as it is used for all updates made by the tool.
mtsProgressUpdateStream :: Lens' MigrationTaskSummary (Maybe Text)
mtsProgressUpdateStream = lens _mtsProgressUpdateStream (\s a -> s {_mtsProgressUpdateStream = a})

instance FromJSON MigrationTaskSummary where
  parseJSON =
    withObject
      "MigrationTaskSummary"
      ( \x ->
          MigrationTaskSummary'
            <$> (x .:? "Status")
            <*> (x .:? "ProgressPercent")
            <*> (x .:? "UpdateDateTime")
            <*> (x .:? "StatusDetail")
            <*> (x .:? "MigrationTaskName")
            <*> (x .:? "ProgressUpdateStream")
      )

instance Hashable MigrationTaskSummary

instance NFData MigrationTaskSummary
