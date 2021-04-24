{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ChildWorkflowExecutionCompletedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ChildWorkflowExecutionCompletedEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SWF.Types.WorkflowExecution
import Network.AWS.SWF.Types.WorkflowType

-- | Provides the details of the @ChildWorkflowExecutionCompleted@ event.
--
--
--
-- /See:/ 'childWorkflowExecutionCompletedEventAttributes' smart constructor.
data ChildWorkflowExecutionCompletedEventAttributes = ChildWorkflowExecutionCompletedEventAttributes'
  { _cResult ::
      !( Maybe
           Text
       ),
    _cWorkflowExecution ::
      !WorkflowExecution,
    _cWorkflowType ::
      !WorkflowType,
    _cInitiatedEventId ::
      !Integer,
    _cStartedEventId ::
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

-- | Creates a value of 'ChildWorkflowExecutionCompletedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResult' - The result of the child workflow execution.
--
-- * 'cWorkflowExecution' - The child workflow execution that was completed.
--
-- * 'cWorkflowType' - The type of the child workflow execution.
--
-- * 'cInitiatedEventId' - The ID of the @StartChildWorkflowExecutionInitiated@ event corresponding to the @StartChildWorkflowExecution@ 'Decision' to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- * 'cStartedEventId' - The ID of the @ChildWorkflowExecutionStarted@ event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
childWorkflowExecutionCompletedEventAttributes ::
  -- | 'cWorkflowExecution'
  WorkflowExecution ->
  -- | 'cWorkflowType'
  WorkflowType ->
  -- | 'cInitiatedEventId'
  Integer ->
  -- | 'cStartedEventId'
  Integer ->
  ChildWorkflowExecutionCompletedEventAttributes
childWorkflowExecutionCompletedEventAttributes
  pWorkflowExecution_
  pWorkflowType_
  pInitiatedEventId_
  pStartedEventId_ =
    ChildWorkflowExecutionCompletedEventAttributes'
      { _cResult =
          Nothing,
        _cWorkflowExecution =
          pWorkflowExecution_,
        _cWorkflowType =
          pWorkflowType_,
        _cInitiatedEventId =
          pInitiatedEventId_,
        _cStartedEventId =
          pStartedEventId_
      }

-- | The result of the child workflow execution.
cResult :: Lens' ChildWorkflowExecutionCompletedEventAttributes (Maybe Text)
cResult = lens _cResult (\s a -> s {_cResult = a})

-- | The child workflow execution that was completed.
cWorkflowExecution :: Lens' ChildWorkflowExecutionCompletedEventAttributes WorkflowExecution
cWorkflowExecution = lens _cWorkflowExecution (\s a -> s {_cWorkflowExecution = a})

-- | The type of the child workflow execution.
cWorkflowType :: Lens' ChildWorkflowExecutionCompletedEventAttributes WorkflowType
cWorkflowType = lens _cWorkflowType (\s a -> s {_cWorkflowType = a})

-- | The ID of the @StartChildWorkflowExecutionInitiated@ event corresponding to the @StartChildWorkflowExecution@ 'Decision' to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
cInitiatedEventId :: Lens' ChildWorkflowExecutionCompletedEventAttributes Integer
cInitiatedEventId = lens _cInitiatedEventId (\s a -> s {_cInitiatedEventId = a})

-- | The ID of the @ChildWorkflowExecutionStarted@ event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
cStartedEventId :: Lens' ChildWorkflowExecutionCompletedEventAttributes Integer
cStartedEventId = lens _cStartedEventId (\s a -> s {_cStartedEventId = a})

instance
  FromJSON
    ChildWorkflowExecutionCompletedEventAttributes
  where
  parseJSON =
    withObject
      "ChildWorkflowExecutionCompletedEventAttributes"
      ( \x ->
          ChildWorkflowExecutionCompletedEventAttributes'
            <$> (x .:? "result")
            <*> (x .: "workflowExecution")
            <*> (x .: "workflowType")
            <*> (x .: "initiatedEventId")
            <*> (x .: "startedEventId")
      )

instance
  Hashable
    ChildWorkflowExecutionCompletedEventAttributes

instance
  NFData
    ChildWorkflowExecutionCompletedEventAttributes
