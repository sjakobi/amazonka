{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TaskRunFilterCriteria
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TaskRunFilterCriteria where

import Network.AWS.Glue.Types.TaskStatusType
import Network.AWS.Glue.Types.TaskType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The criteria that are used to filter the task runs for the machine learning transform.
--
--
--
-- /See:/ 'taskRunFilterCriteria' smart constructor.
data TaskRunFilterCriteria = TaskRunFilterCriteria'
  { _trfcStatus ::
      !(Maybe TaskStatusType),
    _trfcTaskRunType ::
      !(Maybe TaskType),
    _trfcStartedBefore ::
      !(Maybe POSIX),
    _trfcStartedAfter ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TaskRunFilterCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trfcStatus' - The current status of the task run.
--
-- * 'trfcTaskRunType' - The type of task run.
--
-- * 'trfcStartedBefore' - Filter on task runs started before this date.
--
-- * 'trfcStartedAfter' - Filter on task runs started after this date.
taskRunFilterCriteria ::
  TaskRunFilterCriteria
taskRunFilterCriteria =
  TaskRunFilterCriteria'
    { _trfcStatus = Nothing,
      _trfcTaskRunType = Nothing,
      _trfcStartedBefore = Nothing,
      _trfcStartedAfter = Nothing
    }

-- | The current status of the task run.
trfcStatus :: Lens' TaskRunFilterCriteria (Maybe TaskStatusType)
trfcStatus = lens _trfcStatus (\s a -> s {_trfcStatus = a})

-- | The type of task run.
trfcTaskRunType :: Lens' TaskRunFilterCriteria (Maybe TaskType)
trfcTaskRunType = lens _trfcTaskRunType (\s a -> s {_trfcTaskRunType = a})

-- | Filter on task runs started before this date.
trfcStartedBefore :: Lens' TaskRunFilterCriteria (Maybe UTCTime)
trfcStartedBefore = lens _trfcStartedBefore (\s a -> s {_trfcStartedBefore = a}) . mapping _Time

-- | Filter on task runs started after this date.
trfcStartedAfter :: Lens' TaskRunFilterCriteria (Maybe UTCTime)
trfcStartedAfter = lens _trfcStartedAfter (\s a -> s {_trfcStartedAfter = a}) . mapping _Time

instance Hashable TaskRunFilterCriteria

instance NFData TaskRunFilterCriteria

instance ToJSON TaskRunFilterCriteria where
  toJSON TaskRunFilterCriteria' {..} =
    object
      ( catMaybes
          [ ("Status" .=) <$> _trfcStatus,
            ("TaskRunType" .=) <$> _trfcTaskRunType,
            ("StartedBefore" .=) <$> _trfcStartedBefore,
            ("StartedAfter" .=) <$> _trfcStartedAfter
          ]
      )
