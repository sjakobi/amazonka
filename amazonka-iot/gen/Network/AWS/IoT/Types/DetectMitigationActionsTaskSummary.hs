{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DetectMitigationActionsTaskSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DetectMitigationActionsTaskSummary where

import Network.AWS.IoT.Types.DetectMitigationActionsTaskStatistics
import Network.AWS.IoT.Types.DetectMitigationActionsTaskStatus
import Network.AWS.IoT.Types.DetectMitigationActionsTaskTarget
import Network.AWS.IoT.Types.MitigationAction
import Network.AWS.IoT.Types.ViolationEventOccurrenceRange
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The summary of the mitigation action tasks.
--
--
--
-- /See:/ 'detectMitigationActionsTaskSummary' smart constructor.
data DetectMitigationActionsTaskSummary = DetectMitigationActionsTaskSummary'
  { _dmatsTaskEndTime ::
      !( Maybe
           POSIX
       ),
    _dmatsTaskStatistics ::
      !( Maybe
           DetectMitigationActionsTaskStatistics
       ),
    _dmatsTaskId ::
      !( Maybe
           Text
       ),
    _dmatsViolationEventOccurrenceRange ::
      !( Maybe
           ViolationEventOccurrenceRange
       ),
    _dmatsOnlyActiveViolationsIncluded ::
      !( Maybe
           Bool
       ),
    _dmatsTarget ::
      !( Maybe
           DetectMitigationActionsTaskTarget
       ),
    _dmatsTaskStatus ::
      !( Maybe
           DetectMitigationActionsTaskStatus
       ),
    _dmatsActionsDefinition ::
      !( Maybe
           [MitigationAction]
       ),
    _dmatsTaskStartTime ::
      !( Maybe
           POSIX
       ),
    _dmatsSuppressedAlertsIncluded ::
      !( Maybe
           Bool
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetectMitigationActionsTaskSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmatsTaskEndTime' - The date the task ended.
--
-- * 'dmatsTaskStatistics' - The statistics of a mitigation action task.
--
-- * 'dmatsTaskId' - The unique identifier of the task.
--
-- * 'dmatsViolationEventOccurrenceRange' - Specifies the time period of which violation events occurred between.
--
-- * 'dmatsOnlyActiveViolationsIncluded' - Includes only active violations.
--
-- * 'dmatsTarget' - Specifies the ML Detect findings to which the mitigation actions are applied.
--
-- * 'dmatsTaskStatus' - The status of the task.
--
-- * 'dmatsActionsDefinition' - The definition of the actions.
--
-- * 'dmatsTaskStartTime' - The date the task started.
--
-- * 'dmatsSuppressedAlertsIncluded' - Includes suppressed alerts.
detectMitigationActionsTaskSummary ::
  DetectMitigationActionsTaskSummary
detectMitigationActionsTaskSummary =
  DetectMitigationActionsTaskSummary'
    { _dmatsTaskEndTime =
        Nothing,
      _dmatsTaskStatistics = Nothing,
      _dmatsTaskId = Nothing,
      _dmatsViolationEventOccurrenceRange =
        Nothing,
      _dmatsOnlyActiveViolationsIncluded =
        Nothing,
      _dmatsTarget = Nothing,
      _dmatsTaskStatus = Nothing,
      _dmatsActionsDefinition = Nothing,
      _dmatsTaskStartTime = Nothing,
      _dmatsSuppressedAlertsIncluded =
        Nothing
    }

-- | The date the task ended.
dmatsTaskEndTime :: Lens' DetectMitigationActionsTaskSummary (Maybe UTCTime)
dmatsTaskEndTime = lens _dmatsTaskEndTime (\s a -> s {_dmatsTaskEndTime = a}) . mapping _Time

-- | The statistics of a mitigation action task.
dmatsTaskStatistics :: Lens' DetectMitigationActionsTaskSummary (Maybe DetectMitigationActionsTaskStatistics)
dmatsTaskStatistics = lens _dmatsTaskStatistics (\s a -> s {_dmatsTaskStatistics = a})

-- | The unique identifier of the task.
dmatsTaskId :: Lens' DetectMitigationActionsTaskSummary (Maybe Text)
dmatsTaskId = lens _dmatsTaskId (\s a -> s {_dmatsTaskId = a})

-- | Specifies the time period of which violation events occurred between.
dmatsViolationEventOccurrenceRange :: Lens' DetectMitigationActionsTaskSummary (Maybe ViolationEventOccurrenceRange)
dmatsViolationEventOccurrenceRange = lens _dmatsViolationEventOccurrenceRange (\s a -> s {_dmatsViolationEventOccurrenceRange = a})

-- | Includes only active violations.
dmatsOnlyActiveViolationsIncluded :: Lens' DetectMitigationActionsTaskSummary (Maybe Bool)
dmatsOnlyActiveViolationsIncluded = lens _dmatsOnlyActiveViolationsIncluded (\s a -> s {_dmatsOnlyActiveViolationsIncluded = a})

-- | Specifies the ML Detect findings to which the mitigation actions are applied.
dmatsTarget :: Lens' DetectMitigationActionsTaskSummary (Maybe DetectMitigationActionsTaskTarget)
dmatsTarget = lens _dmatsTarget (\s a -> s {_dmatsTarget = a})

-- | The status of the task.
dmatsTaskStatus :: Lens' DetectMitigationActionsTaskSummary (Maybe DetectMitigationActionsTaskStatus)
dmatsTaskStatus = lens _dmatsTaskStatus (\s a -> s {_dmatsTaskStatus = a})

-- | The definition of the actions.
dmatsActionsDefinition :: Lens' DetectMitigationActionsTaskSummary [MitigationAction]
dmatsActionsDefinition = lens _dmatsActionsDefinition (\s a -> s {_dmatsActionsDefinition = a}) . _Default . _Coerce

-- | The date the task started.
dmatsTaskStartTime :: Lens' DetectMitigationActionsTaskSummary (Maybe UTCTime)
dmatsTaskStartTime = lens _dmatsTaskStartTime (\s a -> s {_dmatsTaskStartTime = a}) . mapping _Time

-- | Includes suppressed alerts.
dmatsSuppressedAlertsIncluded :: Lens' DetectMitigationActionsTaskSummary (Maybe Bool)
dmatsSuppressedAlertsIncluded = lens _dmatsSuppressedAlertsIncluded (\s a -> s {_dmatsSuppressedAlertsIncluded = a})

instance FromJSON DetectMitigationActionsTaskSummary where
  parseJSON =
    withObject
      "DetectMitigationActionsTaskSummary"
      ( \x ->
          DetectMitigationActionsTaskSummary'
            <$> (x .:? "taskEndTime")
            <*> (x .:? "taskStatistics")
            <*> (x .:? "taskId")
            <*> (x .:? "violationEventOccurrenceRange")
            <*> (x .:? "onlyActiveViolationsIncluded")
            <*> (x .:? "target")
            <*> (x .:? "taskStatus")
            <*> (x .:? "actionsDefinition" .!= mempty)
            <*> (x .:? "taskStartTime")
            <*> (x .:? "suppressedAlertsIncluded")
      )

instance Hashable DetectMitigationActionsTaskSummary

instance NFData DetectMitigationActionsTaskSummary
