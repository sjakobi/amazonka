{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionExecution where

import Network.AWS.CodePipeline.Types.ActionExecutionStatus
import Network.AWS.CodePipeline.Types.ErrorDetails
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents information about the run of an action.
--
--
--
-- /See:/ 'actionExecution' smart constructor.
data ActionExecution = ActionExecution'
  { _aeStatus ::
      !(Maybe ActionExecutionStatus),
    _aeActionExecutionId :: !(Maybe Text),
    _aeLastStatusChange :: !(Maybe POSIX),
    _aePercentComplete :: !(Maybe Nat),
    _aeExternalExecutionId :: !(Maybe Text),
    _aeExternalExecutionURL ::
      !(Maybe Text),
    _aeLastUpdatedBy :: !(Maybe Text),
    _aeSummary :: !(Maybe Text),
    _aeToken :: !(Maybe Text),
    _aeErrorDetails ::
      !(Maybe ErrorDetails)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeStatus' - The status of the action, or for a completed action, the last status of the action.
--
-- * 'aeActionExecutionId' - ID of the workflow action execution in the current stage. Use the 'GetPipelineState' action to retrieve the current action execution details of the current stage.
--
-- * 'aeLastStatusChange' - The last status change of the action.
--
-- * 'aePercentComplete' - A percentage of completeness of the action as it runs.
--
-- * 'aeExternalExecutionId' - The external ID of the run of the action.
--
-- * 'aeExternalExecutionURL' - The URL of a resource external to AWS that is used when running the action (for example, an external repository URL).
--
-- * 'aeLastUpdatedBy' - The ARN of the user who last changed the pipeline.
--
-- * 'aeSummary' - A summary of the run of the action.
--
-- * 'aeToken' - The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the @GetPipelineState@ command. It is used to validate that the approval request corresponding to this token is still valid.
--
-- * 'aeErrorDetails' - The details of an error returned by a URL external to AWS.
actionExecution ::
  ActionExecution
actionExecution =
  ActionExecution'
    { _aeStatus = Nothing,
      _aeActionExecutionId = Nothing,
      _aeLastStatusChange = Nothing,
      _aePercentComplete = Nothing,
      _aeExternalExecutionId = Nothing,
      _aeExternalExecutionURL = Nothing,
      _aeLastUpdatedBy = Nothing,
      _aeSummary = Nothing,
      _aeToken = Nothing,
      _aeErrorDetails = Nothing
    }

-- | The status of the action, or for a completed action, the last status of the action.
aeStatus :: Lens' ActionExecution (Maybe ActionExecutionStatus)
aeStatus = lens _aeStatus (\s a -> s {_aeStatus = a})

-- | ID of the workflow action execution in the current stage. Use the 'GetPipelineState' action to retrieve the current action execution details of the current stage.
aeActionExecutionId :: Lens' ActionExecution (Maybe Text)
aeActionExecutionId = lens _aeActionExecutionId (\s a -> s {_aeActionExecutionId = a})

-- | The last status change of the action.
aeLastStatusChange :: Lens' ActionExecution (Maybe UTCTime)
aeLastStatusChange = lens _aeLastStatusChange (\s a -> s {_aeLastStatusChange = a}) . mapping _Time

-- | A percentage of completeness of the action as it runs.
aePercentComplete :: Lens' ActionExecution (Maybe Natural)
aePercentComplete = lens _aePercentComplete (\s a -> s {_aePercentComplete = a}) . mapping _Nat

-- | The external ID of the run of the action.
aeExternalExecutionId :: Lens' ActionExecution (Maybe Text)
aeExternalExecutionId = lens _aeExternalExecutionId (\s a -> s {_aeExternalExecutionId = a})

-- | The URL of a resource external to AWS that is used when running the action (for example, an external repository URL).
aeExternalExecutionURL :: Lens' ActionExecution (Maybe Text)
aeExternalExecutionURL = lens _aeExternalExecutionURL (\s a -> s {_aeExternalExecutionURL = a})

-- | The ARN of the user who last changed the pipeline.
aeLastUpdatedBy :: Lens' ActionExecution (Maybe Text)
aeLastUpdatedBy = lens _aeLastUpdatedBy (\s a -> s {_aeLastUpdatedBy = a})

-- | A summary of the run of the action.
aeSummary :: Lens' ActionExecution (Maybe Text)
aeSummary = lens _aeSummary (\s a -> s {_aeSummary = a})

-- | The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the @GetPipelineState@ command. It is used to validate that the approval request corresponding to this token is still valid.
aeToken :: Lens' ActionExecution (Maybe Text)
aeToken = lens _aeToken (\s a -> s {_aeToken = a})

-- | The details of an error returned by a URL external to AWS.
aeErrorDetails :: Lens' ActionExecution (Maybe ErrorDetails)
aeErrorDetails = lens _aeErrorDetails (\s a -> s {_aeErrorDetails = a})

instance FromJSON ActionExecution where
  parseJSON =
    withObject
      "ActionExecution"
      ( \x ->
          ActionExecution'
            <$> (x .:? "status")
            <*> (x .:? "actionExecutionId")
            <*> (x .:? "lastStatusChange")
            <*> (x .:? "percentComplete")
            <*> (x .:? "externalExecutionId")
            <*> (x .:? "externalExecutionUrl")
            <*> (x .:? "lastUpdatedBy")
            <*> (x .:? "summary")
            <*> (x .:? "token")
            <*> (x .:? "errorDetails")
      )

instance Hashable ActionExecution

instance NFData ActionExecution
