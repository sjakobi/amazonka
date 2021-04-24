{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationExecutionMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationExecutionMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AutomationExecutionStatus
import Network.AWS.SSM.Types.AutomationSubtype
import Network.AWS.SSM.Types.AutomationType
import Network.AWS.SSM.Types.ExecutionMode
import Network.AWS.SSM.Types.ResolvedTargets
import Network.AWS.SSM.Types.Runbook
import Network.AWS.SSM.Types.Target

-- | Details about a specific Automation execution.
--
--
--
-- /See:/ 'automationExecutionMetadata' smart constructor.
data AutomationExecutionMetadata = AutomationExecutionMetadata'
  { _aemMaxErrors ::
      !(Maybe Text),
    _aemCurrentAction ::
      !(Maybe Text),
    _aemParentAutomationExecutionId ::
      !(Maybe Text),
    _aemOutputs ::
      !( Maybe
           ( Map
               Text
               [Text]
           )
       ),
    _aemMode ::
      !( Maybe
           ExecutionMode
       ),
    _aemFailureMessage ::
      !(Maybe Text),
    _aemExecutionEndTime ::
      !(Maybe POSIX),
    _aemDocumentName ::
      !(Maybe Text),
    _aemAutomationExecutionId ::
      !(Maybe Text),
    _aemChangeRequestName ::
      !(Maybe Text),
    _aemExecutedBy ::
      !(Maybe Text),
    _aemResolvedTargets ::
      !( Maybe
           ResolvedTargets
       ),
    _aemTargets ::
      !( Maybe
           [Target]
       ),
    _aemAutomationType ::
      !( Maybe
           AutomationType
       ),
    _aemTargetParameterName ::
      !(Maybe Text),
    _aemExecutionStartTime ::
      !(Maybe POSIX),
    _aemCurrentStepName ::
      !(Maybe Text),
    _aemAssociationId ::
      !(Maybe Text),
    _aemOpsItemId ::
      !(Maybe Text),
    _aemScheduledTime ::
      !(Maybe POSIX),
    _aemMaxConcurrency ::
      !(Maybe Text),
    _aemTarget ::
      !(Maybe Text),
    _aemAutomationExecutionStatus ::
      !( Maybe
           AutomationExecutionStatus
       ),
    _aemTargetMaps ::
      !( Maybe
           [ Map
               Text
               [Text]
           ]
       ),
    _aemRunbooks ::
      !( Maybe
           ( List1
               Runbook
           )
       ),
    _aemAutomationSubtype ::
      !( Maybe
           AutomationSubtype
       ),
    _aemDocumentVersion ::
      !(Maybe Text),
    _aemLogFile ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AutomationExecutionMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aemMaxErrors' - The MaxErrors value specified by the user when starting the Automation.
--
-- * 'aemCurrentAction' - The action of the step that is currently running.
--
-- * 'aemParentAutomationExecutionId' - The ExecutionId of the parent Automation.
--
-- * 'aemOutputs' - The list of execution outputs as defined in the Automation document.
--
-- * 'aemMode' - The Automation execution mode.
--
-- * 'aemFailureMessage' - The list of execution outputs as defined in the Automation document.
--
-- * 'aemExecutionEndTime' - The time the execution finished. This is not populated if the execution is still in progress.
--
-- * 'aemDocumentName' - The name of the Automation document used during execution.
--
-- * 'aemAutomationExecutionId' - The execution ID.
--
-- * 'aemChangeRequestName' - The name of the Change Manager change request.
--
-- * 'aemExecutedBy' - The IAM role ARN of the user who ran the Automation.
--
-- * 'aemResolvedTargets' - A list of targets that resolved during the execution.
--
-- * 'aemTargets' - The targets defined by the user when starting the Automation.
--
-- * 'aemAutomationType' - Use this filter with 'DescribeAutomationExecutions' . Specify either Local or CrossAccount. CrossAccount is an Automation that runs in multiple AWS Regions and accounts. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html Running Automation workflows in multiple AWS Regions and accounts> in the /AWS Systems Manager User Guide/ .
--
-- * 'aemTargetParameterName' - The list of execution outputs as defined in the Automation document.
--
-- * 'aemExecutionStartTime' - The time the execution started.
--
-- * 'aemCurrentStepName' - The name of the step that is currently running.
--
-- * 'aemAssociationId' - The ID of a State Manager association used in the Automation operation.
--
-- * 'aemOpsItemId' - The ID of an OpsItem that is created to represent a Change Manager change request.
--
-- * 'aemScheduledTime' - The date and time the Automation operation is scheduled to start.
--
-- * 'aemMaxConcurrency' - The MaxConcurrency value specified by the user when starting the Automation.
--
-- * 'aemTarget' - The list of execution outputs as defined in the Automation document.
--
-- * 'aemAutomationExecutionStatus' - The status of the execution.
--
-- * 'aemTargetMaps' - The specified key-value mapping of document parameters to target resources.
--
-- * 'aemRunbooks' - Information about the Automation runbooks (Automation documents) that are run during a runbook workflow in Change Manager.
--
-- * 'aemAutomationSubtype' - The subtype of the Automation operation. Currently, the only supported value is @ChangeRequest@ .
--
-- * 'aemDocumentVersion' - The document version used during the execution.
--
-- * 'aemLogFile' - An S3 bucket where execution information is stored.
automationExecutionMetadata ::
  AutomationExecutionMetadata
automationExecutionMetadata =
  AutomationExecutionMetadata'
    { _aemMaxErrors =
        Nothing,
      _aemCurrentAction = Nothing,
      _aemParentAutomationExecutionId = Nothing,
      _aemOutputs = Nothing,
      _aemMode = Nothing,
      _aemFailureMessage = Nothing,
      _aemExecutionEndTime = Nothing,
      _aemDocumentName = Nothing,
      _aemAutomationExecutionId = Nothing,
      _aemChangeRequestName = Nothing,
      _aemExecutedBy = Nothing,
      _aemResolvedTargets = Nothing,
      _aemTargets = Nothing,
      _aemAutomationType = Nothing,
      _aemTargetParameterName = Nothing,
      _aemExecutionStartTime = Nothing,
      _aemCurrentStepName = Nothing,
      _aemAssociationId = Nothing,
      _aemOpsItemId = Nothing,
      _aemScheduledTime = Nothing,
      _aemMaxConcurrency = Nothing,
      _aemTarget = Nothing,
      _aemAutomationExecutionStatus = Nothing,
      _aemTargetMaps = Nothing,
      _aemRunbooks = Nothing,
      _aemAutomationSubtype = Nothing,
      _aemDocumentVersion = Nothing,
      _aemLogFile = Nothing
    }

-- | The MaxErrors value specified by the user when starting the Automation.
aemMaxErrors :: Lens' AutomationExecutionMetadata (Maybe Text)
aemMaxErrors = lens _aemMaxErrors (\s a -> s {_aemMaxErrors = a})

-- | The action of the step that is currently running.
aemCurrentAction :: Lens' AutomationExecutionMetadata (Maybe Text)
aemCurrentAction = lens _aemCurrentAction (\s a -> s {_aemCurrentAction = a})

-- | The ExecutionId of the parent Automation.
aemParentAutomationExecutionId :: Lens' AutomationExecutionMetadata (Maybe Text)
aemParentAutomationExecutionId = lens _aemParentAutomationExecutionId (\s a -> s {_aemParentAutomationExecutionId = a})

-- | The list of execution outputs as defined in the Automation document.
aemOutputs :: Lens' AutomationExecutionMetadata (HashMap Text [Text])
aemOutputs = lens _aemOutputs (\s a -> s {_aemOutputs = a}) . _Default . _Map

-- | The Automation execution mode.
aemMode :: Lens' AutomationExecutionMetadata (Maybe ExecutionMode)
aemMode = lens _aemMode (\s a -> s {_aemMode = a})

-- | The list of execution outputs as defined in the Automation document.
aemFailureMessage :: Lens' AutomationExecutionMetadata (Maybe Text)
aemFailureMessage = lens _aemFailureMessage (\s a -> s {_aemFailureMessage = a})

-- | The time the execution finished. This is not populated if the execution is still in progress.
aemExecutionEndTime :: Lens' AutomationExecutionMetadata (Maybe UTCTime)
aemExecutionEndTime = lens _aemExecutionEndTime (\s a -> s {_aemExecutionEndTime = a}) . mapping _Time

-- | The name of the Automation document used during execution.
aemDocumentName :: Lens' AutomationExecutionMetadata (Maybe Text)
aemDocumentName = lens _aemDocumentName (\s a -> s {_aemDocumentName = a})

-- | The execution ID.
aemAutomationExecutionId :: Lens' AutomationExecutionMetadata (Maybe Text)
aemAutomationExecutionId = lens _aemAutomationExecutionId (\s a -> s {_aemAutomationExecutionId = a})

-- | The name of the Change Manager change request.
aemChangeRequestName :: Lens' AutomationExecutionMetadata (Maybe Text)
aemChangeRequestName = lens _aemChangeRequestName (\s a -> s {_aemChangeRequestName = a})

-- | The IAM role ARN of the user who ran the Automation.
aemExecutedBy :: Lens' AutomationExecutionMetadata (Maybe Text)
aemExecutedBy = lens _aemExecutedBy (\s a -> s {_aemExecutedBy = a})

-- | A list of targets that resolved during the execution.
aemResolvedTargets :: Lens' AutomationExecutionMetadata (Maybe ResolvedTargets)
aemResolvedTargets = lens _aemResolvedTargets (\s a -> s {_aemResolvedTargets = a})

-- | The targets defined by the user when starting the Automation.
aemTargets :: Lens' AutomationExecutionMetadata [Target]
aemTargets = lens _aemTargets (\s a -> s {_aemTargets = a}) . _Default . _Coerce

-- | Use this filter with 'DescribeAutomationExecutions' . Specify either Local or CrossAccount. CrossAccount is an Automation that runs in multiple AWS Regions and accounts. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html Running Automation workflows in multiple AWS Regions and accounts> in the /AWS Systems Manager User Guide/ .
aemAutomationType :: Lens' AutomationExecutionMetadata (Maybe AutomationType)
aemAutomationType = lens _aemAutomationType (\s a -> s {_aemAutomationType = a})

-- | The list of execution outputs as defined in the Automation document.
aemTargetParameterName :: Lens' AutomationExecutionMetadata (Maybe Text)
aemTargetParameterName = lens _aemTargetParameterName (\s a -> s {_aemTargetParameterName = a})

-- | The time the execution started.
aemExecutionStartTime :: Lens' AutomationExecutionMetadata (Maybe UTCTime)
aemExecutionStartTime = lens _aemExecutionStartTime (\s a -> s {_aemExecutionStartTime = a}) . mapping _Time

-- | The name of the step that is currently running.
aemCurrentStepName :: Lens' AutomationExecutionMetadata (Maybe Text)
aemCurrentStepName = lens _aemCurrentStepName (\s a -> s {_aemCurrentStepName = a})

-- | The ID of a State Manager association used in the Automation operation.
aemAssociationId :: Lens' AutomationExecutionMetadata (Maybe Text)
aemAssociationId = lens _aemAssociationId (\s a -> s {_aemAssociationId = a})

-- | The ID of an OpsItem that is created to represent a Change Manager change request.
aemOpsItemId :: Lens' AutomationExecutionMetadata (Maybe Text)
aemOpsItemId = lens _aemOpsItemId (\s a -> s {_aemOpsItemId = a})

-- | The date and time the Automation operation is scheduled to start.
aemScheduledTime :: Lens' AutomationExecutionMetadata (Maybe UTCTime)
aemScheduledTime = lens _aemScheduledTime (\s a -> s {_aemScheduledTime = a}) . mapping _Time

-- | The MaxConcurrency value specified by the user when starting the Automation.
aemMaxConcurrency :: Lens' AutomationExecutionMetadata (Maybe Text)
aemMaxConcurrency = lens _aemMaxConcurrency (\s a -> s {_aemMaxConcurrency = a})

-- | The list of execution outputs as defined in the Automation document.
aemTarget :: Lens' AutomationExecutionMetadata (Maybe Text)
aemTarget = lens _aemTarget (\s a -> s {_aemTarget = a})

-- | The status of the execution.
aemAutomationExecutionStatus :: Lens' AutomationExecutionMetadata (Maybe AutomationExecutionStatus)
aemAutomationExecutionStatus = lens _aemAutomationExecutionStatus (\s a -> s {_aemAutomationExecutionStatus = a})

-- | The specified key-value mapping of document parameters to target resources.
aemTargetMaps :: Lens' AutomationExecutionMetadata [HashMap Text [Text]]
aemTargetMaps = lens _aemTargetMaps (\s a -> s {_aemTargetMaps = a}) . _Default . _Coerce

-- | Information about the Automation runbooks (Automation documents) that are run during a runbook workflow in Change Manager.
aemRunbooks :: Lens' AutomationExecutionMetadata (Maybe (NonEmpty Runbook))
aemRunbooks = lens _aemRunbooks (\s a -> s {_aemRunbooks = a}) . mapping _List1

-- | The subtype of the Automation operation. Currently, the only supported value is @ChangeRequest@ .
aemAutomationSubtype :: Lens' AutomationExecutionMetadata (Maybe AutomationSubtype)
aemAutomationSubtype = lens _aemAutomationSubtype (\s a -> s {_aemAutomationSubtype = a})

-- | The document version used during the execution.
aemDocumentVersion :: Lens' AutomationExecutionMetadata (Maybe Text)
aemDocumentVersion = lens _aemDocumentVersion (\s a -> s {_aemDocumentVersion = a})

-- | An S3 bucket where execution information is stored.
aemLogFile :: Lens' AutomationExecutionMetadata (Maybe Text)
aemLogFile = lens _aemLogFile (\s a -> s {_aemLogFile = a})

instance FromJSON AutomationExecutionMetadata where
  parseJSON =
    withObject
      "AutomationExecutionMetadata"
      ( \x ->
          AutomationExecutionMetadata'
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
            <*> (x .:? "ResolvedTargets")
            <*> (x .:? "Targets" .!= mempty)
            <*> (x .:? "AutomationType")
            <*> (x .:? "TargetParameterName")
            <*> (x .:? "ExecutionStartTime")
            <*> (x .:? "CurrentStepName")
            <*> (x .:? "AssociationId")
            <*> (x .:? "OpsItemId")
            <*> (x .:? "ScheduledTime")
            <*> (x .:? "MaxConcurrency")
            <*> (x .:? "Target")
            <*> (x .:? "AutomationExecutionStatus")
            <*> (x .:? "TargetMaps" .!= mempty)
            <*> (x .:? "Runbooks")
            <*> (x .:? "AutomationSubtype")
            <*> (x .:? "DocumentVersion")
            <*> (x .:? "LogFile")
      )

instance Hashable AutomationExecutionMetadata

instance NFData AutomationExecutionMetadata
