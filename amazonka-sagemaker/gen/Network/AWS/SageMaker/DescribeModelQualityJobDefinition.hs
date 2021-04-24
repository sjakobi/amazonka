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
-- Module      : Network.AWS.SageMaker.DescribeModelQualityJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of a model quality job definition.
module Network.AWS.SageMaker.DescribeModelQualityJobDefinition
  ( -- * Creating a Request
    describeModelQualityJobDefinition,
    DescribeModelQualityJobDefinition,

    -- * Request Lenses
    dmqjdJobDefinitionName,

    -- * Destructuring the Response
    describeModelQualityJobDefinitionResponse,
    DescribeModelQualityJobDefinitionResponse,

    -- * Response Lenses
    dmqjdrrsNetworkConfig,
    dmqjdrrsModelQualityBaselineConfig,
    dmqjdrrsStoppingCondition,
    dmqjdrrsResponseStatus,
    dmqjdrrsJobDefinitionARN,
    dmqjdrrsJobDefinitionName,
    dmqjdrrsCreationTime,
    dmqjdrrsModelQualityAppSpecification,
    dmqjdrrsModelQualityJobInput,
    dmqjdrrsModelQualityJobOutputConfig,
    dmqjdrrsJobResources,
    dmqjdrrsRoleARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeModelQualityJobDefinition' smart constructor.
newtype DescribeModelQualityJobDefinition = DescribeModelQualityJobDefinition'
  { _dmqjdJobDefinitionName ::
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

-- | Creates a value of 'DescribeModelQualityJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmqjdJobDefinitionName' - The name of the model quality job. The name must be unique within an AWS Region in the AWS account.
describeModelQualityJobDefinition ::
  -- | 'dmqjdJobDefinitionName'
  Text ->
  DescribeModelQualityJobDefinition
describeModelQualityJobDefinition pJobDefinitionName_ =
  DescribeModelQualityJobDefinition'
    { _dmqjdJobDefinitionName =
        pJobDefinitionName_
    }

-- | The name of the model quality job. The name must be unique within an AWS Region in the AWS account.
dmqjdJobDefinitionName :: Lens' DescribeModelQualityJobDefinition Text
dmqjdJobDefinitionName = lens _dmqjdJobDefinitionName (\s a -> s {_dmqjdJobDefinitionName = a})

instance AWSRequest DescribeModelQualityJobDefinition where
  type
    Rs DescribeModelQualityJobDefinition =
      DescribeModelQualityJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeModelQualityJobDefinitionResponse'
            <$> (x .?> "NetworkConfig")
            <*> (x .?> "ModelQualityBaselineConfig")
            <*> (x .?> "StoppingCondition")
            <*> (pure (fromEnum s))
            <*> (x .:> "JobDefinitionArn")
            <*> (x .:> "JobDefinitionName")
            <*> (x .:> "CreationTime")
            <*> (x .:> "ModelQualityAppSpecification")
            <*> (x .:> "ModelQualityJobInput")
            <*> (x .:> "ModelQualityJobOutputConfig")
            <*> (x .:> "JobResources")
            <*> (x .:> "RoleArn")
      )

instance Hashable DescribeModelQualityJobDefinition

instance NFData DescribeModelQualityJobDefinition

instance ToHeaders DescribeModelQualityJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribeModelQualityJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeModelQualityJobDefinition where
  toJSON DescribeModelQualityJobDefinition' {..} =
    object
      ( catMaybes
          [ Just
              ("JobDefinitionName" .= _dmqjdJobDefinitionName)
          ]
      )

instance ToPath DescribeModelQualityJobDefinition where
  toPath = const "/"

instance ToQuery DescribeModelQualityJobDefinition where
  toQuery = const mempty

-- | /See:/ 'describeModelQualityJobDefinitionResponse' smart constructor.
data DescribeModelQualityJobDefinitionResponse = DescribeModelQualityJobDefinitionResponse'
  { _dmqjdrrsNetworkConfig ::
      !( Maybe
           MonitoringNetworkConfig
       ),
    _dmqjdrrsModelQualityBaselineConfig ::
      !( Maybe
           ModelQualityBaselineConfig
       ),
    _dmqjdrrsStoppingCondition ::
      !( Maybe
           MonitoringStoppingCondition
       ),
    _dmqjdrrsResponseStatus ::
      !Int,
    _dmqjdrrsJobDefinitionARN ::
      !Text,
    _dmqjdrrsJobDefinitionName ::
      !Text,
    _dmqjdrrsCreationTime ::
      !POSIX,
    _dmqjdrrsModelQualityAppSpecification ::
      !ModelQualityAppSpecification,
    _dmqjdrrsModelQualityJobInput ::
      !ModelQualityJobInput,
    _dmqjdrrsModelQualityJobOutputConfig ::
      !MonitoringOutputConfig,
    _dmqjdrrsJobResources ::
      !MonitoringResources,
    _dmqjdrrsRoleARN ::
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

-- | Creates a value of 'DescribeModelQualityJobDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmqjdrrsNetworkConfig' - Networking options for a model quality job.
--
-- * 'dmqjdrrsModelQualityBaselineConfig' - The baseline configuration for a model quality job.
--
-- * 'dmqjdrrsStoppingCondition' - Undocumented member.
--
-- * 'dmqjdrrsResponseStatus' - -- | The response status code.
--
-- * 'dmqjdrrsJobDefinitionARN' - The Amazon Resource Name (ARN) of the model quality job.
--
-- * 'dmqjdrrsJobDefinitionName' - The name of the quality job definition. The name must be unique within an AWS Region in the AWS account.
--
-- * 'dmqjdrrsCreationTime' - The time at which the model quality job was created.
--
-- * 'dmqjdrrsModelQualityAppSpecification' - Configures the model quality job to run a specified Docker container image.
--
-- * 'dmqjdrrsModelQualityJobInput' - Inputs for the model quality job.
--
-- * 'dmqjdrrsModelQualityJobOutputConfig' - Undocumented member.
--
-- * 'dmqjdrrsJobResources' - Undocumented member.
--
-- * 'dmqjdrrsRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
describeModelQualityJobDefinitionResponse ::
  -- | 'dmqjdrrsResponseStatus'
  Int ->
  -- | 'dmqjdrrsJobDefinitionARN'
  Text ->
  -- | 'dmqjdrrsJobDefinitionName'
  Text ->
  -- | 'dmqjdrrsCreationTime'
  UTCTime ->
  -- | 'dmqjdrrsModelQualityAppSpecification'
  ModelQualityAppSpecification ->
  -- | 'dmqjdrrsModelQualityJobInput'
  ModelQualityJobInput ->
  -- | 'dmqjdrrsModelQualityJobOutputConfig'
  MonitoringOutputConfig ->
  -- | 'dmqjdrrsJobResources'
  MonitoringResources ->
  -- | 'dmqjdrrsRoleARN'
  Text ->
  DescribeModelQualityJobDefinitionResponse
describeModelQualityJobDefinitionResponse
  pResponseStatus_
  pJobDefinitionARN_
  pJobDefinitionName_
  pCreationTime_
  pModelQualityAppSpecification_
  pModelQualityJobInput_
  pModelQualityJobOutputConfig_
  pJobResources_
  pRoleARN_ =
    DescribeModelQualityJobDefinitionResponse'
      { _dmqjdrrsNetworkConfig =
          Nothing,
        _dmqjdrrsModelQualityBaselineConfig =
          Nothing,
        _dmqjdrrsStoppingCondition =
          Nothing,
        _dmqjdrrsResponseStatus =
          pResponseStatus_,
        _dmqjdrrsJobDefinitionARN =
          pJobDefinitionARN_,
        _dmqjdrrsJobDefinitionName =
          pJobDefinitionName_,
        _dmqjdrrsCreationTime =
          _Time # pCreationTime_,
        _dmqjdrrsModelQualityAppSpecification =
          pModelQualityAppSpecification_,
        _dmqjdrrsModelQualityJobInput =
          pModelQualityJobInput_,
        _dmqjdrrsModelQualityJobOutputConfig =
          pModelQualityJobOutputConfig_,
        _dmqjdrrsJobResources =
          pJobResources_,
        _dmqjdrrsRoleARN = pRoleARN_
      }

-- | Networking options for a model quality job.
dmqjdrrsNetworkConfig :: Lens' DescribeModelQualityJobDefinitionResponse (Maybe MonitoringNetworkConfig)
dmqjdrrsNetworkConfig = lens _dmqjdrrsNetworkConfig (\s a -> s {_dmqjdrrsNetworkConfig = a})

-- | The baseline configuration for a model quality job.
dmqjdrrsModelQualityBaselineConfig :: Lens' DescribeModelQualityJobDefinitionResponse (Maybe ModelQualityBaselineConfig)
dmqjdrrsModelQualityBaselineConfig = lens _dmqjdrrsModelQualityBaselineConfig (\s a -> s {_dmqjdrrsModelQualityBaselineConfig = a})

-- | Undocumented member.
dmqjdrrsStoppingCondition :: Lens' DescribeModelQualityJobDefinitionResponse (Maybe MonitoringStoppingCondition)
dmqjdrrsStoppingCondition = lens _dmqjdrrsStoppingCondition (\s a -> s {_dmqjdrrsStoppingCondition = a})

-- | -- | The response status code.
dmqjdrrsResponseStatus :: Lens' DescribeModelQualityJobDefinitionResponse Int
dmqjdrrsResponseStatus = lens _dmqjdrrsResponseStatus (\s a -> s {_dmqjdrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the model quality job.
dmqjdrrsJobDefinitionARN :: Lens' DescribeModelQualityJobDefinitionResponse Text
dmqjdrrsJobDefinitionARN = lens _dmqjdrrsJobDefinitionARN (\s a -> s {_dmqjdrrsJobDefinitionARN = a})

-- | The name of the quality job definition. The name must be unique within an AWS Region in the AWS account.
dmqjdrrsJobDefinitionName :: Lens' DescribeModelQualityJobDefinitionResponse Text
dmqjdrrsJobDefinitionName = lens _dmqjdrrsJobDefinitionName (\s a -> s {_dmqjdrrsJobDefinitionName = a})

-- | The time at which the model quality job was created.
dmqjdrrsCreationTime :: Lens' DescribeModelQualityJobDefinitionResponse UTCTime
dmqjdrrsCreationTime = lens _dmqjdrrsCreationTime (\s a -> s {_dmqjdrrsCreationTime = a}) . _Time

-- | Configures the model quality job to run a specified Docker container image.
dmqjdrrsModelQualityAppSpecification :: Lens' DescribeModelQualityJobDefinitionResponse ModelQualityAppSpecification
dmqjdrrsModelQualityAppSpecification = lens _dmqjdrrsModelQualityAppSpecification (\s a -> s {_dmqjdrrsModelQualityAppSpecification = a})

-- | Inputs for the model quality job.
dmqjdrrsModelQualityJobInput :: Lens' DescribeModelQualityJobDefinitionResponse ModelQualityJobInput
dmqjdrrsModelQualityJobInput = lens _dmqjdrrsModelQualityJobInput (\s a -> s {_dmqjdrrsModelQualityJobInput = a})

-- | Undocumented member.
dmqjdrrsModelQualityJobOutputConfig :: Lens' DescribeModelQualityJobDefinitionResponse MonitoringOutputConfig
dmqjdrrsModelQualityJobOutputConfig = lens _dmqjdrrsModelQualityJobOutputConfig (\s a -> s {_dmqjdrrsModelQualityJobOutputConfig = a})

-- | Undocumented member.
dmqjdrrsJobResources :: Lens' DescribeModelQualityJobDefinitionResponse MonitoringResources
dmqjdrrsJobResources = lens _dmqjdrrsJobResources (\s a -> s {_dmqjdrrsJobResources = a})

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
dmqjdrrsRoleARN :: Lens' DescribeModelQualityJobDefinitionResponse Text
dmqjdrrsRoleARN = lens _dmqjdrrsRoleARN (\s a -> s {_dmqjdrrsRoleARN = a})

instance
  NFData
    DescribeModelQualityJobDefinitionResponse
