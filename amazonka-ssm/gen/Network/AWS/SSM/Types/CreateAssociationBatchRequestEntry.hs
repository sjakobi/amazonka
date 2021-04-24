{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CreateAssociationBatchRequestEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CreateAssociationBatchRequestEntry where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AssociationComplianceSeverity
import Network.AWS.SSM.Types.AssociationSyncCompliance
import Network.AWS.SSM.Types.InstanceAssociationOutputLocation
import Network.AWS.SSM.Types.Target
import Network.AWS.SSM.Types.TargetLocation

-- | Describes the association of a Systems Manager SSM document and an instance.
--
--
--
-- /See:/ 'createAssociationBatchRequestEntry' smart constructor.
data CreateAssociationBatchRequestEntry = CreateAssociationBatchRequestEntry'
  { _cabreMaxErrors ::
      !( Maybe
           Text
       ),
    _cabreInstanceId ::
      !( Maybe
           Text
       ),
    _cabreComplianceSeverity ::
      !( Maybe
           AssociationComplianceSeverity
       ),
    _cabreAutomationTargetParameterName ::
      !( Maybe
           Text
       ),
    _cabreTargets ::
      !( Maybe
           [Target]
       ),
    _cabreTargetLocations ::
      !( Maybe
           ( List1
               TargetLocation
           )
       ),
    _cabreScheduleExpression ::
      !( Maybe
           Text
       ),
    _cabreMaxConcurrency ::
      !( Maybe
           Text
       ),
    _cabreAssociationName ::
      !( Maybe
           Text
       ),
    _cabreDocumentVersion ::
      !( Maybe
           Text
       ),
    _cabreParameters ::
      !( Maybe
           ( Map
               Text
               [Text]
           )
       ),
    _cabreOutputLocation ::
      !( Maybe
           InstanceAssociationOutputLocation
       ),
    _cabreApplyOnlyAtCronInterval ::
      !( Maybe
           Bool
       ),
    _cabreSyncCompliance ::
      !( Maybe
           AssociationSyncCompliance
       ),
    _cabreName ::
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

-- | Creates a value of 'CreateAssociationBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cabreMaxErrors' - The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.
--
-- * 'cabreInstanceId' - The ID of the instance.
--
-- * 'cabreComplianceSeverity' - The severity level to assign to the association.
--
-- * 'cabreAutomationTargetParameterName' - Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.
--
-- * 'cabreTargets' - The instances targeted by the request.
--
-- * 'cabreTargetLocations' - Use this action to create an association in multiple Regions and multiple accounts.
--
-- * 'cabreScheduleExpression' - A cron expression that specifies a schedule when the association runs.
--
-- * 'cabreMaxConcurrency' - The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.
--
-- * 'cabreAssociationName' - Specify a descriptive name for the association.
--
-- * 'cabreDocumentVersion' - The document version.
--
-- * 'cabreParameters' - A description of the parameters for a document.
--
-- * 'cabreOutputLocation' - An S3 bucket where you want to store the results of this request.
--
-- * 'cabreApplyOnlyAtCronInterval' - By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it. This parameter is not supported for rate expressions.
--
-- * 'cabreSyncCompliance' - The mode for generating association compliance. You can specify @AUTO@ or @MANUAL@ . In @AUTO@ mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is @COMPLIANT@ . If the association execution doesn't run successfully, the association is @NON-COMPLIANT@ .  In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter for the 'PutComplianceItems' API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the 'PutComplianceItems' API action. By default, all associations use @AUTO@ mode.
--
-- * 'cabreName' - The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents. You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account. For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format: @arn:aws:ssm:/region/ :/account-id/ :document//document-name/ @  For example: @arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document@  For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, @AWS-ApplyPatchBaseline@ or @My-Document@ .
createAssociationBatchRequestEntry ::
  -- | 'cabreName'
  Text ->
  CreateAssociationBatchRequestEntry
createAssociationBatchRequestEntry pName_ =
  CreateAssociationBatchRequestEntry'
    { _cabreMaxErrors =
        Nothing,
      _cabreInstanceId = Nothing,
      _cabreComplianceSeverity = Nothing,
      _cabreAutomationTargetParameterName =
        Nothing,
      _cabreTargets = Nothing,
      _cabreTargetLocations = Nothing,
      _cabreScheduleExpression = Nothing,
      _cabreMaxConcurrency = Nothing,
      _cabreAssociationName = Nothing,
      _cabreDocumentVersion = Nothing,
      _cabreParameters = Nothing,
      _cabreOutputLocation = Nothing,
      _cabreApplyOnlyAtCronInterval = Nothing,
      _cabreSyncCompliance = Nothing,
      _cabreName = pName_
    }

-- | The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.
cabreMaxErrors :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreMaxErrors = lens _cabreMaxErrors (\s a -> s {_cabreMaxErrors = a})

-- | The ID of the instance.
cabreInstanceId :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreInstanceId = lens _cabreInstanceId (\s a -> s {_cabreInstanceId = a})

-- | The severity level to assign to the association.
cabreComplianceSeverity :: Lens' CreateAssociationBatchRequestEntry (Maybe AssociationComplianceSeverity)
cabreComplianceSeverity = lens _cabreComplianceSeverity (\s a -> s {_cabreComplianceSeverity = a})

-- | Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.
cabreAutomationTargetParameterName :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreAutomationTargetParameterName = lens _cabreAutomationTargetParameterName (\s a -> s {_cabreAutomationTargetParameterName = a})

-- | The instances targeted by the request.
cabreTargets :: Lens' CreateAssociationBatchRequestEntry [Target]
cabreTargets = lens _cabreTargets (\s a -> s {_cabreTargets = a}) . _Default . _Coerce

-- | Use this action to create an association in multiple Regions and multiple accounts.
cabreTargetLocations :: Lens' CreateAssociationBatchRequestEntry (Maybe (NonEmpty TargetLocation))
cabreTargetLocations = lens _cabreTargetLocations (\s a -> s {_cabreTargetLocations = a}) . mapping _List1

-- | A cron expression that specifies a schedule when the association runs.
cabreScheduleExpression :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreScheduleExpression = lens _cabreScheduleExpression (\s a -> s {_cabreScheduleExpression = a})

-- | The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.
cabreMaxConcurrency :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreMaxConcurrency = lens _cabreMaxConcurrency (\s a -> s {_cabreMaxConcurrency = a})

-- | Specify a descriptive name for the association.
cabreAssociationName :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreAssociationName = lens _cabreAssociationName (\s a -> s {_cabreAssociationName = a})

-- | The document version.
cabreDocumentVersion :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreDocumentVersion = lens _cabreDocumentVersion (\s a -> s {_cabreDocumentVersion = a})

-- | A description of the parameters for a document.
cabreParameters :: Lens' CreateAssociationBatchRequestEntry (HashMap Text [Text])
cabreParameters = lens _cabreParameters (\s a -> s {_cabreParameters = a}) . _Default . _Map

-- | An S3 bucket where you want to store the results of this request.
cabreOutputLocation :: Lens' CreateAssociationBatchRequestEntry (Maybe InstanceAssociationOutputLocation)
cabreOutputLocation = lens _cabreOutputLocation (\s a -> s {_cabreOutputLocation = a})

-- | By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it. This parameter is not supported for rate expressions.
cabreApplyOnlyAtCronInterval :: Lens' CreateAssociationBatchRequestEntry (Maybe Bool)
cabreApplyOnlyAtCronInterval = lens _cabreApplyOnlyAtCronInterval (\s a -> s {_cabreApplyOnlyAtCronInterval = a})

-- | The mode for generating association compliance. You can specify @AUTO@ or @MANUAL@ . In @AUTO@ mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is @COMPLIANT@ . If the association execution doesn't run successfully, the association is @NON-COMPLIANT@ .  In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter for the 'PutComplianceItems' API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the 'PutComplianceItems' API action. By default, all associations use @AUTO@ mode.
cabreSyncCompliance :: Lens' CreateAssociationBatchRequestEntry (Maybe AssociationSyncCompliance)
cabreSyncCompliance = lens _cabreSyncCompliance (\s a -> s {_cabreSyncCompliance = a})

-- | The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents. You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account. For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format: @arn:aws:ssm:/region/ :/account-id/ :document//document-name/ @  For example: @arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document@  For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, @AWS-ApplyPatchBaseline@ or @My-Document@ .
cabreName :: Lens' CreateAssociationBatchRequestEntry Text
cabreName = lens _cabreName (\s a -> s {_cabreName = a})

instance FromJSON CreateAssociationBatchRequestEntry where
  parseJSON =
    withObject
      "CreateAssociationBatchRequestEntry"
      ( \x ->
          CreateAssociationBatchRequestEntry'
            <$> (x .:? "MaxErrors")
            <*> (x .:? "InstanceId")
            <*> (x .:? "ComplianceSeverity")
            <*> (x .:? "AutomationTargetParameterName")
            <*> (x .:? "Targets" .!= mempty)
            <*> (x .:? "TargetLocations")
            <*> (x .:? "ScheduleExpression")
            <*> (x .:? "MaxConcurrency")
            <*> (x .:? "AssociationName")
            <*> (x .:? "DocumentVersion")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .:? "OutputLocation")
            <*> (x .:? "ApplyOnlyAtCronInterval")
            <*> (x .:? "SyncCompliance")
            <*> (x .: "Name")
      )

instance Hashable CreateAssociationBatchRequestEntry

instance NFData CreateAssociationBatchRequestEntry

instance ToJSON CreateAssociationBatchRequestEntry where
  toJSON CreateAssociationBatchRequestEntry' {..} =
    object
      ( catMaybes
          [ ("MaxErrors" .=) <$> _cabreMaxErrors,
            ("InstanceId" .=) <$> _cabreInstanceId,
            ("ComplianceSeverity" .=)
              <$> _cabreComplianceSeverity,
            ("AutomationTargetParameterName" .=)
              <$> _cabreAutomationTargetParameterName,
            ("Targets" .=) <$> _cabreTargets,
            ("TargetLocations" .=) <$> _cabreTargetLocations,
            ("ScheduleExpression" .=)
              <$> _cabreScheduleExpression,
            ("MaxConcurrency" .=) <$> _cabreMaxConcurrency,
            ("AssociationName" .=) <$> _cabreAssociationName,
            ("DocumentVersion" .=) <$> _cabreDocumentVersion,
            ("Parameters" .=) <$> _cabreParameters,
            ("OutputLocation" .=) <$> _cabreOutputLocation,
            ("ApplyOnlyAtCronInterval" .=)
              <$> _cabreApplyOnlyAtCronInterval,
            ("SyncCompliance" .=) <$> _cabreSyncCompliance,
            Just ("Name" .= _cabreName)
          ]
      )
