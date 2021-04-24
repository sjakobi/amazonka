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
-- Module      : Network.AWS.SageMaker.DescribeModelExplainabilityJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of a model explainability job definition.
module Network.AWS.SageMaker.DescribeModelExplainabilityJobDefinition
  ( -- * Creating a Request
    describeModelExplainabilityJobDefinition,
    DescribeModelExplainabilityJobDefinition,

    -- * Request Lenses
    dmejdmJobDefinitionName,

    -- * Destructuring the Response
    describeModelExplainabilityJobDefinitionResponse,
    DescribeModelExplainabilityJobDefinitionResponse,

    -- * Response Lenses
    dmejdrrsNetworkConfig,
    dmejdrrsModelExplainabilityBaselineConfig,
    dmejdrrsStoppingCondition,
    dmejdrrsResponseStatus,
    dmejdrrsJobDefinitionARN,
    dmejdrrsJobDefinitionName,
    dmejdrrsCreationTime,
    dmejdrrsModelExplainabilityAppSpecification,
    dmejdrrsModelExplainabilityJobInput,
    dmejdrrsModelExplainabilityJobOutputConfig,
    dmejdrrsJobResources,
    dmejdrrsRoleARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeModelExplainabilityJobDefinition' smart constructor.
newtype DescribeModelExplainabilityJobDefinition = DescribeModelExplainabilityJobDefinition'
  { _dmejdmJobDefinitionName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeModelExplainabilityJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmejdmJobDefinitionName' - The name of the model explainability job definition. The name must be unique within an AWS Region in the AWS account.
describeModelExplainabilityJobDefinition ::
  -- | 'dmejdmJobDefinitionName'
  Text ->
  DescribeModelExplainabilityJobDefinition
describeModelExplainabilityJobDefinition
  pJobDefinitionName_ =
    DescribeModelExplainabilityJobDefinition'
      { _dmejdmJobDefinitionName =
          pJobDefinitionName_
      }

-- | The name of the model explainability job definition. The name must be unique within an AWS Region in the AWS account.
dmejdmJobDefinitionName :: Lens' DescribeModelExplainabilityJobDefinition Text
dmejdmJobDefinitionName = lens _dmejdmJobDefinitionName (\s a -> s {_dmejdmJobDefinitionName = a})

instance
  AWSRequest
    DescribeModelExplainabilityJobDefinition
  where
  type
    Rs DescribeModelExplainabilityJobDefinition =
      DescribeModelExplainabilityJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeModelExplainabilityJobDefinitionResponse'
            <$> (x .?> "NetworkConfig")
            <*> (x .?> "ModelExplainabilityBaselineConfig")
            <*> (x .?> "StoppingCondition")
            <*> (pure (fromEnum s))
            <*> (x .:> "JobDefinitionArn")
            <*> (x .:> "JobDefinitionName")
            <*> (x .:> "CreationTime")
            <*> (x .:> "ModelExplainabilityAppSpecification")
            <*> (x .:> "ModelExplainabilityJobInput")
            <*> (x .:> "ModelExplainabilityJobOutputConfig")
            <*> (x .:> "JobResources")
            <*> (x .:> "RoleArn")
      )

instance
  Hashable
    DescribeModelExplainabilityJobDefinition

instance
  NFData
    DescribeModelExplainabilityJobDefinition

instance
  ToHeaders
    DescribeModelExplainabilityJobDefinition
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribeModelExplainabilityJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeModelExplainabilityJobDefinition
  where
  toJSON DescribeModelExplainabilityJobDefinition' {..} =
    object
      ( catMaybes
          [ Just
              ("JobDefinitionName" .= _dmejdmJobDefinitionName)
          ]
      )

instance
  ToPath
    DescribeModelExplainabilityJobDefinition
  where
  toPath = const "/"

instance
  ToQuery
    DescribeModelExplainabilityJobDefinition
  where
  toQuery = const mempty

-- | /See:/ 'describeModelExplainabilityJobDefinitionResponse' smart constructor.
data DescribeModelExplainabilityJobDefinitionResponse = DescribeModelExplainabilityJobDefinitionResponse'
  { _dmejdrrsNetworkConfig ::
      !( Maybe
           MonitoringNetworkConfig
       ),
    _dmejdrrsModelExplainabilityBaselineConfig ::
      !( Maybe
           ModelExplainabilityBaselineConfig
       ),
    _dmejdrrsStoppingCondition ::
      !( Maybe
           MonitoringStoppingCondition
       ),
    _dmejdrrsResponseStatus ::
      !Int,
    _dmejdrrsJobDefinitionARN ::
      !Text,
    _dmejdrrsJobDefinitionName ::
      !Text,
    _dmejdrrsCreationTime ::
      !POSIX,
    _dmejdrrsModelExplainabilityAppSpecification ::
      !ModelExplainabilityAppSpecification,
    _dmejdrrsModelExplainabilityJobInput ::
      !ModelExplainabilityJobInput,
    _dmejdrrsModelExplainabilityJobOutputConfig ::
      !MonitoringOutputConfig,
    _dmejdrrsJobResources ::
      !MonitoringResources,
    _dmejdrrsRoleARN ::
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

-- | Creates a value of 'DescribeModelExplainabilityJobDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmejdrrsNetworkConfig' - Networking options for a model explainability job.
--
-- * 'dmejdrrsModelExplainabilityBaselineConfig' - The baseline configuration for a model explainability job.
--
-- * 'dmejdrrsStoppingCondition' - Undocumented member.
--
-- * 'dmejdrrsResponseStatus' - -- | The response status code.
--
-- * 'dmejdrrsJobDefinitionARN' - The Amazon Resource Name (ARN) of the model explainability job.
--
-- * 'dmejdrrsJobDefinitionName' - The name of the explainability job definition. The name must be unique within an AWS Region in the AWS account.
--
-- * 'dmejdrrsCreationTime' - The time at which the model explainability job was created.
--
-- * 'dmejdrrsModelExplainabilityAppSpecification' - Configures the model explainability job to run a specified Docker container image.
--
-- * 'dmejdrrsModelExplainabilityJobInput' - Inputs for the model explainability job.
--
-- * 'dmejdrrsModelExplainabilityJobOutputConfig' - Undocumented member.
--
-- * 'dmejdrrsJobResources' - Undocumented member.
--
-- * 'dmejdrrsRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that has read permission to the input data location and write permission to the output data location in Amazon S3.
describeModelExplainabilityJobDefinitionResponse ::
  -- | 'dmejdrrsResponseStatus'
  Int ->
  -- | 'dmejdrrsJobDefinitionARN'
  Text ->
  -- | 'dmejdrrsJobDefinitionName'
  Text ->
  -- | 'dmejdrrsCreationTime'
  UTCTime ->
  -- | 'dmejdrrsModelExplainabilityAppSpecification'
  ModelExplainabilityAppSpecification ->
  -- | 'dmejdrrsModelExplainabilityJobInput'
  ModelExplainabilityJobInput ->
  -- | 'dmejdrrsModelExplainabilityJobOutputConfig'
  MonitoringOutputConfig ->
  -- | 'dmejdrrsJobResources'
  MonitoringResources ->
  -- | 'dmejdrrsRoleARN'
  Text ->
  DescribeModelExplainabilityJobDefinitionResponse
describeModelExplainabilityJobDefinitionResponse
  pResponseStatus_
  pJobDefinitionARN_
  pJobDefinitionName_
  pCreationTime_
  pModelExplainabilityAppSpecification_
  pModelExplainabilityJobInput_
  pModelExplainabilityJobOutputConfig_
  pJobResources_
  pRoleARN_ =
    DescribeModelExplainabilityJobDefinitionResponse'
      { _dmejdrrsNetworkConfig =
          Nothing,
        _dmejdrrsModelExplainabilityBaselineConfig =
          Nothing,
        _dmejdrrsStoppingCondition =
          Nothing,
        _dmejdrrsResponseStatus =
          pResponseStatus_,
        _dmejdrrsJobDefinitionARN =
          pJobDefinitionARN_,
        _dmejdrrsJobDefinitionName =
          pJobDefinitionName_,
        _dmejdrrsCreationTime =
          _Time # pCreationTime_,
        _dmejdrrsModelExplainabilityAppSpecification =
          pModelExplainabilityAppSpecification_,
        _dmejdrrsModelExplainabilityJobInput =
          pModelExplainabilityJobInput_,
        _dmejdrrsModelExplainabilityJobOutputConfig =
          pModelExplainabilityJobOutputConfig_,
        _dmejdrrsJobResources =
          pJobResources_,
        _dmejdrrsRoleARN =
          pRoleARN_
      }

-- | Networking options for a model explainability job.
dmejdrrsNetworkConfig :: Lens' DescribeModelExplainabilityJobDefinitionResponse (Maybe MonitoringNetworkConfig)
dmejdrrsNetworkConfig = lens _dmejdrrsNetworkConfig (\s a -> s {_dmejdrrsNetworkConfig = a})

-- | The baseline configuration for a model explainability job.
dmejdrrsModelExplainabilityBaselineConfig :: Lens' DescribeModelExplainabilityJobDefinitionResponse (Maybe ModelExplainabilityBaselineConfig)
dmejdrrsModelExplainabilityBaselineConfig = lens _dmejdrrsModelExplainabilityBaselineConfig (\s a -> s {_dmejdrrsModelExplainabilityBaselineConfig = a})

-- | Undocumented member.
dmejdrrsStoppingCondition :: Lens' DescribeModelExplainabilityJobDefinitionResponse (Maybe MonitoringStoppingCondition)
dmejdrrsStoppingCondition = lens _dmejdrrsStoppingCondition (\s a -> s {_dmejdrrsStoppingCondition = a})

-- | -- | The response status code.
dmejdrrsResponseStatus :: Lens' DescribeModelExplainabilityJobDefinitionResponse Int
dmejdrrsResponseStatus = lens _dmejdrrsResponseStatus (\s a -> s {_dmejdrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the model explainability job.
dmejdrrsJobDefinitionARN :: Lens' DescribeModelExplainabilityJobDefinitionResponse Text
dmejdrrsJobDefinitionARN = lens _dmejdrrsJobDefinitionARN (\s a -> s {_dmejdrrsJobDefinitionARN = a})

-- | The name of the explainability job definition. The name must be unique within an AWS Region in the AWS account.
dmejdrrsJobDefinitionName :: Lens' DescribeModelExplainabilityJobDefinitionResponse Text
dmejdrrsJobDefinitionName = lens _dmejdrrsJobDefinitionName (\s a -> s {_dmejdrrsJobDefinitionName = a})

-- | The time at which the model explainability job was created.
dmejdrrsCreationTime :: Lens' DescribeModelExplainabilityJobDefinitionResponse UTCTime
dmejdrrsCreationTime = lens _dmejdrrsCreationTime (\s a -> s {_dmejdrrsCreationTime = a}) . _Time

-- | Configures the model explainability job to run a specified Docker container image.
dmejdrrsModelExplainabilityAppSpecification :: Lens' DescribeModelExplainabilityJobDefinitionResponse ModelExplainabilityAppSpecification
dmejdrrsModelExplainabilityAppSpecification = lens _dmejdrrsModelExplainabilityAppSpecification (\s a -> s {_dmejdrrsModelExplainabilityAppSpecification = a})

-- | Inputs for the model explainability job.
dmejdrrsModelExplainabilityJobInput :: Lens' DescribeModelExplainabilityJobDefinitionResponse ModelExplainabilityJobInput
dmejdrrsModelExplainabilityJobInput = lens _dmejdrrsModelExplainabilityJobInput (\s a -> s {_dmejdrrsModelExplainabilityJobInput = a})

-- | Undocumented member.
dmejdrrsModelExplainabilityJobOutputConfig :: Lens' DescribeModelExplainabilityJobDefinitionResponse MonitoringOutputConfig
dmejdrrsModelExplainabilityJobOutputConfig = lens _dmejdrrsModelExplainabilityJobOutputConfig (\s a -> s {_dmejdrrsModelExplainabilityJobOutputConfig = a})

-- | Undocumented member.
dmejdrrsJobResources :: Lens' DescribeModelExplainabilityJobDefinitionResponse MonitoringResources
dmejdrrsJobResources = lens _dmejdrrsJobResources (\s a -> s {_dmejdrrsJobResources = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that has read permission to the input data location and write permission to the output data location in Amazon S3.
dmejdrrsRoleARN :: Lens' DescribeModelExplainabilityJobDefinitionResponse Text
dmejdrrsRoleARN = lens _dmejdrrsRoleARN (\s a -> s {_dmejdrrsRoleARN = a})

instance
  NFData
    DescribeModelExplainabilityJobDefinitionResponse
