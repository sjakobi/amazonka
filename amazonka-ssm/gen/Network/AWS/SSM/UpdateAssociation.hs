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
-- Module      : Network.AWS.SSM.UpdateAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an association. You can update the association name and version, the document version, schedule, parameters, and Amazon S3 output.
--
--
-- In order to call this API action, your IAM user account, group, or role must be configured with permission to call the 'DescribeAssociation' API action. If you don't have permission to call DescribeAssociation, then you receive the following error: @An error occurred (AccessDeniedException) when calling the UpdateAssociation operation: User: <user_arn> is not authorized to perform: ssm:DescribeAssociation on resource: <resource_arn>@
--
-- /Important:/ When you update an association, the association immediately runs against the specified targets.
module Network.AWS.SSM.UpdateAssociation
  ( -- * Creating a Request
    updateAssociation,
    UpdateAssociation,

    -- * Request Lenses
    uaMaxErrors,
    uaComplianceSeverity,
    uaAutomationTargetParameterName,
    uaTargets,
    uaTargetLocations,
    uaScheduleExpression,
    uaName,
    uaMaxConcurrency,
    uaAssociationName,
    uaAssociationVersion,
    uaDocumentVersion,
    uaParameters,
    uaOutputLocation,
    uaApplyOnlyAtCronInterval,
    uaSyncCompliance,
    uaAssociationId,

    -- * Destructuring the Response
    updateAssociationResponse,
    UpdateAssociationResponse,

    -- * Response Lenses
    uarrsAssociationDescription,
    uarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'updateAssociation' smart constructor.
data UpdateAssociation = UpdateAssociation'
  { _uaMaxErrors ::
      !(Maybe Text),
    _uaComplianceSeverity ::
      !( Maybe
           AssociationComplianceSeverity
       ),
    _uaAutomationTargetParameterName ::
      !(Maybe Text),
    _uaTargets :: !(Maybe [Target]),
    _uaTargetLocations ::
      !(Maybe (List1 TargetLocation)),
    _uaScheduleExpression ::
      !(Maybe Text),
    _uaName :: !(Maybe Text),
    _uaMaxConcurrency :: !(Maybe Text),
    _uaAssociationName :: !(Maybe Text),
    _uaAssociationVersion ::
      !(Maybe Text),
    _uaDocumentVersion :: !(Maybe Text),
    _uaParameters ::
      !(Maybe (Map Text [Text])),
    _uaOutputLocation ::
      !( Maybe
           InstanceAssociationOutputLocation
       ),
    _uaApplyOnlyAtCronInterval ::
      !(Maybe Bool),
    _uaSyncCompliance ::
      !(Maybe AssociationSyncCompliance),
    _uaAssociationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaMaxErrors' - The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.
--
-- * 'uaComplianceSeverity' - The severity level to assign to the association.
--
-- * 'uaAutomationTargetParameterName' - Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.
--
-- * 'uaTargets' - The targets of the association.
--
-- * 'uaTargetLocations' - A location is a combination of AWS Regions and AWS accounts where you want to run the association. Use this action to update an association in multiple Regions and multiple accounts.
--
-- * 'uaScheduleExpression' - The cron expression used to schedule the association that you want to update.
--
-- * 'uaName' - The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents. You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account. For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format: @arn:aws:ssm:/region/ :/account-id/ :document//document-name/ @  For example: @arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document@  For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, @AWS-ApplyPatchBaseline@ or @My-Document@ .
--
-- * 'uaMaxConcurrency' - The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.
--
-- * 'uaAssociationName' - The name of the association that you want to update.
--
-- * 'uaAssociationVersion' - This parameter is provided for concurrency control purposes. You must specify the latest association version in the service. If you want to ensure that this request succeeds, either specify @> LATEST@ , or omit this parameter.
--
-- * 'uaDocumentVersion' - The document version you want update for the association.
--
-- * 'uaParameters' - The parameters you want to update for the association. If you create a parameter using Parameter Store, you can reference the parameter using {{ssm:parameter-name}}
--
-- * 'uaOutputLocation' - An S3 bucket where you want to store the results of this request.
--
-- * 'uaApplyOnlyAtCronInterval' - By default, when you update an association, the system runs it immediately after it is updated and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you update it. This parameter is not supported for rate expressions. Also, if you specified this option when you created the association, you can reset it. To do so, specify the @no-apply-only-at-cron-interval@ parameter when you update the association from the command line. This parameter forces the association to run immediately after updating it and according to the interval specified.
--
-- * 'uaSyncCompliance' - The mode for generating association compliance. You can specify @AUTO@ or @MANUAL@ . In @AUTO@ mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is @COMPLIANT@ . If the association execution doesn't run successfully, the association is @NON-COMPLIANT@ . In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter for the 'PutComplianceItems' API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the 'PutComplianceItems' API action. By default, all associations use @AUTO@ mode.
--
-- * 'uaAssociationId' - The ID of the association you want to update.
updateAssociation ::
  -- | 'uaAssociationId'
  Text ->
  UpdateAssociation
updateAssociation pAssociationId_ =
  UpdateAssociation'
    { _uaMaxErrors = Nothing,
      _uaComplianceSeverity = Nothing,
      _uaAutomationTargetParameterName = Nothing,
      _uaTargets = Nothing,
      _uaTargetLocations = Nothing,
      _uaScheduleExpression = Nothing,
      _uaName = Nothing,
      _uaMaxConcurrency = Nothing,
      _uaAssociationName = Nothing,
      _uaAssociationVersion = Nothing,
      _uaDocumentVersion = Nothing,
      _uaParameters = Nothing,
      _uaOutputLocation = Nothing,
      _uaApplyOnlyAtCronInterval = Nothing,
      _uaSyncCompliance = Nothing,
      _uaAssociationId = pAssociationId_
    }

-- | The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.
uaMaxErrors :: Lens' UpdateAssociation (Maybe Text)
uaMaxErrors = lens _uaMaxErrors (\s a -> s {_uaMaxErrors = a})

-- | The severity level to assign to the association.
uaComplianceSeverity :: Lens' UpdateAssociation (Maybe AssociationComplianceSeverity)
uaComplianceSeverity = lens _uaComplianceSeverity (\s a -> s {_uaComplianceSeverity = a})

-- | Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.
uaAutomationTargetParameterName :: Lens' UpdateAssociation (Maybe Text)
uaAutomationTargetParameterName = lens _uaAutomationTargetParameterName (\s a -> s {_uaAutomationTargetParameterName = a})

-- | The targets of the association.
uaTargets :: Lens' UpdateAssociation [Target]
uaTargets = lens _uaTargets (\s a -> s {_uaTargets = a}) . _Default . _Coerce

-- | A location is a combination of AWS Regions and AWS accounts where you want to run the association. Use this action to update an association in multiple Regions and multiple accounts.
uaTargetLocations :: Lens' UpdateAssociation (Maybe (NonEmpty TargetLocation))
uaTargetLocations = lens _uaTargetLocations (\s a -> s {_uaTargetLocations = a}) . mapping _List1

-- | The cron expression used to schedule the association that you want to update.
uaScheduleExpression :: Lens' UpdateAssociation (Maybe Text)
uaScheduleExpression = lens _uaScheduleExpression (\s a -> s {_uaScheduleExpression = a})

-- | The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents. You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account. For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format: @arn:aws:ssm:/region/ :/account-id/ :document//document-name/ @  For example: @arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document@  For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, @AWS-ApplyPatchBaseline@ or @My-Document@ .
uaName :: Lens' UpdateAssociation (Maybe Text)
uaName = lens _uaName (\s a -> s {_uaName = a})

-- | The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.
uaMaxConcurrency :: Lens' UpdateAssociation (Maybe Text)
uaMaxConcurrency = lens _uaMaxConcurrency (\s a -> s {_uaMaxConcurrency = a})

-- | The name of the association that you want to update.
uaAssociationName :: Lens' UpdateAssociation (Maybe Text)
uaAssociationName = lens _uaAssociationName (\s a -> s {_uaAssociationName = a})

-- | This parameter is provided for concurrency control purposes. You must specify the latest association version in the service. If you want to ensure that this request succeeds, either specify @> LATEST@ , or omit this parameter.
uaAssociationVersion :: Lens' UpdateAssociation (Maybe Text)
uaAssociationVersion = lens _uaAssociationVersion (\s a -> s {_uaAssociationVersion = a})

-- | The document version you want update for the association.
uaDocumentVersion :: Lens' UpdateAssociation (Maybe Text)
uaDocumentVersion = lens _uaDocumentVersion (\s a -> s {_uaDocumentVersion = a})

-- | The parameters you want to update for the association. If you create a parameter using Parameter Store, you can reference the parameter using {{ssm:parameter-name}}
uaParameters :: Lens' UpdateAssociation (HashMap Text [Text])
uaParameters = lens _uaParameters (\s a -> s {_uaParameters = a}) . _Default . _Map

-- | An S3 bucket where you want to store the results of this request.
uaOutputLocation :: Lens' UpdateAssociation (Maybe InstanceAssociationOutputLocation)
uaOutputLocation = lens _uaOutputLocation (\s a -> s {_uaOutputLocation = a})

-- | By default, when you update an association, the system runs it immediately after it is updated and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you update it. This parameter is not supported for rate expressions. Also, if you specified this option when you created the association, you can reset it. To do so, specify the @no-apply-only-at-cron-interval@ parameter when you update the association from the command line. This parameter forces the association to run immediately after updating it and according to the interval specified.
uaApplyOnlyAtCronInterval :: Lens' UpdateAssociation (Maybe Bool)
uaApplyOnlyAtCronInterval = lens _uaApplyOnlyAtCronInterval (\s a -> s {_uaApplyOnlyAtCronInterval = a})

-- | The mode for generating association compliance. You can specify @AUTO@ or @MANUAL@ . In @AUTO@ mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is @COMPLIANT@ . If the association execution doesn't run successfully, the association is @NON-COMPLIANT@ . In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter for the 'PutComplianceItems' API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the 'PutComplianceItems' API action. By default, all associations use @AUTO@ mode.
uaSyncCompliance :: Lens' UpdateAssociation (Maybe AssociationSyncCompliance)
uaSyncCompliance = lens _uaSyncCompliance (\s a -> s {_uaSyncCompliance = a})

-- | The ID of the association you want to update.
uaAssociationId :: Lens' UpdateAssociation Text
uaAssociationId = lens _uaAssociationId (\s a -> s {_uaAssociationId = a})

instance AWSRequest UpdateAssociation where
  type Rs UpdateAssociation = UpdateAssociationResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          UpdateAssociationResponse'
            <$> (x .?> "AssociationDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateAssociation

instance NFData UpdateAssociation

instance ToHeaders UpdateAssociation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.UpdateAssociation" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateAssociation where
  toJSON UpdateAssociation' {..} =
    object
      ( catMaybes
          [ ("MaxErrors" .=) <$> _uaMaxErrors,
            ("ComplianceSeverity" .=) <$> _uaComplianceSeverity,
            ("AutomationTargetParameterName" .=)
              <$> _uaAutomationTargetParameterName,
            ("Targets" .=) <$> _uaTargets,
            ("TargetLocations" .=) <$> _uaTargetLocations,
            ("ScheduleExpression" .=) <$> _uaScheduleExpression,
            ("Name" .=) <$> _uaName,
            ("MaxConcurrency" .=) <$> _uaMaxConcurrency,
            ("AssociationName" .=) <$> _uaAssociationName,
            ("AssociationVersion" .=) <$> _uaAssociationVersion,
            ("DocumentVersion" .=) <$> _uaDocumentVersion,
            ("Parameters" .=) <$> _uaParameters,
            ("OutputLocation" .=) <$> _uaOutputLocation,
            ("ApplyOnlyAtCronInterval" .=)
              <$> _uaApplyOnlyAtCronInterval,
            ("SyncCompliance" .=) <$> _uaSyncCompliance,
            Just ("AssociationId" .= _uaAssociationId)
          ]
      )

instance ToPath UpdateAssociation where
  toPath = const "/"

instance ToQuery UpdateAssociation where
  toQuery = const mempty

-- | /See:/ 'updateAssociationResponse' smart constructor.
data UpdateAssociationResponse = UpdateAssociationResponse'
  { _uarrsAssociationDescription ::
      !( Maybe
           AssociationDescription
       ),
    _uarrsResponseStatus ::
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

-- | Creates a value of 'UpdateAssociationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarrsAssociationDescription' - The description of the association that was updated.
--
-- * 'uarrsResponseStatus' - -- | The response status code.
updateAssociationResponse ::
  -- | 'uarrsResponseStatus'
  Int ->
  UpdateAssociationResponse
updateAssociationResponse pResponseStatus_ =
  UpdateAssociationResponse'
    { _uarrsAssociationDescription =
        Nothing,
      _uarrsResponseStatus = pResponseStatus_
    }

-- | The description of the association that was updated.
uarrsAssociationDescription :: Lens' UpdateAssociationResponse (Maybe AssociationDescription)
uarrsAssociationDescription = lens _uarrsAssociationDescription (\s a -> s {_uarrsAssociationDescription = a})

-- | -- | The response status code.
uarrsResponseStatus :: Lens' UpdateAssociationResponse Int
uarrsResponseStatus = lens _uarrsResponseStatus (\s a -> s {_uarrsResponseStatus = a})

instance NFData UpdateAssociationResponse
