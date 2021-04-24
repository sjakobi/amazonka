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
-- Module      : Network.AWS.SageMaker.CreateModelBiasJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the definition for a model bias job.
module Network.AWS.SageMaker.CreateModelBiasJobDefinition
  ( -- * Creating a Request
    createModelBiasJobDefinition,
    CreateModelBiasJobDefinition,

    -- * Request Lenses
    cmbjdNetworkConfig,
    cmbjdModelBiasBaselineConfig,
    cmbjdTags,
    cmbjdStoppingCondition,
    cmbjdJobDefinitionName,
    cmbjdModelBiasAppSpecification,
    cmbjdModelBiasJobInput,
    cmbjdModelBiasJobOutputConfig,
    cmbjdJobResources,
    cmbjdRoleARN,

    -- * Destructuring the Response
    createModelBiasJobDefinitionResponse,
    CreateModelBiasJobDefinitionResponse,

    -- * Response Lenses
    cmbjdrrsResponseStatus,
    cmbjdrrsJobDefinitionARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createModelBiasJobDefinition' smart constructor.
data CreateModelBiasJobDefinition = CreateModelBiasJobDefinition'
  { _cmbjdNetworkConfig ::
      !( Maybe
           MonitoringNetworkConfig
       ),
    _cmbjdModelBiasBaselineConfig ::
      !( Maybe
           ModelBiasBaselineConfig
       ),
    _cmbjdTags ::
      !( Maybe
           [Tag]
       ),
    _cmbjdStoppingCondition ::
      !( Maybe
           MonitoringStoppingCondition
       ),
    _cmbjdJobDefinitionName ::
      !Text,
    _cmbjdModelBiasAppSpecification ::
      !ModelBiasAppSpecification,
    _cmbjdModelBiasJobInput ::
      !ModelBiasJobInput,
    _cmbjdModelBiasJobOutputConfig ::
      !MonitoringOutputConfig,
    _cmbjdJobResources ::
      !MonitoringResources,
    _cmbjdRoleARN ::
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

-- | Creates a value of 'CreateModelBiasJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmbjdNetworkConfig' - Networking options for a model bias job.
--
-- * 'cmbjdModelBiasBaselineConfig' - The baseline configuration for a model bias job.
--
-- * 'cmbjdTags' - (Optional) An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- * 'cmbjdStoppingCondition' - Undocumented member.
--
-- * 'cmbjdJobDefinitionName' - The name of the bias job definition. The name must be unique within an AWS Region in the AWS account.
--
-- * 'cmbjdModelBiasAppSpecification' - Configures the model bias job to run a specified Docker container image.
--
-- * 'cmbjdModelBiasJobInput' - Inputs for the model bias job.
--
-- * 'cmbjdModelBiasJobOutputConfig' - Undocumented member.
--
-- * 'cmbjdJobResources' - Undocumented member.
--
-- * 'cmbjdRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
createModelBiasJobDefinition ::
  -- | 'cmbjdJobDefinitionName'
  Text ->
  -- | 'cmbjdModelBiasAppSpecification'
  ModelBiasAppSpecification ->
  -- | 'cmbjdModelBiasJobInput'
  ModelBiasJobInput ->
  -- | 'cmbjdModelBiasJobOutputConfig'
  MonitoringOutputConfig ->
  -- | 'cmbjdJobResources'
  MonitoringResources ->
  -- | 'cmbjdRoleARN'
  Text ->
  CreateModelBiasJobDefinition
createModelBiasJobDefinition
  pJobDefinitionName_
  pModelBiasAppSpecification_
  pModelBiasJobInput_
  pModelBiasJobOutputConfig_
  pJobResources_
  pRoleARN_ =
    CreateModelBiasJobDefinition'
      { _cmbjdNetworkConfig =
          Nothing,
        _cmbjdModelBiasBaselineConfig = Nothing,
        _cmbjdTags = Nothing,
        _cmbjdStoppingCondition = Nothing,
        _cmbjdJobDefinitionName = pJobDefinitionName_,
        _cmbjdModelBiasAppSpecification =
          pModelBiasAppSpecification_,
        _cmbjdModelBiasJobInput = pModelBiasJobInput_,
        _cmbjdModelBiasJobOutputConfig =
          pModelBiasJobOutputConfig_,
        _cmbjdJobResources = pJobResources_,
        _cmbjdRoleARN = pRoleARN_
      }

-- | Networking options for a model bias job.
cmbjdNetworkConfig :: Lens' CreateModelBiasJobDefinition (Maybe MonitoringNetworkConfig)
cmbjdNetworkConfig = lens _cmbjdNetworkConfig (\s a -> s {_cmbjdNetworkConfig = a})

-- | The baseline configuration for a model bias job.
cmbjdModelBiasBaselineConfig :: Lens' CreateModelBiasJobDefinition (Maybe ModelBiasBaselineConfig)
cmbjdModelBiasBaselineConfig = lens _cmbjdModelBiasBaselineConfig (\s a -> s {_cmbjdModelBiasBaselineConfig = a})

-- | (Optional) An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
cmbjdTags :: Lens' CreateModelBiasJobDefinition [Tag]
cmbjdTags = lens _cmbjdTags (\s a -> s {_cmbjdTags = a}) . _Default . _Coerce

-- | Undocumented member.
cmbjdStoppingCondition :: Lens' CreateModelBiasJobDefinition (Maybe MonitoringStoppingCondition)
cmbjdStoppingCondition = lens _cmbjdStoppingCondition (\s a -> s {_cmbjdStoppingCondition = a})

-- | The name of the bias job definition. The name must be unique within an AWS Region in the AWS account.
cmbjdJobDefinitionName :: Lens' CreateModelBiasJobDefinition Text
cmbjdJobDefinitionName = lens _cmbjdJobDefinitionName (\s a -> s {_cmbjdJobDefinitionName = a})

-- | Configures the model bias job to run a specified Docker container image.
cmbjdModelBiasAppSpecification :: Lens' CreateModelBiasJobDefinition ModelBiasAppSpecification
cmbjdModelBiasAppSpecification = lens _cmbjdModelBiasAppSpecification (\s a -> s {_cmbjdModelBiasAppSpecification = a})

-- | Inputs for the model bias job.
cmbjdModelBiasJobInput :: Lens' CreateModelBiasJobDefinition ModelBiasJobInput
cmbjdModelBiasJobInput = lens _cmbjdModelBiasJobInput (\s a -> s {_cmbjdModelBiasJobInput = a})

-- | Undocumented member.
cmbjdModelBiasJobOutputConfig :: Lens' CreateModelBiasJobDefinition MonitoringOutputConfig
cmbjdModelBiasJobOutputConfig = lens _cmbjdModelBiasJobOutputConfig (\s a -> s {_cmbjdModelBiasJobOutputConfig = a})

-- | Undocumented member.
cmbjdJobResources :: Lens' CreateModelBiasJobDefinition MonitoringResources
cmbjdJobResources = lens _cmbjdJobResources (\s a -> s {_cmbjdJobResources = a})

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
cmbjdRoleARN :: Lens' CreateModelBiasJobDefinition Text
cmbjdRoleARN = lens _cmbjdRoleARN (\s a -> s {_cmbjdRoleARN = a})

instance AWSRequest CreateModelBiasJobDefinition where
  type
    Rs CreateModelBiasJobDefinition =
      CreateModelBiasJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateModelBiasJobDefinitionResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "JobDefinitionArn")
      )

