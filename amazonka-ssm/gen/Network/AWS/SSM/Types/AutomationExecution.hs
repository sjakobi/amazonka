{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationExecution where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AutomationExecutionStatus
import Network.AWS.SSM.Types.AutomationSubtype
import Network.AWS.SSM.Types.ExecutionMode
import Network.AWS.SSM.Types.ProgressCounters
import Network.AWS.SSM.Types.ResolvedTargets
import Network.AWS.SSM.Types.Runbook
import Network.AWS.SSM.Types.StepExecution
import Network.AWS.SSM.Types.Target
import Network.AWS.SSM.Types.TargetLocation

-- | Detailed information about the current state of an individual Automation execution.
--
--
--
-- /See:/ 'automationExecution' smart constructor.
data AutomationExecution = AutomationExecution'
  { _aMaxErrors ::
      !(Maybe Text),
    _aCurrentAction ::
      !(Maybe Text),
    _aParentAutomationExecutionId ::
      !(Maybe Text),
    _aOutputs ::
      !(Maybe (Map Text [Text])),
    _aMode ::
      !(Maybe ExecutionMode),
    _aFailureMessage ::
      !(Maybe Text),
    _aExecutionEndTime ::
      !(Maybe POSIX),
    _aDocumentName :: !(Maybe Text),
    _aAutomationExecutionId ::
      !(Maybe Text),
    _aChangeRequestName ::
      !(Maybe Text),
    _aExecutedBy :: !(Maybe Text),
    _aProgressCounters ::
      !(Maybe ProgressCounters),
    _aResolvedTargets ::
      !(Maybe ResolvedTargets),
    _aTargets :: !(Maybe [Target]),
    _aTargetLocations ::
      !(Maybe (List1 TargetLocation)),
    _aTargetParameterName ::
      !(Maybe Text),
    _aExecutionStartTime ::
      !(Maybe POSIX),
    _aCurrentStepName ::
      !(Maybe Text),
    _aAssociationId ::
      !(Maybe Text),
    _aOpsItemId :: !(Maybe Text),
    _aScheduledTime ::
      !(Maybe POSIX),
    _aMaxConcurrency ::
      !(Maybe Text),
    _aStepExecutionsTruncated ::
      !(Maybe Bool),
    _aTarget :: !(Maybe Text),
    _aAutomationExecutionStatus ::
      !( Maybe
           AutomationExecutionStatus
       ),
    _aTargetMaps ::
      !(Maybe [Map Text [Text]]),
    _aRunbooks ::
      !(Maybe (List1 Runbook)),
    _aStepExecutions ::
      !(Maybe [StepExecution]),
    _aAutomationSubtype ::
      !(Maybe AutomationSubtype),
    _aDocumentVersion ::
      !(Maybe Text),
    _aParameters ::
      !(Maybe (Map Text [Text]))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutomationExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aMaxErrors' - The MaxErrors value specified by the user when the execution started.
--
-- * 'aCurrentAction' - The action of the step that is currently running.
--
-- * 'aParentAutomationExecutionId' - The AutomationExecutionId of the parent automation.
--
-- * 'aOutputs' - The list of execution outputs as defined in the automation document.
--
-- * 'aMode' - The automation execution mode.
--
-- * 'aFailureMessage' - A message describing why an execution has failed, if the status is set to Failed.
--
-- * 'aExecutionEndTime' - The time the execution finished.
--
-- * 'aDocumentName' - The name of the Automation document used during the execution.
--
-- * 'aAutomationExecutionId' - The execution ID.
--
-- * 'aChangeRequestName' - The name of the Change Manager change request.
--
-- * 'aExecutedBy' - The Amazon Resource Name (ARN) of the user who ran the automation.
--
-- * 'aProgressCounters' - An aggregate of step execution statuses displayed in the AWS Console for a multi-Region and multi-account Automation execution.
--
-- * 'aResolvedTargets' - A list of resolved targets in the rate control execution.
--
-- * 'aTargets' - The specified targets.
--
-- * 'aTargetLocations' - The combination of AWS Regions and/or AWS accounts where you want to run the Automation.
--
-- * 'aTargetParameterName' - The parameter name.
--
-- * 'aExecutionStartTime' - The time the execution started.
--
-- * 'aCurrentStepName' - The name of the step that is currently running.
--
-- * 'aAssociationId' - The ID of a State Manager association used in the Automation operation.
--
-- * 'aOpsItemId' - The ID of an OpsItem that is created to represent a Change Manager change request.
--
-- * 'aScheduledTime' - The date and time the Automation operation is scheduled to start.
--
-- * 'aMaxConcurrency' - The MaxConcurrency value specified by the user when the execution started.
--
-- * 'aStepExecutionsTruncated' - A boolean value that indicates if the response contains the full list of the Automation step executions. If true, use the DescribeAutomationStepExecutions API action to get the full list of step executions.
--
-- * 'aTarget' - The target of the execution.
--
-- * 'aAutomationExecutionStatus' - The execution status of the Automation.
--
-- * 'aTargetMaps' - The specified key-value mapping of document parameters to target resources.
--
-- * 'aRunbooks' - Information about the Automation runbooks (Automation documents) that are run as part of a runbook workflow.
--
-- * 'aStepExecutions' - A list of details about the current state of all steps that comprise an execution. An Automation document contains a list of steps that are run in order.
--
-- * 'aAutomationSubtype' - The subtype of the Automation operation. Currently, the only supported value is @ChangeRequest@ .
--
-- * 'aDocumentVersion' - The version of the document to use during execution.
--
-- * 'aParameters' - The key-value map of execution parameters, which were supplied when calling StartAutomationExecution.
automationExecution ::
  AutomationExecution
automationExecution =
  AutomationExecution'
    { _aMaxErrors = Nothing,
      _aCurrentAction = Nothing,
      _aParentAutomationExecutionId = Nothing,
      _aOutputs = Nothing,
      _aMode = Nothing,
      _aFailureMessage = Nothing,
      _aExecutionEndTime = Nothing,
      _aDocumentName = Nothing,
      _aAutomationExecutionId = Nothing,
      _aChangeRequestName = Nothing,
      _aExecutedBy = Nothing,
      _aProgressCounters = Nothing,
      _aResolvedTargets = Nothing,
      _aTargets = Nothing,
      _aTargetLocations = Nothing,
      _aTargetParameterName = Nothing,
      _aExecutionStartTime = Nothing,
      _aCurrentStepName = Nothing,
      _aAssociationId = Nothing,
      _aOpsItemId = Nothing,
      _aScheduledTime = Nothing,
      _aMaxConcurrency = Nothing,
      _aStepExecutionsTruncated = Nothing,
      _aTarget = Nothing,
      _aAutomationExecutionStatus = Nothing,
      _aTargetMaps = Nothing,
      _aRunbooks = Nothing,
      _aStepExecutions = Nothing,
      _aAutomationSubtype = Nothing,
      _aDocumentVersion = Nothing,
      _aParameters = Nothing
    }

-- | The MaxErrors value specified by the user when the execution started.
aMaxErrors :: Lens' AutomationExecution (Maybe Text)
aMaxErrors = lens _aMaxErrors (\s a -> s {_aMaxErrors = a})

-- | The action of the step that is currently running.
aCurrentAction :: Lens' AutomationExecution (Maybe Text)
aCurrentAction = lens _aCurrentAction (\s a -> s {_aCurrentAction = a})

-- | The AutomationExecutionId of the parent automation.
aParentAutomationExecutionId :: Lens' AutomationExecution (Maybe Text)
aParentAutomationExecutionId = lens _aParentAutomationExecutionId (\s a -> s {_aParentAutomationExecutionId = a})

-- | The list of execution outputs as defined in the automation document.
aOutputs :: Lens' AutomationExecution (HashMap Text [Text])
aOutputs = lens _aOutputs (\s a -> s {_aOutputs = a}) . _Default . _Map

-- | The automation execution mode.
aMode :: Lens' AutomationExecution (Maybe ExecutionMode)
aMode = lens _aMode (\s a -> s {_aMode = a})

-- | A message describing why an execution has failed, if the status is set to Failed.
aFailureMessage :: Lens' AutomationExecution (Maybe Text)
aFailureMessage = lens _aFailureMessage (\s a -> s {_aFailureMessage = a})

-- | The time the execution finished.
aExecutionEndTime :: Lens' AutomationExecution (Maybe UTCTime)
aExecutionEndTime = lens _aExecutionEndTime (\s a -> s {_aExecutionEndTime = a}) . mapping _Time

-- | The name of the Automation document used during the execution.
aDocumentName :: Lens' AutomationExecution (Maybe Text)
aDocumentName = lens _aDocumentName (\s a -> s {_aDocumentName = a})

-- | The execution ID.
aAutomationExecutionId :: Lens' AutomationExecution (Maybe Text)
aAutomationExecutionId = lens _aAutomationExecutionId (\s a -> s {_aAutomationExecutionId = a})

-- | The name of the Change Manager change request.
aChangeRequestName :: Lens' AutomationExecution (Maybe Text)
aChangeRequestName = lens _aChangeRequestName (\s a -> s {_aChangeRequestName = a})

-- | The Amazon Resource Name (ARN) of the user who ran the automation.
aExecutedBy :: Lens' AutomationExecution (Maybe Text)
aExecutedBy = lens _aExecutedBy (\s a -> s {_aExecutedBy = a})

-- | An aggregate of step execution statuses displayed in the AWS Console for a multi-Region and multi-account Automation execution.
aProgressCounters :: Lens' AutomationExecution (Maybe ProgressCounters)
aProgressCounters = lens _aProgressCounters (\s a -> s {_aProgressCounters = a})

-- | A list of resolved targets in the rate control execution.
aResolvedTargets :: Lens' AutomationExecution (Maybe ResolvedTargets)
aResolvedTargets = lens _aResolvedTargets (\s a -> s {_aResolvedTargets = a})

-- | The specified targets.
aTargets :: Lens' AutomationExecution [Target]
aTargets = lens _aTargets (\s a -> s {_aTargets = a}) . _Default . _Coerce

-- | The combination of AWS Regions and/or AWS accounts where you want to run the Automation.
aTargetLocations :: Lens' AutomationExecution (Maybe (NonEmpty TargetLocation))
aTargetLocations = lens _aTargetLocations (\s a -> s {_aTargetLocations = a}) . mapping _List1

-- | The parameter name.
aTargetParameterName :: Lens' AutomationExecution (Maybe Text)
aTargetParameterName = lens _aTargetParameterName (\s a -> s {_aTargetParameterName = a})

-- | The time the execution started.
aExecutionStartTime :: Lens' AutomationExecution (Maybe UTCTime)
aExecutionStartTime = lens _aExecutionStartTime (\s a -> s {_aExecutionStartTime = a}) . mapping _Time

-- | The name of the step that is currently running.
aCurrentStepName :: Lens' AutomationExecution (Maybe Text)
aCurrentStepName = lens _aCurrentStepName (\s a -> s {_aCurrentStepName = a})

-- | The ID of a State Manager association used in the Automation operation.
aAssociationId :: Lens' AutomationExecution (Maybe Text)
aAssociationId = lens _aAssociationId (\s a -> s {_aAssociationId = a})

-- | The ID of an OpsItem that is created to represent a Change Manager change request.
aOpsItemId :: Lens' AutomationExecution (Maybe Text)
aOpsItemId = lens _aOpsItemId (\s a -> s {_aOpsItemId = a})

-- | The date and time the Automation operation is scheduled to start.
aScheduledTime :: Lens' AutomationExecution (Maybe UTCTime)
aScheduledTime = lens _aScheduledTime (\s a -> s {_aScheduledTime = a}) . mapping _Time

-- | The MaxConcurrency value specified by the user when the execution started.
aMaxConcurrency :: Lens' AutomationExecution (Maybe Text)
aMaxConcurrency = lens _aMaxConcurrency (\s a -> s {_aMaxConcurrency = a})

-- | A boolean value that indicates if the response contains the full list of the Automation step executions. If true, use the DescribeAutomationStepExecutions API action to get the full list of step executions.
aStepExecutionsTruncated :: Lens' AutomationExecution (Maybe Bool)
aStepExecutionsTruncated = lens _aStepExecutionsTruncated (\s a -> s {_aStepExecutionsTruncated = a})

-- | The target of the execution.
aTarget :: Lens' AutomationExecution (Maybe Text)
aTarget = lens _aTarget (\s a -> s {_aTarget = a})

-- | The execution status of the Automation.
aAutomationExecutionStatus :: Lens' AutomationExecution (Maybe AutomationExecutionStatus)
aAutomationExecutionStatus = lens _aAutomationExecutionStatus (\s a -> s {_aAutomationExecutionStatus = a})

-- | The specified key-value mapping of document parameters to target resources.
aTargetMaps :: Lens' AutomationExecution [HashMap Text [Text]]
aTargetMaps = lens _aTargetMaps (\s a -> s {_aTargetMaps = a}) . _Default . _Coerce

-- | Information about the Automation runbooks (Automation documents) that are run as part of a runbook workflow.
aRunbooks :: Lens' AutomationExecution (Maybe (NonEmpty Runbook))
aRunbooks = lens _aRunbooks (\s a -> s {_aRunbooks = a}) . mapping _List1

-- | A list of details about the current state of all steps that comprise an execution. An Automation document contains a list of steps that are run in order.
aStepExecutions :: Lens' AutomationExecution [StepExecution]
aStepExecutions = lens _aStepExecutions (\s a -> s {_aStepExecutions = a}) . _Default . _Coerce

-- | The subtype of the Automation operation. Currently, the only supported value is @ChangeRequest@ .
aAutomationSubtype :: Lens' AutomationExecution (Maybe AutomationSubtype)
aAutomationSubtype = lens _aAutomationSubtype (\s a -> s {_aAutomationSubtype = a})

-- | The version of the document to use during execution.
aDocumentVersion :: Lens' AutomationExecution (Maybe Text)
aDocumentVersion = lens _aDocumentVersion (\s a -> s {_aDocumentVersion = a})

-- | The key-value map of execution parameters, which were supplied when calling StartAutomationExecution.
aParameters :: Lens' AutomationExecution (HashMap Text [Text])
aParameters = lens _aParameters (\s a -> s {_aParameters = a}) . _Default . _Map

instance FromJSON AutomationExecution where
  parseJSON =
    withObject
      "AutomationExecution"
      ( \x ->
          AutomationExecution'
            <$> (x .:? "MaxErrors")
            <*> (x .:? "CurrentAction")
            <*> (x .:? "ParentAutomationExecutionId")
            <*> (x .:? "Outputs" .!= mempty)
            <*> (x .:? "Mode")
            <*> (x .:? "FailureMessage")
            <*> (x .:? "ExecutionEndTime")
            <*> (x .:? "DocumentName")
            <*> (x .:? "AutomationExecutionId")
            <*> (x .:? "ChangeRequestName")
            <*> (x .:? "ExecutedBy")
            <*> (x .:? "ProgressCounters")
            <*> (x .:? "ResolvedTargets")
            <*> (x .:? "Targets" .!= mempty)
            <*> (x .:? "TargetLocations")
            <*> (x .:? "TargetParameterName")
            <*> (x .:? "ExecutionStartTime")
            <*> (x .:? "CurrentStepName")
            <*> (x .:? "AssociationId")
            <*> (x .:? "OpsItemId")
            <*> (x .:? "ScheduledTime")
            <*> (x .:? "MaxConcurrency")
            <*> (x .:? "StepExecutionsTruncated")
            <*> (x .:? "Target")
            <*> (x .:? "AutomationExecutionStatus")
            <*> (x .:? "TargetMaps" .!= mempty)
            <*> (x .:? "Runbooks")
            <*> (x .:? "StepExecutions" .!= mempty)
            <*> (x .:? "AutomationSubtype")
            <*> (x .:? "DocumentVersion")
            <*> (x .:? "Parameters" .!= mempty)
      )

instance Hashable AutomationExecution

instance NFData AutomationExecution
