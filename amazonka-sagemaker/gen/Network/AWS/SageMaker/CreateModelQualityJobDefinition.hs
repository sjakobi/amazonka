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
-- Module      : Network.AWS.SageMaker.CreateModelQualityJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a definition for a job that monitors model quality and drift. For information about model monitor, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html Amazon SageMaker Model Monitor> .
module Network.AWS.SageMaker.CreateModelQualityJobDefinition
  ( -- * Creating a Request
    createModelQualityJobDefinition,
    CreateModelQualityJobDefinition,

    -- * Request Lenses
    cmqjdNetworkConfig,
    cmqjdModelQualityBaselineConfig,
    cmqjdTags,
    cmqjdStoppingCondition,
    cmqjdJobDefinitionName,
    cmqjdModelQualityAppSpecification,
    cmqjdModelQualityJobInput,
    cmqjdModelQualityJobOutputConfig,
    cmqjdJobResources,
    cmqjdRoleARN,

    -- * Destructuring the Response
    createModelQualityJobDefinitionResponse,
    CreateModelQualityJobDefinitionResponse,

    -- * Response Lenses
    cmqjdrrsResponseStatus,
    cmqjdrrsJobDefinitionARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createModelQualityJobDefinition' smart constructor.
data CreateModelQualityJobDefinition = CreateModelQualityJobDefinition'
  { _cmqjdNetworkConfig ::
      !( Maybe
           MonitoringNetworkConfig
       ),
    _cmqjdModelQualityBaselineConfig ::
      !( Maybe
           ModelQualityBaselineConfig
       ),
    _cmqjdTags ::
      !( Maybe
           [Tag]
       ),
    _cmqjdStoppingCondition ::
      !( Maybe
           MonitoringStoppingCondition
       ),
    _cmqjdJobDefinitionName ::
      !Text,
    _cmqjdModelQualityAppSpecification ::
      !ModelQualityAppSpecification,
    _cmqjdModelQualityJobInput ::
      !ModelQualityJobInput,
    _cmqjdModelQualityJobOutputConfig ::
      !MonitoringOutputConfig,
    _cmqjdJobResources ::
      !MonitoringResources,
    _cmqjdRoleARN ::
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

-- | Creates a value of 'CreateModelQualityJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmqjdNetworkConfig' - Specifies the network configuration for the monitoring job.
--
-- * 'cmqjdModelQualityBaselineConfig' - Specifies the constraints and baselines for the monitoring job.
--
-- * 'cmqjdTags' - (Optional) An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- * 'cmqjdStoppingCondition' - Undocumented member.
--
-- * 'cmqjdJobDefinitionName' - The name of the monitoring job definition.
--
-- * 'cmqjdModelQualityAppSpecification' - The container that runs the monitoring job.
--
-- * 'cmqjdModelQualityJobInput' - A list of the inputs that are monitored. Currently endpoints are supported.
--
-- * 'cmqjdModelQualityJobOutputConfig' - Undocumented member.
--
-- * 'cmqjdJobResources' - Undocumented member.
--
-- * 'cmqjdRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
createModelQualityJobDefinition ::
  -- | 'cmqjdJobDefinitionName'
  Text ->
  -- | 'cmqjdModelQualityAppSpecification'
  ModelQualityAppSpecification ->
  -- | 'cmqjdModelQualityJobInput'
  ModelQualityJobInput ->
  -- | 'cmqjdModelQualityJobOutputConfig'
  MonitoringOutputConfig ->
  -- | 'cmqjdJobResources'
  MonitoringResources ->
  -- | 'cmqjdRoleARN'
  Text ->
  CreateModelQualityJobDefinition
createModelQualityJobDefinition
  pJobDefinitionName_
  pModelQualityAppSpecification_
  pModelQualityJobInput_
  pModelQualityJobOutputConfig_
  pJobResources_
  pRoleARN_ =
    CreateModelQualityJobDefinition'
      { _cmqjdNetworkConfig =
          Nothing,
        _cmqjdModelQualityBaselineConfig = Nothing,
        _cmqjdTags = Nothing,
        _cmqjdStoppingCondition = Nothing,
        _cmqjdJobDefinitionName =
          pJobDefinitionName_,
        _cmqjdModelQualityAppSpecification =
          pModelQualityAppSpecification_,
        _cmqjdModelQualityJobInput =
          pModelQualityJobInput_,
        _cmqjdModelQualityJobOutputConfig =
          pModelQualityJobOutputConfig_,
        _cmqjdJobResources = pJobResources_,
        _cmqjdRoleARN = pRoleARN_
      }

-- | Specifies the network configuration for the monitoring job.
cmqjdNetworkConfig :: Lens' CreateModelQualityJobDefinition (Maybe MonitoringNetworkConfig)
cmqjdNetworkConfig = lens _cmqjdNetworkConfig (\s a -> s {_cmqjdNetworkConfig = a})

-- | Specifies the constraints and baselines for the monitoring job.
cmqjdModelQualityBaselineConfig :: Lens' CreateModelQualityJobDefinition (Maybe ModelQualityBaselineConfig)
cmqjdModelQualityBaselineConfig = lens _cmqjdModelQualityBaselineConfig (\s a -> s {_cmqjdModelQualityBaselineConfig = a})

-- | (Optional) An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
cmqjdTags :: Lens' CreateModelQualityJobDefinition [Tag]
cmqjdTags = lens _cmqjdTags (\s a -> s {_cmqjdTags = a}) . _Default . _Coerce

-- | Undocumented member.
cmqjdStoppingCondition :: Lens' CreateModelQualityJobDefinition (Maybe MonitoringStoppingCondition)
cmqjdStoppingCondition = lens _cmqjdStoppingCondition (\s a -> s {_cmqjdStoppingCondition = a})

-- | The name of the monitoring job definition.
cmqjdJobDefinitionName :: Lens' CreateModelQualityJobDefinition Text
cmqjdJobDefinitionName = lens _cmqjdJobDefinitionName (\s a -> s {_cmqjdJobDefinitionName = a})

-- | The container that runs the monitoring job.
cmqjdModelQualityAppSpecification :: Lens' CreateModelQualityJobDefinition ModelQualityAppSpecification
cmqjdModelQualityAppSpecification = lens _cmqjdModelQualityAppSpecification (\s a -> s {_cmqjdModelQualityAppSpecification = a})

-- | A list of the inputs that are monitored. Currently endpoints are supported.
cmqjdModelQualityJobInput :: Lens' CreateModelQualityJobDefinition ModelQualityJobInput
cmqjdModelQualityJobInput = lens _cmqjdModelQualityJobInput (\s a -> s {_cmqjdModelQualityJobInput = a})

-- | Undocumented member.
cmqjdModelQualityJobOutputConfig :: Lens' CreateModelQualityJobDefinition MonitoringOutputConfig
cmqjdModelQualityJobOutputConfig = lens _cmqjdModelQualityJobOutputConfig (\s a -> s {_cmqjdModelQualityJobOutputConfig = a})

-- | Undocumented member.
cmqjdJobResources :: Lens' CreateModelQualityJobDefinition MonitoringResources
cmqjdJobResources = lens _cmqjdJobResources (\s a -> s {_cmqjdJobResources = a})

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
cmqjdRoleARN :: Lens' CreateModelQualityJobDefinition Text
cmqjdRoleARN = lens _cmqjdRoleARN (\s a -> s {_cmqjdRoleARN = a})

instance AWSRequest CreateModelQualityJobDefinition where
  type
    Rs CreateModelQualityJobDefinition =
      CreateModelQualityJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateModelQualityJobDefinitionResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "JobDefinitionArn")
      )

