{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.SignalExternalWorkflowExecutionDecisionAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.SignalExternalWorkflowExecutionDecisionAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the details of the @SignalExternalWorkflowExecution@ decision.
--
--
-- __Access Control__
--
-- You can use IAM policies to control this decision's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains.
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--     * You cannot use an IAM policy to constrain this action's parameters.
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
--
--
-- /See:/ 'signalExternalWorkflowExecutionDecisionAttributes' smart constructor.
data SignalExternalWorkflowExecutionDecisionAttributes = SignalExternalWorkflowExecutionDecisionAttributes'
  { _sewedaRunId ::
      !( Maybe
           Text
       ),
    _sewedaInput ::
      !( Maybe
           Text
       ),
    _sewedaControl ::
      !( Maybe
           Text
       ),
    _sewedaWorkflowId ::
      !Text,
    _sewedaSignalName ::
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

-- | Creates a value of 'SignalExternalWorkflowExecutionDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sewedaRunId' - The @runId@ of the workflow execution to be signaled.
--
-- * 'sewedaInput' - The input data to be provided with the signal. The target workflow execution uses the signal name and input data to process the signal.
--
-- * 'sewedaControl' - The data attached to the event that can be used by the decider in subsequent decision tasks.
--
-- * 'sewedaWorkflowId' - The @workflowId@ of the workflow execution to be signaled.
--
-- * 'sewedaSignalName' - The name of the signal.The target workflow execution uses the signal name and input to process the signal.
signalExternalWorkflowExecutionDecisionAttributes ::
  -- | 'sewedaWorkflowId'
  Text ->
  -- | 'sewedaSignalName'
  Text ->
  SignalExternalWorkflowExecutionDecisionAttributes
signalExternalWorkflowExecutionDecisionAttributes
  pWorkflowId_
  pSignalName_ =
    SignalExternalWorkflowExecutionDecisionAttributes'
      { _sewedaRunId =
          Nothing,
        _sewedaInput = Nothing,
        _sewedaControl = Nothing,
        _sewedaWorkflowId =
          pWorkflowId_,
        _sewedaSignalName =
          pSignalName_
      }

-- | The @runId@ of the workflow execution to be signaled.
sewedaRunId :: Lens' SignalExternalWorkflowExecutionDecisionAttributes (Maybe Text)
sewedaRunId = lens _sewedaRunId (\s a -> s {_sewedaRunId = a})

-- | The input data to be provided with the signal. The target workflow execution uses the signal name and input data to process the signal.
sewedaInput :: Lens' SignalExternalWorkflowExecutionDecisionAttributes (Maybe Text)
sewedaInput = lens _sewedaInput (\s a -> s {_sewedaInput = a})

-- | The data attached to the event that can be used by the decider in subsequent decision tasks.
sewedaControl :: Lens' SignalExternalWorkflowExecutionDecisionAttributes (Maybe Text)
sewedaControl = lens _sewedaControl (\s a -> s {_sewedaControl = a})

-- | The @workflowId@ of the workflow execution to be signaled.
sewedaWorkflowId :: Lens' SignalExternalWorkflowExecutionDecisionAttributes Text
sewedaWorkflowId = lens _sewedaWorkflowId (\s a -> s {_sewedaWorkflowId = a})

-- | The name of the signal.The target workflow execution uses the signal name and input to process the signal.
sewedaSignalName :: Lens' SignalExternalWorkflowExecutionDecisionAttributes Text
sewedaSignalName = lens _sewedaSignalName (\s a -> s {_sewedaSignalName = a})

instance
  Hashable
    SignalExternalWorkflowExecutionDecisionAttributes

instance
  NFData
    SignalExternalWorkflowExecutionDecisionAttributes

instance
  ToJSON
    SignalExternalWorkflowExecutionDecisionAttributes
  where
  toJSON
    SignalExternalWorkflowExecutionDecisionAttributes' {..} =
      object
        ( catMaybes
            [ ("runId" .=) <$> _sewedaRunId,
              ("input" .=) <$> _sewedaInput,
              ("control" .=) <$> _sewedaControl,
              Just ("workflowId" .= _sewedaWorkflowId),
              Just ("signalName" .= _sewedaSignalName)
            ]
        )
