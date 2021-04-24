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
-- Module      : Network.AWS.SageMaker.CreateModelExplainabilityJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the definition for a model explainability job.
module Network.AWS.SageMaker.CreateModelExplainabilityJobDefinition
  ( -- * Creating a Request
    createModelExplainabilityJobDefinition,
    CreateModelExplainabilityJobDefinition,

    -- * Request Lenses
    cmejdNetworkConfig,
    cmejdModelExplainabilityBaselineConfig,
    cmejdTags,
    cmejdStoppingCondition,
    cmejdJobDefinitionName,
    cmejdModelExplainabilityAppSpecification,
    cmejdModelExplainabilityJobInput,
    cmejdModelExplainabilityJobOutputConfig,
    cmejdJobResources,
    cmejdRoleARN,

    -- * Destructuring the Response
    createModelExplainabilityJobDefinitionResponse,
    CreateModelExplainabilityJobDefinitionResponse,

    -- * Response Lenses
    cmejdrrsResponseStatus,
    cmejdrrsJobDefinitionARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createModelExplainabilityJobDefinition' smart constructor.
data CreateModelExplainabilityJobDefinition = CreateModelExplainabilityJobDefinition'
  { _cmejdNetworkConfig ::
      !( Maybe
           MonitoringNetworkConfig
       ),
    _cmejdModelExplainabilityBaselineConfig ::
      !( Maybe
           ModelExplainabilityBaselineConfig
       ),
    _cmejdTags ::
      !( Maybe
           [Tag]
       ),
    _cmejdStoppingCondition ::
      !( Maybe
           MonitoringStoppingCondition
       ),
    _cmejdJobDefinitionName ::
      !Text,
    _cmejdModelExplainabilityAppSpecification ::
      !ModelExplainabilityAppSpecification,
    _cmejdModelExplainabilityJobInput ::
      !ModelExplainabilityJobInput,
    _cmejdModelExplainabilityJobOutputConfig ::
      !MonitoringOutputConfig,
    _cmejdJobResources ::
      !MonitoringResources,
    _cmejdRoleARN ::
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

-- | Creates a value of 'CreateModelExplainabilityJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmejdNetworkConfig' - Networking options for a model explainability job.
--
-- * 'cmejdModelExplainabilityBaselineConfig' - The baseline configuration for a model explainability job.
--
-- * 'cmejdTags' - (Optional) An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- * 'cmejdStoppingCondition' - Undocumented member.
--
-- * 'cmejdJobDefinitionName' - The name of the model explainability job definition. The name must be unique within an AWS Region in the AWS account.
--
-- * 'cmejdModelExplainabilityAppSpecification' - Configures the model explainability job to run a specified Docker container image.
--
-- * 'cmejdModelExplainabilityJobInput' - Inputs for the model explainability job.
--
-- * 'cmejdModelExplainabilityJobOutputConfig' - Undocumented member.
--
-- * 'cmejdJobResources' - Undocumented member.
--
-- * 'cmejdRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
createModelExplainabilityJobDefinition ::
  -- | 'cmejdJobDefinitionName'
  Text ->
  -- | 'cmejdModelExplainabilityAppSpecification'
  ModelExplainabilityAppSpecification ->
  -- | 'cmejdModelExplainabilityJobInput'
  ModelExplainabilityJobInput ->
  -- | 'cmejdModelExplainabilityJobOutputConfig'
  MonitoringOutputConfig ->
  -- | 'cmejdJobResources'
  MonitoringResources ->
  -- | 'cmejdRoleARN'
  Text ->
  CreateModelExplainabilityJobDefinition
createModelExplainabilityJobDefinition
  pJobDefinitionName_
  pModelExplainabilityAppSpecification_
  pModelExplainabilityJobInput_
  pModelExplainabilityJobOutputConfig_
  pJobResources_
  pRoleARN_ =
    CreateModelExplainabilityJobDefinition'
      { _cmejdNetworkConfig =
          Nothing,
        _cmejdModelExplainabilityBaselineConfig =
          Nothing,
        _cmejdTags = Nothing,
        _cmejdStoppingCondition = Nothing,
        _cmejdJobDefinitionName =
          pJobDefinitionName_,
        _cmejdModelExplainabilityAppSpecification =
          pModelExplainabilityAppSpecification_,
        _cmejdModelExplainabilityJobInput =
          pModelExplainabilityJobInput_,
        _cmejdModelExplainabilityJobOutputConfig =
          pModelExplainabilityJobOutputConfig_,
        _cmejdJobResources = pJobResources_,
        _cmejdRoleARN = pRoleARN_
      }

-- | Networking options for a model explainability job.
cmejdNetworkConfig :: Lens' CreateModelExplainabilityJobDefinition (Maybe MonitoringNetworkConfig)
cmejdNetworkConfig = lens _cmejdNetworkConfig (\s a -> s {_cmejdNetworkConfig = a})

-- | The baseline configuration for a model explainability job.
cmejdModelExplainabilityBaselineConfig :: Lens' CreateModelExplainabilityJobDefinition (Maybe ModelExplainabilityBaselineConfig)
cmejdModelExplainabilityBaselineConfig = lens _cmejdModelExplainabilityBaselineConfig (\s a -> s {_cmejdModelExplainabilityBaselineConfig = a})

-- | (Optional) An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
cmejdTags :: Lens' CreateModelExplainabilityJobDefinition [Tag]
cmejdTags = lens _cmejdTags (\s a -> s {_cmejdTags = a}) . _Default . _Coerce

-- | Undocumented member.
cmejdStoppingCondition :: Lens' CreateModelExplainabilityJobDefinition (Maybe MonitoringStoppingCondition)
cmejdStoppingCondition = lens _cmejdStoppingCondition (\s a -> s {_cmejdStoppingCondition = a})

-- | The name of the model explainability job definition. The name must be unique within an AWS Region in the AWS account.
cmejdJobDefinitionName :: Lens' CreateModelExplainabilityJobDefinition Text
cmejdJobDefinitionName = lens _cmejdJobDefinitionName (\s a -> s {_cmejdJobDefinitionName = a})

-- | Configures the model explainability job to run a specified Docker container image.
cmejdModelExplainabilityAppSpecification :: Lens' CreateModelExplainabilityJobDefinition ModelExplainabilityAppSpecification
cmejdModelExplainabilityAppSpecification = lens _cmejdModelExplainabilityAppSpecification (\s a -> s {_cmejdModelExplainabilityAppSpecification = a})

-- | Inputs for the model explainability job.
cmejdModelExplainabilityJobInput :: Lens' CreateModelExplainabilityJobDefinition ModelExplainabilityJobInput
cmejdModelExplainabilityJobInput = lens _cmejdModelExplainabilityJobInput (\s a -> s {_cmejdModelExplainabilityJobInput = a})

-- | Undocumented member.
cmejdModelExplainabilityJobOutputConfig :: Lens' CreateModelExplainabilityJobDefinition MonitoringOutputConfig
cmejdModelExplainabilityJobOutputConfig = lens _cmejdModelExplainabilityJobOutputConfig (\s a -> s {_cmejdModelExplainabilityJobOutputConfig = a})

-- | Undocumented member.
cmejdJobResources :: Lens' CreateModelExplainabilityJobDefinition MonitoringResources
cmejdJobResources = lens _cmejdJobResources (\s a -> s {_cmejdJobResources = a})

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
cmejdRoleARN :: Lens' CreateModelExplainabilityJobDefinition Text
cmejdRoleARN = lens _cmejdRoleARN (\s a -> s {_cmejdRoleARN = a})

instance
  AWSRequest
    CreateModelExplainabilityJobDefinition
  where
  type
    Rs CreateModelExplainabilityJobDefinition =
      CreateModelExplainabilityJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateModelExplainabilityJobDefinitionResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "JobDefinitionArn")
      )