instance Hashable CreateModelQualityJobDefinition

instance NFData CreateModelQualityJobDefinition

instance ToHeaders CreateModelQualityJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.CreateModelQualityJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateModelQualityJobDefinition where
  toJSON CreateModelQualityJobDefinition' {..} =
    object
      ( catMaybes
          [ ("NetworkConfig" .=) <$> _cmqjdNetworkConfig,
            ("ModelQualityBaselineConfig" .=)
              <$> _cmqjdModelQualityBaselineConfig,
            ("Tags" .=) <$> _cmqjdTags,
            ("StoppingCondition" .=) <$> _cmqjdStoppingCondition,
            Just
              ("JobDefinitionName" .= _cmqjdJobDefinitionName),
            Just
              ( "ModelQualityAppSpecification"
                  .= _cmqjdModelQualityAppSpecification
              ),
            Just
              ( "ModelQualityJobInput"
                  .= _cmqjdModelQualityJobInput
              ),
            Just
              ( "ModelQualityJobOutputConfig"
                  .= _cmqjdModelQualityJobOutputConfig
              ),
            Just ("JobResources" .= _cmqjdJobResources),
            Just ("RoleArn" .= _cmqjdRoleARN)
          ]
      )

instance ToPath CreateModelQualityJobDefinition where
  toPath = const "/"

instance ToQuery CreateModelQualityJobDefinition where
  toQuery = const mempty

-- | /See:/ 'createModelQualityJobDefinitionResponse' smart constructor.
data CreateModelQualityJobDefinitionResponse = CreateModelQualityJobDefinitionResponse'
  { _cmqjdrrsResponseStatus ::
      !Int,
    _cmqjdrrsJobDefinitionARN ::
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

-- | Creates a value of 'CreateModelQualityJobDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmqjdrrsResponseStatus' - -- | The response status code.
--
-- * 'cmqjdrrsJobDefinitionARN' - The Amazon Resource Name (ARN) of the model quality monitoring job.
createModelQualityJobDefinitionResponse ::
  -- | 'cmqjdrrsResponseStatus'
  Int ->
  -- | 'cmqjdrrsJobDefinitionARN'
  Text ->
  CreateModelQualityJobDefinitionResponse
createModelQualityJobDefinitionResponse
  pResponseStatus_
  pJobDefinitionARN_ =
    CreateModelQualityJobDefinitionResponse'
      { _cmqjdrrsResponseStatus =
          pResponseStatus_,
        _cmqjdrrsJobDefinitionARN =
          pJobDefinitionARN_
      }

-- | -- | The response status code.
cmqjdrrsResponseStatus :: Lens' CreateModelQualityJobDefinitionResponse Int
cmqjdrrsResponseStatus = lens _cmqjdrrsResponseStatus (\s a -> s {_cmqjdrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the model quality monitoring job.
cmqjdrrsJobDefinitionARN :: Lens' CreateModelQualityJobDefinitionResponse Text
cmqjdrrsJobDefinitionARN = lens _cmqjdrrsJobDefinitionARN (\s a -> s {_cmqjdrrsJobDefinitionARN = a})

instance
  NFData
    CreateModelQualityJobDefinitionResponse
