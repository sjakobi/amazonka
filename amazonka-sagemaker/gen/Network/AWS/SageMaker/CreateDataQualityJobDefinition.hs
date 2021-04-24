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
-- Module      : Network.AWS.SageMaker.CreateDataQualityJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a definition for a job that monitors data quality and drift. For information about model monitor, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html Amazon SageMaker Model Monitor> .
module Network.AWS.SageMaker.CreateDataQualityJobDefinition
  ( -- * Creating a Request
    createDataQualityJobDefinition,
    CreateDataQualityJobDefinition,

    -- * Request Lenses
    cdqjdNetworkConfig,
    cdqjdDataQualityBaselineConfig,
    cdqjdTags,
    cdqjdStoppingCondition,
    cdqjdJobDefinitionName,
    cdqjdDataQualityAppSpecification,
    cdqjdDataQualityJobInput,
    cdqjdDataQualityJobOutputConfig,
    cdqjdJobResources,
    cdqjdRoleARN,

    -- * Destructuring the Response
    createDataQualityJobDefinitionResponse,
    CreateDataQualityJobDefinitionResponse,

    -- * Response Lenses
    cdqjdrrsResponseStatus,
    cdqjdrrsJobDefinitionARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createDataQualityJobDefinition' smart constructor.
data CreateDataQualityJobDefinition = CreateDataQualityJobDefinition'
  { _cdqjdNetworkConfig ::
      !( Maybe
           MonitoringNetworkConfig
       ),
    _cdqjdDataQualityBaselineConfig ::
      !( Maybe
           DataQualityBaselineConfig
       ),
    _cdqjdTags ::
      !( Maybe
           [Tag]
       ),
    _cdqjdStoppingCondition ::
      !( Maybe
           MonitoringStoppingCondition
       ),
    _cdqjdJobDefinitionName ::
      !Text,
    _cdqjdDataQualityAppSpecification ::
      !DataQualityAppSpecification,
    _cdqjdDataQualityJobInput ::
      !DataQualityJobInput,
    _cdqjdDataQualityJobOutputConfig ::
      !MonitoringOutputConfig,
    _cdqjdJobResources ::
      !MonitoringResources,
    _cdqjdRoleARN ::
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

-- | Creates a value of 'CreateDataQualityJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdqjdNetworkConfig' - Specifies networking configuration for the monitoring job.
--
-- * 'cdqjdDataQualityBaselineConfig' - Configures the constraints and baselines for the monitoring job.
--
-- * 'cdqjdTags' - (Optional) An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- * 'cdqjdStoppingCondition' - Undocumented member.
--
-- * 'cdqjdJobDefinitionName' - The name for the monitoring job definition.
--
-- * 'cdqjdDataQualityAppSpecification' - Specifies the container that runs the monitoring job.
--
-- * 'cdqjdDataQualityJobInput' - A list of inputs for the monitoring job. Currently endpoints are supported as monitoring inputs.
--
-- * 'cdqjdDataQualityJobOutputConfig' - Undocumented member.
--
-- * 'cdqjdJobResources' - Undocumented member.
--
-- * 'cdqjdRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
createDataQualityJobDefinition ::
  -- | 'cdqjdJobDefinitionName'
  Text ->
  -- | 'cdqjdDataQualityAppSpecification'
  DataQualityAppSpecification ->
  -- | 'cdqjdDataQualityJobInput'
  DataQualityJobInput ->
  -- | 'cdqjdDataQualityJobOutputConfig'
  MonitoringOutputConfig ->
  -- | 'cdqjdJobResources'
  MonitoringResources ->
  -- | 'cdqjdRoleARN'
  Text ->
  CreateDataQualityJobDefinition
createDataQualityJobDefinition
  pJobDefinitionName_
  pDataQualityAppSpecification_
  pDataQualityJobInput_
  pDataQualityJobOutputConfig_
  pJobResources_
  pRoleARN_ =
    CreateDataQualityJobDefinition'
      { _cdqjdNetworkConfig =
          Nothing,
        _cdqjdDataQualityBaselineConfig = Nothing,
        _cdqjdTags = Nothing,
        _cdqjdStoppingCondition = Nothing,
        _cdqjdJobDefinitionName =
          pJobDefinitionName_,
        _cdqjdDataQualityAppSpecification =
          pDataQualityAppSpecification_,
        _cdqjdDataQualityJobInput =
          pDataQualityJobInput_,
        _cdqjdDataQualityJobOutputConfig =
          pDataQualityJobOutputConfig_,
        _cdqjdJobResources = pJobResources_,
        _cdqjdRoleARN = pRoleARN_
      }

-- | Specifies networking configuration for the monitoring job.
cdqjdNetworkConfig :: Lens' CreateDataQualityJobDefinition (Maybe MonitoringNetworkConfig)
cdqjdNetworkConfig = lens _cdqjdNetworkConfig (\s a -> s {_cdqjdNetworkConfig = a})

-- | Configures the constraints and baselines for the monitoring job.
cdqjdDataQualityBaselineConfig :: Lens' CreateDataQualityJobDefinition (Maybe DataQualityBaselineConfig)
cdqjdDataQualityBaselineConfig = lens _cdqjdDataQualityBaselineConfig (\s a -> s {_cdqjdDataQualityBaselineConfig = a})

-- | (Optional) An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
cdqjdTags :: Lens' CreateDataQualityJobDefinition [Tag]
cdqjdTags = lens _cdqjdTags (\s a -> s {_cdqjdTags = a}) . _Default . _Coerce

-- | Undocumented member.
cdqjdStoppingCondition :: Lens' CreateDataQualityJobDefinition (Maybe MonitoringStoppingCondition)
cdqjdStoppingCondition = lens _cdqjdStoppingCondition (\s a -> s {_cdqjdStoppingCondition = a})

-- | The name for the monitoring job definition.
cdqjdJobDefinitionName :: Lens' CreateDataQualityJobDefinition Text
cdqjdJobDefinitionName = lens _cdqjdJobDefinitionName (\s a -> s {_cdqjdJobDefinitionName = a})

-- | Specifies the container that runs the monitoring job.
cdqjdDataQualityAppSpecification :: Lens' CreateDataQualityJobDefinition DataQualityAppSpecification
cdqjdDataQualityAppSpecification = lens _cdqjdDataQualityAppSpecification (\s a -> s {_cdqjdDataQualityAppSpecification = a})

-- | A list of inputs for the monitoring job. Currently endpoints are supported as monitoring inputs.
cdqjdDataQualityJobInput :: Lens' CreateDataQualityJobDefinition DataQualityJobInput
cdqjdDataQualityJobInput = lens _cdqjdDataQualityJobInput (\s a -> s {_cdqjdDataQualityJobInput = a})

-- | Undocumented member.
cdqjdDataQualityJobOutputConfig :: Lens' CreateDataQualityJobDefinition MonitoringOutputConfig
cdqjdDataQualityJobOutputConfig = lens _cdqjdDataQualityJobOutputConfig (\s a -> s {_cdqjdDataQualityJobOutputConfig = a})

-- | Undocumented member.
cdqjdJobResources :: Lens' CreateDataQualityJobDefinition MonitoringResources
cdqjdJobResources = lens _cdqjdJobResources (\s a -> s {_cdqjdJobResources = a})

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
cdqjdRoleARN :: Lens' CreateDataQualityJobDefinition Text
cdqjdRoleARN = lens _cdqjdRoleARN (\s a -> s {_cdqjdRoleARN = a})

instance AWSRequest CreateDataQualityJobDefinition where
  type
    Rs CreateDataQualityJobDefinition =
      CreateDataQualityJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateDataQualityJobDefinitionResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "JobDefinitionArn")
      )