instance
  Hashable
    CreateModelExplainabilityJobDefinition

instance
  NFData
    CreateModelExplainabilityJobDefinition

instance
  ToHeaders
    CreateModelExplainabilityJobDefinition
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.CreateModelExplainabilityJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    CreateModelExplainabilityJobDefinition
  where
  toJSON CreateModelExplainabilityJobDefinition' {..} =
    object
      ( catMaybes
          [ ("NetworkConfig" .=) <$> _cmejdNetworkConfig,
            ("ModelExplainabilityBaselineConfig" .=)
              <$> _cmejdModelExplainabilityBaselineConfig,
            ("Tags" .=) <$> _cmejdTags,
            ("StoppingCondition" .=) <$> _cmejdStoppingCondition,
            Just
              ("JobDefinitionName" .= _cmejdJobDefinitionName),
            Just
              ( "ModelExplainabilityAppSpecification"
                  .= _cmejdModelExplainabilityAppSpecification
              ),
            Just
              ( "ModelExplainabilityJobInput"
                  .= _cmejdModelExplainabilityJobInput
              ),
            Just
              ( "ModelExplainabilityJobOutputConfig"
                  .= _cmejdModelExplainabilityJobOutputConfig
              ),
            Just ("JobResources" .= _cmejdJobResources),
            Just ("RoleArn" .= _cmejdRoleARN)
          ]
      )

instance
  ToPath
    CreateModelExplainabilityJobDefinition
  where
  toPath = const "/"

instance
  ToQuery
    CreateModelExplainabilityJobDefinition
  where
  toQuery = const mempty

-- | /See:/ 'createModelExplainabilityJobDefinitionResponse' smart constructor.
data CreateModelExplainabilityJobDefinitionResponse = CreateModelExplainabilityJobDefinitionResponse'
  { _cmejdrrsResponseStatus ::
      !Int,
    _cmejdrrsJobDefinitionARN ::
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

-- | Creates a value of 'CreateModelExplainabilityJobDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmejdrrsResponseStatus' - -- | The response status code.
--
-- * 'cmejdrrsJobDefinitionARN' - The Amazon Resource Name (ARN) of the model explainability job.
createModelExplainabilityJobDefinitionResponse ::
  -- | 'cmejdrrsResponseStatus'
  Int ->
  -- | 'cmejdrrsJobDefinitionARN'
  Text ->
  CreateModelExplainabilityJobDefinitionResponse
createModelExplainabilityJobDefinitionResponse
  pResponseStatus_
  pJobDefinitionARN_ =
    CreateModelExplainabilityJobDefinitionResponse'
      { _cmejdrrsResponseStatus =
          pResponseStatus_,
        _cmejdrrsJobDefinitionARN =
          pJobDefinitionARN_
      }

-- | -- | The response status code.
cmejdrrsResponseStatus :: Lens' CreateModelExplainabilityJobDefinitionResponse Int
cmejdrrsResponseStatus = lens _cmejdrrsResponseStatus (\s a -> s {_cmejdrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the model explainability job.
cmejdrrsJobDefinitionARN :: Lens' CreateModelExplainabilityJobDefinitionResponse Text
cmejdrrsJobDefinitionARN = lens _cmejdrrsJobDefinitionARN (\s a -> s {_cmejdrrsJobDefinitionARN = a})

instance
  NFData
    CreateModelExplainabilityJobDefinitionResponse
