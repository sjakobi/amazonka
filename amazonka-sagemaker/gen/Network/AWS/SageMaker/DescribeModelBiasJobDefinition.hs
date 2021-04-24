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
-- Module      : Network.AWS.SageMaker.DescribeModelBiasJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of a model bias job definition.
module Network.AWS.SageMaker.DescribeModelBiasJobDefinition
  ( -- * Creating a Request
    describeModelBiasJobDefinition,
    DescribeModelBiasJobDefinition,

    -- * Request Lenses
    desJobDefinitionName,

    -- * Destructuring the Response
    describeModelBiasJobDefinitionResponse,
    DescribeModelBiasJobDefinitionResponse,

    -- * Response Lenses
    dmbjdrrsNetworkConfig,
    dmbjdrrsModelBiasBaselineConfig,
    dmbjdrrsStoppingCondition,
    dmbjdrrsResponseStatus,
    dmbjdrrsJobDefinitionARN,
    dmbjdrrsJobDefinitionName,
    dmbjdrrsCreationTime,
    dmbjdrrsModelBiasAppSpecification,
    dmbjdrrsModelBiasJobInput,
    dmbjdrrsModelBiasJobOutputConfig,
    dmbjdrrsJobResources,
    dmbjdrrsRoleARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeModelBiasJobDefinition' smart constructor.
newtype DescribeModelBiasJobDefinition = DescribeModelBiasJobDefinition'
  { _desJobDefinitionName ::
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

-- | Creates a value of 'DescribeModelBiasJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desJobDefinitionName' - The name of the model bias job definition. The name must be unique within an AWS Region in the AWS account.
describeModelBiasJobDefinition ::
  -- | 'desJobDefinitionName'
  Text ->
  DescribeModelBiasJobDefinition
describeModelBiasJobDefinition pJobDefinitionName_ =
  DescribeModelBiasJobDefinition'
    { _desJobDefinitionName =
        pJobDefinitionName_
    }

-- | The name of the model bias job definition. The name must be unique within an AWS Region in the AWS account.
desJobDefinitionName :: Lens' DescribeModelBiasJobDefinition Text
desJobDefinitionName = lens _desJobDefinitionName (\s a -> s {_desJobDefinitionName = a})

instance AWSRequest DescribeModelBiasJobDefinition where
  type
    Rs DescribeModelBiasJobDefinition =
      DescribeModelBiasJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeModelBiasJobDefinitionResponse'
            <$> (x .?> "NetworkConfig")
            <*> (x .?> "ModelBiasBaselineConfig")
            <*> (x .?> "StoppingCondition")
            <*> (pure (fromEnum s))
            <*> (x .:> "JobDefinitionArn")
            <*> (x .:> "JobDefinitionName")
            <*> (x .:> "CreationTime")
            <*> (x .:> "ModelBiasAppSpecification")
            <*> (x .:> "ModelBiasJobInput")
            <*> (x .:> "ModelBiasJobOutputConfig")
            <*> (x .:> "JobResources")
            <*> (x .:> "RoleArn")
      )

instance Hashable DescribeModelBiasJobDefinition

instance NFData DescribeModelBiasJobDefinition

instance ToHeaders DescribeModelBiasJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribeModelBiasJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeModelBiasJobDefinition where
  toJSON DescribeModelBiasJobDefinition' {..} =
    object
      ( catMaybes
          [ Just
              ("JobDefinitionName" .= _desJobDefinitionName)
          ]
      )

instance ToPath DescribeModelBiasJobDefinition where
  toPath = const "/"

instance ToQuery DescribeModelBiasJobDefinition where
  toQuery = const mempty

-- | /See:/ 'describeModelBiasJobDefinitionResponse' smart constructor.
data DescribeModelBiasJobDefinitionResponse = DescribeModelBiasJobDefinitionResponse'
  { _dmbjdrrsNetworkConfig ::
      !( Maybe
           MonitoringNetworkConfig
       ),
    _dmbjdrrsModelBiasBaselineConfig ::
      !( Maybe
           ModelBiasBaselineConfig
       ),
    _dmbjdrrsStoppingCondition ::
      !( Maybe
           MonitoringStoppingCondition
       ),
    _dmbjdrrsResponseStatus ::
      !Int,
    _dmbjdrrsJobDefinitionARN ::
      !Text,
    _dmbjdrrsJobDefinitionName ::
      !Text,
    _dmbjdrrsCreationTime ::
      !POSIX,
    _dmbjdrrsModelBiasAppSpecification ::
      !ModelBiasAppSpecification,
    _dmbjdrrsModelBiasJobInput ::
      !ModelBiasJobInput,
    _dmbjdrrsModelBiasJobOutputConfig ::
      !MonitoringOutputConfig,
    _dmbjdrrsJobResources ::
      !MonitoringResources,
    _dmbjdrrsRoleARN ::
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

-- | Creates a value of 'DescribeModelBiasJobDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmbjdrrsNetworkConfig' - Networking options for a model bias job.
--
-- * 'dmbjdrrsModelBiasBaselineConfig' - The baseline configuration for a model bias job.
--
-- * 'dmbjdrrsStoppingCondition' - Undocumented member.
--
-- * 'dmbjdrrsResponseStatus' - -- | The response status code.
--
-- * 'dmbjdrrsJobDefinitionARN' - The Amazon Resource Name (ARN) of the model bias job.
--
-- * 'dmbjdrrsJobDefinitionName' - The name of the bias job definition. The name must be unique within an AWS Region in the AWS account.
--
-- * 'dmbjdrrsCreationTime' - The time at which the model bias job was created.
--
-- * 'dmbjdrrsModelBiasAppSpecification' - Configures the model bias job to run a specified Docker container image.
--
-- * 'dmbjdrrsModelBiasJobInput' - Inputs for the model bias job.
--
-- * 'dmbjdrrsModelBiasJobOutputConfig' - Undocumented member.
--
-- * 'dmbjdrrsJobResources' - Undocumented member.
--
-- * 'dmbjdrrsRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that has read permission to the input data location and write permission to the output data location in Amazon S3.
describeModelBiasJobDefinitionResponse ::
  -- | 'dmbjdrrsResponseStatus'
  Int ->
  -- | 'dmbjdrrsJobDefinitionARN'
  Text ->
  -- | 'dmbjdrrsJobDefinitionName'
  Text ->
  -- | 'dmbjdrrsCreationTime'
  UTCTime ->
  -- | 'dmbjdrrsModelBiasAppSpecification'
  ModelBiasAppSpecification ->
  -- | 'dmbjdrrsModelBiasJobInput'
  ModelBiasJobInput ->
  -- | 'dmbjdrrsModelBiasJobOutputConfig'
  MonitoringOutputConfig ->
  -- | 'dmbjdrrsJobResources'
  MonitoringResources ->
  -- | 'dmbjdrrsRoleARN'
  Text ->
  DescribeModelBiasJobDefinitionResponse
describeModelBiasJobDefinitionResponse
  pResponseStatus_
  pJobDefinitionARN_
  pJobDefinitionName_
  pCreationTime_
  pModelBiasAppSpecification_
  pModelBiasJobInput_
  pModelBiasJobOutputConfig_
  pJobResources_
  pRoleARN_ =
    DescribeModelBiasJobDefinitionResponse'
      { _dmbjdrrsNetworkConfig =
          Nothing,
        _dmbjdrrsModelBiasBaselineConfig =
          Nothing,
        _dmbjdrrsStoppingCondition =
          Nothing,
        _dmbjdrrsResponseStatus =
          pResponseStatus_,
        _dmbjdrrsJobDefinitionARN =
          pJobDefinitionARN_,
        _dmbjdrrsJobDefinitionName =
          pJobDefinitionName_,
        _dmbjdrrsCreationTime =
          _Time # pCreationTime_,
        _dmbjdrrsModelBiasAppSpecification =
          pModelBiasAppSpecification_,
        _dmbjdrrsModelBiasJobInput =
          pModelBiasJobInput_,
        _dmbjdrrsModelBiasJobOutputConfig =
          pModelBiasJobOutputConfig_,
        _dmbjdrrsJobResources =
          pJobResources_,
        _dmbjdrrsRoleARN = pRoleARN_
      }

-- | Networking options for a model bias job.
dmbjdrrsNetworkConfig :: Lens' DescribeModelBiasJobDefinitionResponse (Maybe MonitoringNetworkConfig)
dmbjdrrsNetworkConfig = lens _dmbjdrrsNetworkConfig (\s a -> s {_dmbjdrrsNetworkConfig = a})

-- | The baseline configuration for a model bias job.
dmbjdrrsModelBiasBaselineConfig :: Lens' DescribeModelBiasJobDefinitionResponse (Maybe ModelBiasBaselineConfig)
dmbjdrrsModelBiasBaselineConfig = lens _dmbjdrrsModelBiasBaselineConfig (\s a -> s {_dmbjdrrsModelBiasBaselineConfig = a})

-- | Undocumented member.
dmbjdrrsStoppingCondition :: Lens' DescribeModelBiasJobDefinitionResponse (Maybe MonitoringStoppingCondition)
dmbjdrrsStoppingCondition = lens _dmbjdrrsStoppingCondition (\s a -> s {_dmbjdrrsStoppingCondition = a})

-- | -- | The response status code.
dmbjdrrsResponseStatus :: Lens' DescribeModelBiasJobDefinitionResponse Int
dmbjdrrsResponseStatus = lens _dmbjdrrsResponseStatus (\s a -> s {_dmbjdrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the model bias job.
dmbjdrrsJobDefinitionARN :: Lens' DescribeModelBiasJobDefinitionResponse Text
dmbjdrrsJobDefinitionARN = lens _dmbjdrrsJobDefinitionARN (\s a -> s {_dmbjdrrsJobDefinitionARN = a})

-- | The name of the bias job definition. The name must be unique within an AWS Region in the AWS account.
dmbjdrrsJobDefinitionName :: Lens' DescribeModelBiasJobDefinitionResponse Text
dmbjdrrsJobDefinitionName = lens _dmbjdrrsJobDefinitionName (\s a -> s {_dmbjdrrsJobDefinitionName = a})

-- | The time at which the model bias job was created.
dmbjdrrsCreationTime :: Lens' DescribeModelBiasJobDefinitionResponse UTCTime
dmbjdrrsCreationTime = lens _dmbjdrrsCreationTime (\s a -> s {_dmbjdrrsCreationTime = a}) . _Time

-- | Configures the model bias job to run a specified Docker container image.
dmbjdrrsModelBiasAppSpecification :: Lens' DescribeModelBiasJobDefinitionResponse ModelBiasAppSpecification
dmbjdrrsModelBiasAppSpecification = lens _dmbjdrrsModelBiasAppSpecification (\s a -> s {_dmbjdrrsModelBiasAppSpecification = a})

-- | Inputs for the model bias job.
dmbjdrrsModelBiasJobInput :: Lens' DescribeModelBiasJobDefinitionResponse ModelBiasJobInput
dmbjdrrsModelBiasJobInput = lens _dmbjdrrsModelBiasJobInput (\s a -> s {_dmbjdrrsModelBiasJobInput = a})

-- | Undocumented member.
dmbjdrrsModelBiasJobOutputConfig :: Lens' DescribeModelBiasJobDefinitionResponse MonitoringOutputConfig
dmbjdrrsModelBiasJobOutputConfig = lens _dmbjdrrsModelBiasJobOutputConfig (\s a -> s {_dmbjdrrsModelBiasJobOutputConfig = a})

-- | Undocumented member.
dmbjdrrsJobResources :: Lens' DescribeModelBiasJobDefinitionResponse MonitoringResources
dmbjdrrsJobResources = lens _dmbjdrrsJobResources (\s a -> s {_dmbjdrrsJobResources = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that has read permission to the input data location and write permission to the output data location in Amazon S3.
dmbjdrrsRoleARN :: Lens' DescribeModelBiasJobDefinitionResponse Text
dmbjdrrsRoleARN = lens _dmbjdrrsRoleARN (\s a -> s {_dmbjdrrsRoleARN = a})

instance
  NFData
    DescribeModelBiasJobDefinitionResponse
