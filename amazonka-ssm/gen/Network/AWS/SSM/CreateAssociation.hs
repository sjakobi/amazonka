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
-- Module      : Network.AWS.SSM.CreateAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A State Manager association defines the state that you want to maintain on your instances. For example, an association can specify that anti-virus software must be installed and running on your instances, or that certain ports must be closed. For static targets, the association specifies a schedule for when the configuration is reapplied. For dynamic targets, such as an AWS Resource Group or an AWS Autoscaling Group, State Manager applies the configuration when new instances are added to the group. The association also specifies actions to take when applying the configuration. For example, an association for anti-virus software might run once a day. If the software is not installed, then State Manager installs it. If the software is installed, but the service is not running, then the association might instruct State Manager to start the service.
module Network.AWS.SSM.CreateAssociation
  ( -- * Creating a Request
    createAssociation,
    CreateAssociation,

    -- * Request Lenses
    caMaxErrors,
    caInstanceId,
    caComplianceSeverity,
    caAutomationTargetParameterName,
    caTargets,
    caTargetLocations,
    caScheduleExpression,
    caMaxConcurrency,
    caAssociationName,
    caDocumentVersion,
    caParameters,
    caOutputLocation,
    caApplyOnlyAtCronInterval,
    caSyncCompliance,
    caName,

    -- * Destructuring the Response
    createAssociationResponse,
    CreateAssociationResponse,

    -- * Response Lenses
    crsAssociationDescription,
    crsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'createAssociation' smart constructor.
data CreateAssociation = CreateAssociation'
  { _caMaxErrors ::
      !(Maybe Text),
    _caInstanceId :: !(Maybe Text),
    _caComplianceSeverity ::
      !( Maybe
           AssociationComplianceSeverity
       ),
    _caAutomationTargetParameterName ::
      !(Maybe Text),
    _caTargets :: !(Maybe [Target]),
    _caTargetLocations ::
      !(Maybe (List1 TargetLocation)),
    _caScheduleExpression ::
      !(Maybe Text),
    _caMaxConcurrency :: !(Maybe Text),
    _caAssociationName :: !(Maybe Text),
    _caDocumentVersion :: !(Maybe Text),
    _caParameters ::
      !(Maybe (Map Text [Text])),
    _caOutputLocation ::
      !( Maybe
           InstanceAssociationOutputLocation
       ),
    _caApplyOnlyAtCronInterval ::
      !(Maybe Bool),
    _caSyncCompliance ::
      !(Maybe AssociationSyncCompliance),
    _caName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caMaxErrors' - The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.
--
-- * 'caInstanceId' - The instance ID.
--
-- * 'caComplianceSeverity' - The severity level to assign to the association.
--
-- * 'caAutomationTargetParameterName' - Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.
--
-- * 'caTargets' - The targets for the association. You can target instances by using tags, AWS Resource Groups, all instances in an AWS account, or individual instance IDs. For more information about choosing targets for an association, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html Using targets and rate controls with State Manager associations> in the /AWS Systems Manager User Guide/ .
--
-- * 'caTargetLocations' - A location is a combination of AWS Regions and AWS accounts where you want to run the association. Use this action to create an association in multiple Regions and multiple accounts.
--
-- * 'caScheduleExpression' - A cron expression when the association will be applied to the target(s).
--
-- * 'caMaxConcurrency' - The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.
--
-- * 'caAssociationName' - Specify a descriptive name for the association.
--
-- * 'caDocumentVersion' - The document version you want to associate with the target(s). Can be a specific version or the default version.
--
-- * 'caParameters' - The parameters for the runtime configuration of the document.
--
-- * 'caOutputLocation' - An S3 bucket where you want to store the output details of the request.
--
-- * 'caApplyOnlyAtCronInterval' - By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it. This parameter is not supported for rate expressions.
--
-- * 'caSyncCompliance' - The mode for generating association compliance. You can specify @AUTO@ or @MANUAL@ . In @AUTO@ mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is @COMPLIANT@ . If the association execution doesn't run successfully, the association is @NON-COMPLIANT@ . In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter for the 'PutComplianceItems' API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the 'PutComplianceItems' API action. By default, all associations use @AUTO@ mode.
--
-- * 'caName' - The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents. You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account. For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format: @arn:/partition/ :ssm:/region/ :/account-id/ :document//document-name/ @  For example: @arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document@  For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, @AWS-ApplyPatchBaseline@ or @My-Document@ .
createAssociation ::
  -- | 'caName'
  Text ->
  CreateAssociation
createAssociation pName_ =
  CreateAssociation'
    { _caMaxErrors = Nothing,
      _caInstanceId = Nothing,
      _caComplianceSeverity = Nothing,
      _caAutomationTargetParameterName = Nothing,
      _caTargets = Nothing,
      _caTargetLocations = Nothing,
      _caScheduleExpression = Nothing,
      _caMaxConcurrency = Nothing,
      _caAssociationName = Nothing,
      _caDocumentVersion = Nothing,
      _caParameters = Nothing,
      _caOutputLocation = Nothing,
      _caApplyOnlyAtCronInterval = Nothing,
      _caSyncCompliance = Nothing,
      _caName = pName_
    }

-- | The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.
caMaxErrors :: Lens' CreateAssociation (Maybe Text)
caMaxErrors = lens _caMaxErrors (\s a -> s {_caMaxErrors = a})

-- | The instance ID.
caInstanceId :: Lens' CreateAssociation (Maybe Text)
caInstanceId = lens _caInstanceId (\s a -> s {_caInstanceId = a})

-- | The severity level to assign to the association.
caComplianceSeverity :: Lens' CreateAssociation (Maybe AssociationComplianceSeverity)
caComplianceSeverity = lens _caComplianceSeverity (\s a -> s {_caComplianceSeverity = a})

-- | Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.
caAutomationTargetParameterName :: Lens' CreateAssociation (Maybe Text)
caAutomationTargetParameterName = lens _caAutomationTargetParameterName (\s a -> s {_caAutomationTargetParameterName = a})

-- | The targets for the association. You can target instances by using tags, AWS Resource Groups, all instances in an AWS account, or individual instance IDs. For more information about choosing targets for an association, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html Using targets and rate controls with State Manager associations> in the /AWS Systems Manager User Guide/ .
caTargets :: Lens' CreateAssociation [Target]
caTargets = lens _caTargets (\s a -> s {_caTargets = a}) . _Default . _Coerce

-- | A location is a combination of AWS Regions and AWS accounts where you want to run the association. Use this action to create an association in multiple Regions and multiple accounts.
caTargetLocations :: Lens' CreateAssociation (Maybe (NonEmpty TargetLocation))
caTargetLocations = lens _caTargetLocations (\s a -> s {_caTargetLocations = a}) . mapping _List1

-- | A cron expression when the association will be applied to the target(s).
caScheduleExpression :: Lens' CreateAssociation (Maybe Text)
caScheduleExpression = lens _caScheduleExpression (\s a -> s {_caScheduleExpression = a})

-- | The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.
caMaxConcurrency :: Lens' CreateAssociation (Maybe Text)
caMaxConcurrency = lens _caMaxConcurrency (\s a -> s {_caMaxConcurrency = a})

-- | Specify a descriptive name for the association.
caAssociationName :: Lens' CreateAssociation (Maybe Text)
caAssociationName = lens _caAssociationName (\s a -> s {_caAssociationName = a})

-- | The document version you want to associate with the target(s). Can be a specific version or the default version.
caDocumentVersion :: Lens' CreateAssociation (Maybe Text)
caDocumentVersion = lens _caDocumentVersion (\s a -> s {_caDocumentVersion = a})

-- | The parameters for the runtime configuration of the document.
caParameters :: Lens' CreateAssociation (HashMap Text [Text])
caParameters = lens _caParameters (\s a -> s {_caParameters = a}) . _Default . _Map

-- | An S3 bucket where you want to store the output details of the request.
caOutputLocation :: Lens' CreateAssociation (Maybe InstanceAssociationOutputLocation)
caOutputLocation = lens _caOutputLocation (\s a -> s {_caOutputLocation = a})

-- | By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it. This parameter is not supported for rate expressions.
caApplyOnlyAtCronInterval :: Lens' CreateAssociation (Maybe Bool)
caApplyOnlyAtCronInterval = lens _caApplyOnlyAtCronInterval (\s a -> s {_caApplyOnlyAtCronInterval = a})

-- | The mode for generating association compliance. You can specify @AUTO@ or @MANUAL@ . In @AUTO@ mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is @COMPLIANT@ . If the association execution doesn't run successfully, the association is @NON-COMPLIANT@ . In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter for the 'PutComplianceItems' API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the 'PutComplianceItems' API action. By default, all associations use @AUTO@ mode.
caSyncCompliance :: Lens' CreateAssociation (Maybe AssociationSyncCompliance)
caSyncCompliance = lens _caSyncCompliance (\s a -> s {_caSyncCompliance = a})

-- | The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents. You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account. For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format: @arn:/partition/ :ssm:/region/ :/account-id/ :document//document-name/ @  For example: @arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document@  For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, @AWS-ApplyPatchBaseline@ or @My-Document@ .
caName :: Lens' CreateAssociation Text
caName = lens _caName (\s a -> s {_caName = a})

instance AWSRequest CreateAssociation where
  type Rs CreateAssociation = CreateAssociationResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          CreateAssociationResponse'
            <$> (x .?> "AssociationDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateAssociation

instance NFData CreateAssociation

instance ToHeaders CreateAssociation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.CreateAssociation" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateAssociation where
  toJSON CreateAssociation' {..} =
    object
      ( catMaybes
          [ ("MaxErrors" .=) <$> _caMaxErrors,
            ("InstanceId" .=) <$> _caInstanceId,
            ("ComplianceSeverity" .=) <$> _caComplianceSeverity,
            ("AutomationTargetParameterName" .=)
              <$> _caAutomationTargetParameterName,
            ("Targets" .=) <$> _caTargets,
            ("TargetLocations" .=) <$> _caTargetLocations,
            ("ScheduleExpression" .=) <$> _caScheduleExpression,
            ("MaxConcurrency" .=) <$> _caMaxConcurrency,
            ("AssociationName" .=) <$> _caAssociationName,
            ("DocumentVersion" .=) <$> _caDocumentVersion,
            ("Parameters" .=) <$> _caParameters,
            ("OutputLocation" .=) <$> _caOutputLocation,
            ("ApplyOnlyAtCronInterval" .=)
              <$> _caApplyOnlyAtCronInterval,
            ("SyncCompliance" .=) <$> _caSyncCompliance,
            Just ("Name" .= _caName)
          ]
      )

instance ToPath CreateAssociation where
  toPath = const "/"

instance ToQuery CreateAssociation where
  toQuery = const mempty

-- | /See:/ 'createAssociationResponse' smart constructor.
data CreateAssociationResponse = CreateAssociationResponse'
  { _crsAssociationDescription ::
      !( Maybe
           AssociationDescription
       ),
    _crsResponseStatus ::
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

-- | Creates a value of 'CreateAssociationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsAssociationDescription' - Information about the association.
--
-- * 'crsResponseStatus' - -- | The response status code.
createAssociationResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateAssociationResponse
createAssociationResponse pResponseStatus_ =
  CreateAssociationResponse'
    { _crsAssociationDescription =
        Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | Information about the association.
crsAssociationDescription :: Lens' CreateAssociationResponse (Maybe AssociationDescription)
crsAssociationDescription = lens _crsAssociationDescription (\s a -> s {_crsAssociationDescription = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateAssociationResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateAssociationResponse
