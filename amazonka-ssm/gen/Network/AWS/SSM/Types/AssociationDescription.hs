{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationDescription where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AssociationComplianceSeverity
import Network.AWS.SSM.Types.AssociationOverview
import Network.AWS.SSM.Types.AssociationStatus
import Network.AWS.SSM.Types.AssociationSyncCompliance
import Network.AWS.SSM.Types.InstanceAssociationOutputLocation
import Network.AWS.SSM.Types.Target
import Network.AWS.SSM.Types.TargetLocation

-- | Describes the parameters for a document.
--
--
--
-- /See:/ 'associationDescription' smart constructor.
data AssociationDescription = AssociationDescription'
  { _adMaxErrors ::
      !(Maybe Text),
    _adStatus ::
      !( Maybe
           AssociationStatus
       ),
    _adLastExecutionDate ::
      !(Maybe POSIX),
    _adInstanceId ::
      !(Maybe Text),
    _adLastUpdateAssociationDate ::
      !(Maybe POSIX),
    _adComplianceSeverity ::
      !( Maybe
           AssociationComplianceSeverity
       ),
    _adOverview ::
      !( Maybe
           AssociationOverview
       ),
    _adAutomationTargetParameterName ::
      !(Maybe Text),
    _adTargets ::
      !(Maybe [Target]),
    _adTargetLocations ::
      !( Maybe
           ( List1
               TargetLocation
           )
       ),
    _adScheduleExpression ::
      !(Maybe Text),
    _adName :: !(Maybe Text),
    _adAssociationId ::
      !(Maybe Text),
    _adDate :: !(Maybe POSIX),
    _adMaxConcurrency ::
      !(Maybe Text),
    _adAssociationName ::
      !(Maybe Text),
    _adAssociationVersion ::
      !(Maybe Text),
    _adLastSuccessfulExecutionDate ::
      !(Maybe POSIX),
    _adDocumentVersion ::
      !(Maybe Text),
    _adParameters ::
      !( Maybe
           (Map Text [Text])
       ),
    _adOutputLocation ::
      !( Maybe
           InstanceAssociationOutputLocation
       ),
    _adApplyOnlyAtCronInterval ::
      !(Maybe Bool),
    _adSyncCompliance ::
      !( Maybe
           AssociationSyncCompliance
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AssociationDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adMaxErrors' - The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.
--
-- * 'adStatus' - The association status.
--
-- * 'adLastExecutionDate' - The date on which the association was last run.
--
-- * 'adInstanceId' - The ID of the instance.
--
-- * 'adLastUpdateAssociationDate' - The date when the association was last updated.
--
-- * 'adComplianceSeverity' - The severity level that is assigned to the association.
--
-- * 'adOverview' - Information about the association.
--
-- * 'adAutomationTargetParameterName' - Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.
--
-- * 'adTargets' - The instances targeted by the request.
--
-- * 'adTargetLocations' - The combination of AWS Regions and AWS accounts where you want to run the association.
--
-- * 'adScheduleExpression' - A cron expression that specifies a schedule when the association runs.
--
-- * 'adName' - The name of the Systems Manager document.
--
-- * 'adAssociationId' - The association ID.
--
-- * 'adDate' - The date when the association was made.
--
-- * 'adMaxConcurrency' - The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.
--
-- * 'adAssociationName' - The association name.
--
-- * 'adAssociationVersion' - The association version.
--
-- * 'adLastSuccessfulExecutionDate' - The last date on which the association was successfully run.
--
-- * 'adDocumentVersion' - The document version.
--
-- * 'adParameters' - A description of the parameters for a document.
--
-- * 'adOutputLocation' - An S3 bucket where you want to store the output details of the request.
--
-- * 'adApplyOnlyAtCronInterval' - By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it. This parameter is not supported for rate expressions.
--
-- * 'adSyncCompliance' - The mode for generating association compliance. You can specify @AUTO@ or @MANUAL@ . In @AUTO@ mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is @COMPLIANT@ . If the association execution doesn't run successfully, the association is @NON-COMPLIANT@ . In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter for the 'PutComplianceItems' API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the 'PutComplianceItems' API action. By default, all associations use @AUTO@ mode.
associationDescription ::
  AssociationDescription
associationDescription =
  AssociationDescription'
    { _adMaxErrors = Nothing,
      _adStatus = Nothing,
      _adLastExecutionDate = Nothing,
      _adInstanceId = Nothing,
      _adLastUpdateAssociationDate = Nothing,
      _adComplianceSeverity = Nothing,
      _adOverview = Nothing,
      _adAutomationTargetParameterName = Nothing,
      _adTargets = Nothing,
      _adTargetLocations = Nothing,
      _adScheduleExpression = Nothing,
      _adName = Nothing,
      _adAssociationId = Nothing,
      _adDate = Nothing,
      _adMaxConcurrency = Nothing,
      _adAssociationName = Nothing,
      _adAssociationVersion = Nothing,
      _adLastSuccessfulExecutionDate = Nothing,
      _adDocumentVersion = Nothing,
      _adParameters = Nothing,
      _adOutputLocation = Nothing,
      _adApplyOnlyAtCronInterval = Nothing,
      _adSyncCompliance = Nothing
    }

-- | The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.
adMaxErrors :: Lens' AssociationDescription (Maybe Text)
adMaxErrors = lens _adMaxErrors (\s a -> s {_adMaxErrors = a})

-- | The association status.
adStatus :: Lens' AssociationDescription (Maybe AssociationStatus)
adStatus = lens _adStatus (\s a -> s {_adStatus = a})

-- | The date on which the association was last run.
adLastExecutionDate :: Lens' AssociationDescription (Maybe UTCTime)
adLastExecutionDate = lens _adLastExecutionDate (\s a -> s {_adLastExecutionDate = a}) . mapping _Time

-- | The ID of the instance.
adInstanceId :: Lens' AssociationDescription (Maybe Text)
adInstanceId = lens _adInstanceId (\s a -> s {_adInstanceId = a})

-- | The date when the association was last updated.
adLastUpdateAssociationDate :: Lens' AssociationDescription (Maybe UTCTime)
adLastUpdateAssociationDate = lens _adLastUpdateAssociationDate (\s a -> s {_adLastUpdateAssociationDate = a}) . mapping _Time

-- | The severity level that is assigned to the association.
adComplianceSeverity :: Lens' AssociationDescription (Maybe AssociationComplianceSeverity)
adComplianceSeverity = lens _adComplianceSeverity (\s a -> s {_adComplianceSeverity = a})

-- | Information about the association.
adOverview :: Lens' AssociationDescription (Maybe AssociationOverview)
adOverview = lens _adOverview (\s a -> s {_adOverview = a})

-- | Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.
adAutomationTargetParameterName :: Lens' AssociationDescription (Maybe Text)
adAutomationTargetParameterName = lens _adAutomationTargetParameterName (\s a -> s {_adAutomationTargetParameterName = a})

-- | The instances targeted by the request.
adTargets :: Lens' AssociationDescription [Target]
adTargets = lens _adTargets (\s a -> s {_adTargets = a}) . _Default . _Coerce

-- | The combination of AWS Regions and AWS accounts where you want to run the association.
adTargetLocations :: Lens' AssociationDescription (Maybe (NonEmpty TargetLocation))
adTargetLocations = lens _adTargetLocations (\s a -> s {_adTargetLocations = a}) . mapping _List1

-- | A cron expression that specifies a schedule when the association runs.
adScheduleExpression :: Lens' AssociationDescription (Maybe Text)
adScheduleExpression = lens _adScheduleExpression (\s a -> s {_adScheduleExpression = a})

-- | The name of the Systems Manager document.
adName :: Lens' AssociationDescription (Maybe Text)
adName = lens _adName (\s a -> s {_adName = a})

-- | The association ID.
adAssociationId :: Lens' AssociationDescription (Maybe Text)
adAssociationId = lens _adAssociationId (\s a -> s {_adAssociationId = a})

-- | The date when the association was made.
adDate :: Lens' AssociationDescription (Maybe UTCTime)
adDate = lens _adDate (\s a -> s {_adDate = a}) . mapping _Time

-- | The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.
adMaxConcurrency :: Lens' AssociationDescription (Maybe Text)
adMaxConcurrency = lens _adMaxConcurrency (\s a -> s {_adMaxConcurrency = a})

-- | The association name.
adAssociationName :: Lens' AssociationDescription (Maybe Text)
adAssociationName = lens _adAssociationName (\s a -> s {_adAssociationName = a})

-- | The association version.
adAssociationVersion :: Lens' AssociationDescription (Maybe Text)
adAssociationVersion = lens _adAssociationVersion (\s a -> s {_adAssociationVersion = a})

-- | The last date on which the association was successfully run.
adLastSuccessfulExecutionDate :: Lens' AssociationDescription (Maybe UTCTime)
adLastSuccessfulExecutionDate = lens _adLastSuccessfulExecutionDate (\s a -> s {_adLastSuccessfulExecutionDate = a}) . mapping _Time

-- | The document version.
adDocumentVersion :: Lens' AssociationDescription (Maybe Text)
adDocumentVersion = lens _adDocumentVersion (\s a -> s {_adDocumentVersion = a})

-- | A description of the parameters for a document.
adParameters :: Lens' AssociationDescription (HashMap Text [Text])
adParameters = lens _adParameters (\s a -> s {_adParameters = a}) . _Default . _Map

-- | An S3 bucket where you want to store the output details of the request.
adOutputLocation :: Lens' AssociationDescription (Maybe InstanceAssociationOutputLocation)
adOutputLocation = lens _adOutputLocation (\s a -> s {_adOutputLocation = a})

-- | By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it. This parameter is not supported for rate expressions.
adApplyOnlyAtCronInterval :: Lens' AssociationDescription (Maybe Bool)
adApplyOnlyAtCronInterval = lens _adApplyOnlyAtCronInterval (\s a -> s {_adApplyOnlyAtCronInterval = a})

-- | The mode for generating association compliance. You can specify @AUTO@ or @MANUAL@ . In @AUTO@ mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is @COMPLIANT@ . If the association execution doesn't run successfully, the association is @NON-COMPLIANT@ . In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter for the 'PutComplianceItems' API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the 'PutComplianceItems' API action. By default, all associations use @AUTO@ mode.
adSyncCompliance :: Lens' AssociationDescription (Maybe AssociationSyncCompliance)
adSyncCompliance = lens _adSyncCompliance (\s a -> s {_adSyncCompliance = a})

instance FromJSON AssociationDescription where
  parseJSON =
    withObject
      "AssociationDescription"
      ( \x ->
          AssociationDescription'
            <$> (x .:? "MaxErrors")
            <*> (x .:? "Status")
            <*> (x .:? "LastExecutionDate")
            <*> (x .:? "InstanceId")
            <*> (x .:? "LastUpdateAssociationDate")
            <*> (x .:? "ComplianceSeverity")
            <*> (x .:? "Overview")
            <*> (x .:? "AutomationTargetParameterName")
            <*> (x .:? "Targets" .!= mempty)
            <*> (x .:? "TargetLocations")
            <*> (x .:? "ScheduleExpression")
            <*> (x .:? "Name")
            <*> (x .:? "AssociationId")
            <*> (x .:? "Date")
            <*> (x .:? "MaxConcurrency")
            <*> (x .:? "AssociationName")
            <*> (x .:? "AssociationVersion")
            <*> (x .:? "LastSuccessfulExecutionDate")
            <*> (x .:? "DocumentVersion")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .:? "OutputLocation")
            <*> (x .:? "ApplyOnlyAtCronInterval")
            <*> (x .:? "SyncCompliance")
      )

instance Hashable AssociationDescription

instance NFData AssociationDescription
