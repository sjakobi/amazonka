{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Trigger
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Trigger where

import Network.AWS.Glue.Types.Action
import Network.AWS.Glue.Types.Predicate
import Network.AWS.Glue.Types.TriggerState
import Network.AWS.Glue.Types.TriggerType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a specific trigger.
--
--
--
-- /See:/ 'trigger' smart constructor.
data Trigger = Trigger'
  { _tWorkflowName ::
      !(Maybe Text),
    _tId :: !(Maybe Text),
    _tActions :: !(Maybe [Action]),
    _tState :: !(Maybe TriggerState),
    _tName :: !(Maybe Text),
    _tPredicate :: !(Maybe Predicate),
    _tDescription :: !(Maybe Text),
    _tType :: !(Maybe TriggerType),
    _tSchedule :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Trigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tWorkflowName' - The name of the workflow associated with the trigger.
--
-- * 'tId' - Reserved for future use.
--
-- * 'tActions' - The actions initiated by this trigger.
--
-- * 'tState' - The current state of the trigger.
--
-- * 'tName' - The name of the trigger.
--
-- * 'tPredicate' - The predicate of this trigger, which defines when it will fire.
--
-- * 'tDescription' - A description of this trigger.
--
-- * 'tType' - The type of trigger that this is.
--
-- * 'tSchedule' - A @cron@ expression used to specify the schedule (see <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers> . For example, to run something every day at 12:15 UTC, you would specify: @cron(15 12 * * ? *)@ .
trigger ::
  Trigger
trigger =
  Trigger'
    { _tWorkflowName = Nothing,
      _tId = Nothing,
      _tActions = Nothing,
      _tState = Nothing,
      _tName = Nothing,
      _tPredicate = Nothing,
      _tDescription = Nothing,
      _tType = Nothing,
      _tSchedule = Nothing
    }

-- | The name of the workflow associated with the trigger.
tWorkflowName :: Lens' Trigger (Maybe Text)
tWorkflowName = lens _tWorkflowName (\s a -> s {_tWorkflowName = a})

-- | Reserved for future use.
tId :: Lens' Trigger (Maybe Text)
tId = lens _tId (\s a -> s {_tId = a})

-- | The actions initiated by this trigger.
tActions :: Lens' Trigger [Action]
tActions = lens _tActions (\s a -> s {_tActions = a}) . _Default . _Coerce

-- | The current state of the trigger.
tState :: Lens' Trigger (Maybe TriggerState)
tState = lens _tState (\s a -> s {_tState = a})

-- | The name of the trigger.
tName :: Lens' Trigger (Maybe Text)
tName = lens _tName (\s a -> s {_tName = a})

-- | The predicate of this trigger, which defines when it will fire.
tPredicate :: Lens' Trigger (Maybe Predicate)
tPredicate = lens _tPredicate (\s a -> s {_tPredicate = a})

-- | A description of this trigger.
tDescription :: Lens' Trigger (Maybe Text)
tDescription = lens _tDescription (\s a -> s {_tDescription = a})

-- | The type of trigger that this is.
tType :: Lens' Trigger (Maybe TriggerType)
tType = lens _tType (\s a -> s {_tType = a})

-- | A @cron@ expression used to specify the schedule (see <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers> . For example, to run something every day at 12:15 UTC, you would specify: @cron(15 12 * * ? *)@ .
tSchedule :: Lens' Trigger (Maybe Text)
tSchedule = lens _tSchedule (\s a -> s {_tSchedule = a})

instance FromJSON Trigger where
  parseJSON =
    withObject
      "Trigger"
      ( \x ->
          Trigger'
            <$> (x .:? "WorkflowName")
            <*> (x .:? "Id")
            <*> (x .:? "Actions" .!= mempty)
            <*> (x .:? "State")
            <*> (x .:? "Name")
            <*> (x .:? "Predicate")
            <*> (x .:? "Description")
            <*> (x .:? "Type")
            <*> (x .:? "Schedule")
      )

instance Hashable Trigger

instance NFData Trigger