instance Hashable CreateModelBiasJobDefinition

instance NFData CreateModelBiasJobDefinition

instance ToHeaders CreateModelBiasJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.CreateModelBiasJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateModelBiasJobDefinition where
  toJSON CreateModelBiasJobDefinition' {..} =
    object
      ( catMaybes
          [ ("NetworkConfig" .=) <$> _cmbjdNetworkConfig,
            ("ModelBiasBaselineConfig" .=)
              <$> _cmbjdModelBiasBaselineConfig,
            ("Tags" .=) <$> _cmbjdTags,
            ("StoppingCondition" .=) <$> _cmbjdStoppingCondition,
            Just
              ("JobDefinitionName" .= _cmbjdJobDefinitionName),
            Just
              ( "ModelBiasAppSpecification"
                  .= _cmbjdModelBiasAppSpecification
              ),
            Just
              ("ModelBiasJobInput" .= _cmbjdModelBiasJobInput),
            Just
              ( "ModelBiasJobOutputConfig"
                  .= _cmbjdModelBiasJobOutputConfig
              ),
            Just ("JobResources" .= _cmbjdJobResources),
            Just ("RoleArn" .= _cmbjdRoleARN)
          ]
      )

instance ToPath CreateModelBiasJobDefinition where
  toPath = const "/"

instance ToQuery CreateModelBiasJobDefinition where
  toQuery = const mempty

-- | /See:/ 'createModelBiasJobDefinitionResponse' smart constructor.
data CreateModelBiasJobDefinitionResponse = CreateModelBiasJobDefinitionResponse'
  { _cmbjdrrsResponseStatus ::
      !Int,
    _cmbjdrrsJobDefinitionARN ::
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

-- | Creates a value of 'CreateModelBiasJobDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmbjdrrsResponseStatus' - -- | The response status code.
--
-- * 'cmbjdrrsJobDefinitionARN' - The Amazon Resource Name (ARN) of the model bias job.
createModelBiasJobDefinitionResponse ::
  -- | 'cmbjdrrsResponseStatus'
  Int ->
  -- | 'cmbjdrrsJobDefinitionARN'
  Text ->
  CreateModelBiasJobDefinitionResponse
createModelBiasJobDefinitionResponse
  pResponseStatus_
  pJobDefinitionARN_ =
    CreateModelBiasJobDefinitionResponse'
      { _cmbjdrrsResponseStatus =
          pResponseStatus_,
        _cmbjdrrsJobDefinitionARN =
          pJobDefinitionARN_
      }

-- | -- | The response status code.
cmbjdrrsResponseStatus :: Lens' CreateModelBiasJobDefinitionResponse Int
cmbjdrrsResponseStatus = lens _cmbjdrrsResponseStatus (\s a -> s {_cmbjdrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the model bias job.
cmbjdrrsJobDefinitionARN :: Lens' CreateModelBiasJobDefinitionResponse Text
cmbjdrrsJobDefinitionARN = lens _cmbjdrrsJobDefinitionARN (\s a -> s {_cmbjdrrsJobDefinitionARN = a})

instance NFData CreateModelBiasJobDefinitionResponse
