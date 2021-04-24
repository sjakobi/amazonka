{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ChildWorkflowExecutionCanceledEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ChildWorkflowExecutionCanceledEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SWF.Types.WorkflowExecution
import Network.AWS.SWF.Types.WorkflowType

-- | Provide details of the @ChildWorkflowExecutionCanceled@ event.
--
--
--
-- /See:/ 'childWorkflowExecutionCanceledEventAttributes' smart constructor.
data ChildWorkflowExecutionCanceledEventAttributes = ChildWorkflowExecutionCanceledEventAttributes'
  { _cweceaDetails ::
      !( Maybe
           Text
       ),
    _cweceaWorkflowExecution ::
      !WorkflowExecution,
    _cweceaWorkflowType ::
      !WorkflowType,
    _cweceaInitiatedEventId ::
      !Integer,
    _cweceaStartedEventId ::
      !Integer
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ChildWorkflowExecutionCanceledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cweceaDetails' - Details of the cancellation (if provided).
--
-- * 'cweceaWorkflowExecution' - The child workflow execution that was canceled.
--
-- * 'cweceaWorkflowType' - The type of the child workflow execution.
--
-- * 'cweceaInitiatedEventId' - The ID of the @StartChildWorkflowExecutionInitiated@ event corresponding to the @StartChildWorkflowExecution@ 'Decision' to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- * 'cweceaStartedEventId' - The ID of the @ChildWorkflowExecutionStarted@ event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
childWorkflowExecutionCanceledEventAttributes ::
  -- | 'cweceaWorkflowExecution'
  WorkflowExecution ->
  -- | 'cweceaWorkflowType'
  WorkflowType ->
  -- | 'cweceaInitiatedEventId'
  Integer ->
  -- | 'cweceaStartedEventId'
  Integer ->
  ChildWorkflowExecutionCanceledEventAttributes
childWorkflowExecutionCanceledEventAttributes
  pWorkflowExecution_
  pWorkflowType_
  pInitiatedEventId_
  pStartedEventId_ =
    ChildWorkflowExecutionCanceledEventAttributes'
      { _cweceaDetails =
          Nothing,
        _cweceaWorkflowExecution =
          pWorkflowExecution_,
        _cweceaWorkflowType =
          pWorkflowType_,
        _cweceaInitiatedEventId =
          pInitiatedEventId_,
        _cweceaStartedEventId =
          pStartedEventId_
      }

-- | Details of the cancellation (if provided).
cweceaDetails :: Lens' ChildWorkflowExecutionCanceledEventAttributes (Maybe Text)
cweceaDetails = lens _cweceaDetails (\s a -> s {_cweceaDetails = a})

-- | The child workflow execution that was canceled.
cweceaWorkflowExecution :: Lens' ChildWorkflowExecutionCanceledEventAttributes WorkflowExecution
cweceaWorkflowExecution = lens _cweceaWorkflowExecution (\s a -> s {_cweceaWorkflowExecution = a})

-- | The type of the child workflow execution.
cweceaWorkflowType :: Lens' ChildWorkflowExecutionCanceledEventAttributes WorkflowType
cweceaWorkflowType = lens _cweceaWorkflowType (\s a -> s {_cweceaWorkflowType = a})

-- | The ID of the @StartChildWorkflowExecutionInitiated@ event corresponding to the @StartChildWorkflowExecution@ 'Decision' to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
cweceaInitiatedEventId :: Lens' ChildWorkflowExecutionCanceledEventAttributes Integer
cweceaInitiatedEventId = lens _cweceaInitiatedEventId (\s a -> s {_cweceaInitiatedEventId = a})

-- | The ID of the @ChildWorkflowExecutionStarted@ event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
cweceaStartedEventId :: Lens' ChildWorkflowExecutionCanceledEventAttributes Integer
cweceaStartedEventId = lens _cweceaStartedEventId (\s a -> s {_cweceaStartedEventId = a})

instance
  FromJSON
    ChildWorkflowExecutionCanceledEventAttributes
  where
  parseJSON =
    withObject
      "ChildWorkflowExecutionCanceledEventAttributes"
      ( \x ->
          ChildWorkflowExecutionCanceledEventAttributes'
            <$> (x .:? "details")
            <*> (x .: "workflowExecution")
            <*> (x .: "workflowType")
            <*> (x .: "initiatedEventId")
            <*> (x .: "startedEventId")
      )

instance
  Hashable
    ChildWorkflowExecutionCanceledEventAttributes

instance
  NFData
    ChildWorkflowExecutionCanceledEventAttributes
