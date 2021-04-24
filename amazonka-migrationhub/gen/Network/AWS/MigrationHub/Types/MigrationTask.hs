{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Types.MigrationTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Types.MigrationTask where

import Network.AWS.Lens
import Network.AWS.MigrationHub.Types.ResourceAttribute
import Network.AWS.MigrationHub.Types.Task
import Network.AWS.Prelude

-- | Represents a migration task in a migration tool.
--
--
--
-- /See:/ 'migrationTask' smart constructor.
data MigrationTask = MigrationTask'
  { _mtResourceAttributeList ::
      !(Maybe [ResourceAttribute]),
    _mtUpdateDateTime :: !(Maybe POSIX),
    _mtTask :: !(Maybe Task),
    _mtMigrationTaskName :: !(Maybe Text),
    _mtProgressUpdateStream :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MigrationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtResourceAttributeList' - Information about the resource that is being migrated. This data will be used to map the task to a resource in the Application Discovery Service repository.
--
-- * 'mtUpdateDateTime' - The timestamp when the task was gathered.
--
-- * 'mtTask' - Task object encapsulating task information.
--
-- * 'mtMigrationTaskName' - Unique identifier that references the migration task. /Do not store personal data in this field./
--
-- * 'mtProgressUpdateStream' - A name that identifies the vendor of the migration tool being used.
migrationTask ::
  MigrationTask
migrationTask =
  MigrationTask'
    { _mtResourceAttributeList = Nothing,
      _mtUpdateDateTime = Nothing,
      _mtTask = Nothing,
      _mtMigrationTaskName = Nothing,
      _mtProgressUpdateStream = Nothing
    }

-- | Information about the resource that is being migrated. This data will be used to map the task to a resource in the Application Discovery Service repository.
mtResourceAttributeList :: Lens' MigrationTask [ResourceAttribute]
mtResourceAttributeList = lens _mtResourceAttributeList (\s a -> s {_mtResourceAttributeList = a}) . _Default . _Coerce

-- | The timestamp when the task was gathered.
mtUpdateDateTime :: Lens' MigrationTask (Maybe UTCTime)
mtUpdateDateTime = lens _mtUpdateDateTime (\s a -> s {_mtUpdateDateTime = a}) . mapping _Time

-- | Task object encapsulating task information.
mtTask :: Lens' MigrationTask (Maybe Task)
mtTask = lens _mtTask (\s a -> s {_mtTask = a})

-- | Unique identifier that references the migration task. /Do not store personal data in this field./
mtMigrationTaskName :: Lens' MigrationTask (Maybe Text)
mtMigrationTaskName = lens _mtMigrationTaskName (\s a -> s {_mtMigrationTaskName = a})

-- | A name that identifies the vendor of the migration tool being used.
mtProgressUpdateStream :: Lens' MigrationTask (Maybe Text)
mtProgressUpdateStream = lens _mtProgressUpdateStream (\s a -> s {_mtProgressUpdateStream = a})

instance FromJSON MigrationTask where
  parseJSON =
    withObject
      "MigrationTask"
      ( \x ->
          MigrationTask'
            <$> (x .:? "ResourceAttributeList" .!= mempty)
            <*> (x .:? "UpdateDateTime")
            <*> (x .:? "Task")
            <*> (x .:? "MigrationTaskName")
            <*> (x .:? "ProgressUpdateStream")
      )

instance Hashable MigrationTask

instance NFData MigrationTask
