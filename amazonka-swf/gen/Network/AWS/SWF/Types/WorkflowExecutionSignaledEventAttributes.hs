{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionSignaledEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionSignaledEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SWF.Types.WorkflowExecution

-- | Provides the details of the @WorkflowExecutionSignaled@ event.
--
--
--
-- /See:/ 'workflowExecutionSignaledEventAttributes' smart constructor.
data WorkflowExecutionSignaledEventAttributes = WorkflowExecutionSignaledEventAttributes'
  { _weseaInput ::
      !( Maybe
           Text
       ),
    _weseaExternalInitiatedEventId ::
      !( Maybe
           Integer
       ),
    _weseaExternalWorkflowExecution ::
      !( Maybe
           WorkflowExecution
       ),
    _weseaSignalName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'WorkflowExecutionSignaledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weseaInput' - The inputs provided with the signal. The decider can use the signal name and inputs to determine how to process the signal.
--
-- * 'weseaExternalInitiatedEventId' - The ID of the @SignalExternalWorkflowExecutionInitiated@ event corresponding to the @SignalExternalWorkflow@ decision to signal this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event. This field is set only if the signal was initiated by another workflow execution.
--
-- * 'weseaExternalWorkflowExecution' - The workflow execution that sent the signal. This is set only of the signal was sent by another workflow execution.
--
-- * 'weseaSignalName' - The name of the signal received. The decider can use the signal name and inputs to determine how to the process the signal.
workflowExecutionSignaledEventAttributes ::
  -- | 'weseaSignalName'
  Text ->
  WorkflowExecutionSignaledEventAttributes
workflowExecutionSignaledEventAttributes pSignalName_ =
  WorkflowExecutionSignaledEventAttributes'
    { _weseaInput =
        Nothing,
      _weseaExternalInitiatedEventId =
        Nothing,
      _weseaExternalWorkflowExecution =
        Nothing,
      _weseaSignalName = pSignalName_
    }

-- | The inputs provided with the signal. The decider can use the signal name and inputs to determine how to process the signal.
weseaInput :: Lens' WorkflowExecutionSignaledEventAttributes (Maybe Text)
weseaInput = lens _weseaInput (\s a -> s {_weseaInput = a})

-- | The ID of the @SignalExternalWorkflowExecutionInitiated@ event corresponding to the @SignalExternalWorkflow@ decision to signal this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event. This field is set only if the signal was initiated by another workflow execution.
weseaExternalInitiatedEventId :: Lens' WorkflowExecutionSignaledEventAttributes (Maybe Integer)
weseaExternalInitiatedEventId = lens _weseaExternalInitiatedEventId (\s a -> s {_weseaExternalInitiatedEventId = a})

-- | The workflow execution that sent the signal. This is set only of the signal was sent by another workflow execution.
weseaExternalWorkflowExecution :: Lens' WorkflowExecutionSignaledEventAttributes (Maybe WorkflowExecution)
weseaExternalWorkflowExecution = lens _weseaExternalWorkflowExecution (\s a -> s {_weseaExternalWorkflowExecution = a})

-- | The name of the signal received. The decider can use the signal name and inputs to determine how to the process the signal.
weseaSignalName :: Lens' WorkflowExecutionSignaledEventAttributes Text
weseaSignalName = lens _weseaSignalName (\s a -> s {_weseaSignalName = a})

instance
  FromJSON
    WorkflowExecutionSignaledEventAttributes
  where
  parseJSON =
    withObject
      "WorkflowExecutionSignaledEventAttributes"
      ( \x ->
          WorkflowExecutionSignaledEventAttributes'
            <$> (x .:? "input")
            <*> (x .:? "externalInitiatedEventId")
            <*> (x .:? "externalWorkflowExecution")
            <*> (x .: "signalName")
      )

instance
  Hashable
    WorkflowExecutionSignaledEventAttributes

instance
  NFData
    WorkflowExecutionSignaledEventAttributes