instance Hashable CreateDataQualityJobDefinition

instance NFData CreateDataQualityJobDefinition

instance ToHeaders CreateDataQualityJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.CreateDataQualityJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDataQualityJobDefinition where
  toJSON CreateDataQualityJobDefinition' {..} =
    object
      ( catMaybes
          [ ("NetworkConfig" .=) <$> _cdqjdNetworkConfig,
            ("DataQualityBaselineConfig" .=)
              <$> _cdqjdDataQualityBaselineConfig,
            ("Tags" .=) <$> _cdqjdTags,
            ("StoppingCondition" .=) <$> _cdqjdStoppingCondition,
            Just
              ("JobDefinitionName" .= _cdqjdJobDefinitionName),
            Just
              ( "DataQualityAppSpecification"
                  .= _cdqjdDataQualityAppSpecification
              ),
            Just
              ("DataQualityJobInput" .= _cdqjdDataQualityJobInput),
            Just
              ( "DataQualityJobOutputConfig"
                  .= _cdqjdDataQualityJobOutputConfig
              ),
            Just ("JobResources" .= _cdqjdJobResources),
            Just ("RoleArn" .= _cdqjdRoleARN)
          ]
      )

instance ToPath CreateDataQualityJobDefinition where
  toPath = const "/"

instance ToQuery CreateDataQualityJobDefinition where
  toQuery = const mempty

-- | /See:/ 'createDataQualityJobDefinitionResponse' smart constructor.
data CreateDataQualityJobDefinitionResponse = CreateDataQualityJobDefinitionResponse'
  { _cdqjdrrsResponseStatus ::
      !Int,
    _cdqjdrrsJobDefinitionARN ::
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

-- | Creates a value of 'CreateDataQualityJobDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdqjdrrsResponseStatus' - -- | The response status code.
--
-- * 'cdqjdrrsJobDefinitionARN' - The Amazon Resource Name (ARN) of the job definition.
createDataQualityJobDefinitionResponse ::
  -- | 'cdqjdrrsResponseStatus'
  Int ->
  -- | 'cdqjdrrsJobDefinitionARN'
  Text ->
  CreateDataQualityJobDefinitionResponse
createDataQualityJobDefinitionResponse
  pResponseStatus_
  pJobDefinitionARN_ =
    CreateDataQualityJobDefinitionResponse'
      { _cdqjdrrsResponseStatus =
          pResponseStatus_,
        _cdqjdrrsJobDefinitionARN =
          pJobDefinitionARN_
      }

-- | -- | The response status code.
cdqjdrrsResponseStatus :: Lens' CreateDataQualityJobDefinitionResponse Int
cdqjdrrsResponseStatus = lens _cdqjdrrsResponseStatus (\s a -> s {_cdqjdrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the job definition.
cdqjdrrsJobDefinitionARN :: Lens' CreateDataQualityJobDefinitionResponse Text
cdqjdrrsJobDefinitionARN = lens _cdqjdrrsJobDefinitionARN (\s a -> s {_cdqjdrrsJobDefinitionARN = a})

instance
  NFData
    CreateDataQualityJobDefinitionResponse
