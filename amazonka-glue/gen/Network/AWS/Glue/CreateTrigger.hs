{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.CreateTrigger
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new trigger.
module Network.AWS.Glue.CreateTrigger
  ( -- * Creating a Request
    createTrigger,
    CreateTrigger,

    -- * Request Lenses
    ctWorkflowName,
    ctStartOnCreation,
    ctPredicate,
    ctTags,
    ctDescription,
    ctSchedule,
    ctName,
    ctType,
    ctActions,

    -- * Destructuring the Response
    createTriggerResponse,
    CreateTriggerResponse,

    -- * Response Lenses
    ctrtrsName,
    ctrtrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTrigger' smart constructor.
data CreateTrigger = CreateTrigger'
  { _ctWorkflowName ::
      !(Maybe Text),
    _ctStartOnCreation :: !(Maybe Bool),
    _ctPredicate :: !(Maybe Predicate),
    _ctTags :: !(Maybe (Map Text Text)),
    _ctDescription :: !(Maybe Text),
    _ctSchedule :: !(Maybe Text),
    _ctName :: !Text,
    _ctType :: !TriggerType,
    _ctActions :: ![Action]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctWorkflowName' - The name of the workflow associated with the trigger.
--
-- * 'ctStartOnCreation' - Set to @true@ to start @SCHEDULED@ and @CONDITIONAL@ triggers when created. True is not supported for @ON_DEMAND@ triggers.
--
-- * 'ctPredicate' - A predicate to specify when the new trigger should fire. This field is required when the trigger type is @CONDITIONAL@ .
--
-- * 'ctTags' - The tags to use with this trigger. You may use tags to limit access to the trigger. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
--
-- * 'ctDescription' - A description of the new trigger.
--
-- * 'ctSchedule' - A @cron@ expression used to specify the schedule (see <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers> . For example, to run something every day at 12:15 UTC, you would specify: @cron(15 12 * * ? *)@ . This field is required when the trigger type is SCHEDULED.
--
-- * 'ctName' - The name of the trigger.
--
-- * 'ctType' - The type of the new trigger.
--
-- * 'ctActions' - The actions initiated by this trigger when it fires.
createTrigger ::
  -- | 'ctName'
  Text ->
  -- | 'ctType'
  TriggerType ->
  CreateTrigger
createTrigger pName_ pType_ =
  CreateTrigger'
    { _ctWorkflowName = Nothing,
      _ctStartOnCreation = Nothing,
      _ctPredicate = Nothing,
      _ctTags = Nothing,
      _ctDescription = Nothing,
      _ctSchedule = Nothing,
      _ctName = pName_,
      _ctType = pType_,
      _ctActions = mempty
    }

-- | The name of the workflow associated with the trigger.
ctWorkflowName :: Lens' CreateTrigger (Maybe Text)
ctWorkflowName = lens _ctWorkflowName (\s a -> s {_ctWorkflowName = a})

-- | Set to @true@ to start @SCHEDULED@ and @CONDITIONAL@ triggers when created. True is not supported for @ON_DEMAND@ triggers.
ctStartOnCreation :: Lens' CreateTrigger (Maybe Bool)
ctStartOnCreation = lens _ctStartOnCreation (\s a -> s {_ctStartOnCreation = a})

-- | A predicate to specify when the new trigger should fire. This field is required when the trigger type is @CONDITIONAL@ .
ctPredicate :: Lens' CreateTrigger (Maybe Predicate)
ctPredicate = lens _ctPredicate (\s a -> s {_ctPredicate = a})

-- | The tags to use with this trigger. You may use tags to limit access to the trigger. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
ctTags :: Lens' CreateTrigger (HashMap Text Text)
ctTags = lens _ctTags (\s a -> s {_ctTags = a}) . _Default . _Map

-- | A description of the new trigger.
ctDescription :: Lens' CreateTrigger (Maybe Text)
ctDescription = lens _ctDescription (\s a -> s {_ctDescription = a})

-- | A @cron@ expression used to specify the schedule (see <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers> . For example, to run something every day at 12:15 UTC, you would specify: @cron(15 12 * * ? *)@ . This field is required when the trigger type is SCHEDULED.
ctSchedule :: Lens' CreateTrigger (Maybe Text)
ctSchedule = lens _ctSchedule (\s a -> s {_ctSchedule = a})

-- | The name of the trigger.
ctName :: Lens' CreateTrigger Text
ctName = lens _ctName (\s a -> s {_ctName = a})

-- | The type of the new trigger.
ctType :: Lens' CreateTrigger TriggerType
ctType = lens _ctType (\s a -> s {_ctType = a})

-- | The actions initiated by this trigger when it fires.
ctActions :: Lens' CreateTrigger [Action]
ctActions = lens _ctActions (\s a -> s {_ctActions = a}) . _Coerce

instance AWSRequest CreateTrigger where
  type Rs CreateTrigger = CreateTriggerResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          CreateTriggerResponse'
            <$> (x .?> "Name") <*> (pure (fromEnum s))
      )

instance Hashable CreateTrigger

instance NFData CreateTrigger

instance ToHeaders CreateTrigger where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CreateTrigger" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateTrigger where
  toJSON CreateTrigger' {..} =
    object
      ( catMaybes
          [ ("WorkflowName" .=) <$> _ctWorkflowName,
            ("StartOnCreation" .=) <$> _ctStartOnCreation,
            ("Predicate" .=) <$> _ctPredicate,
            ("Tags" .=) <$> _ctTags,
            ("Description" .=) <$> _ctDescription,
            ("Schedule" .=) <$> _ctSchedule,
            Just ("Name" .= _ctName),
            Just ("Type" .= _ctType),
            Just ("Actions" .= _ctActions)
          ]
      )

instance ToPath CreateTrigger where
  toPath = const "/"

instance ToQuery CreateTrigger where
  toQuery = const mempty

-- | /See:/ 'createTriggerResponse' smart constructor.
data CreateTriggerResponse = CreateTriggerResponse'
  { _ctrtrsName ::
      !(Maybe Text),
    _ctrtrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateTriggerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrtrsName' - The name of the trigger.
--
-- * 'ctrtrsResponseStatus' - -- | The response status code.
createTriggerResponse ::
  -- | 'ctrtrsResponseStatus'
  Int ->
  CreateTriggerResponse
createTriggerResponse pResponseStatus_ =
  CreateTriggerResponse'
    { _ctrtrsName = Nothing,
      _ctrtrsResponseStatus = pResponseStatus_
    }

-- | The name of the trigger.
ctrtrsName :: Lens' CreateTriggerResponse (Maybe Text)
ctrtrsName = lens _ctrtrsName (\s a -> s {_ctrtrsName = a})

-- | -- | The response status code.
ctrtrsResponseStatus :: Lens' CreateTriggerResponse Int
ctrtrsResponseStatus = lens _ctrtrsResponseStatus (\s a -> s {_ctrtrsResponseStatus = a})

instance NFData CreateTriggerResponse
