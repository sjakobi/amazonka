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
-- Module      : Network.AWS.SageMaker.DescribeDataQualityJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a data quality monitoring job definition.
module Network.AWS.SageMaker.DescribeDataQualityJobDefinition
  ( -- * Creating a Request
    describeDataQualityJobDefinition,
    DescribeDataQualityJobDefinition,

    -- * Request Lenses
    dJobDefinitionName,

    -- * Destructuring the Response
    describeDataQualityJobDefinitionResponse,
    DescribeDataQualityJobDefinitionResponse,

    -- * Response Lenses
    ddqjdrrsNetworkConfig,
    ddqjdrrsDataQualityBaselineConfig,
    ddqjdrrsStoppingCondition,
    ddqjdrrsResponseStatus,
    ddqjdrrsJobDefinitionARN,
    ddqjdrrsJobDefinitionName,
    ddqjdrrsCreationTime,
    ddqjdrrsDataQualityAppSpecification,
    ddqjdrrsDataQualityJobInput,
    ddqjdrrsDataQualityJobOutputConfig,
    ddqjdrrsJobResources,
    ddqjdrrsRoleARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeDataQualityJobDefinition' smart constructor.
newtype DescribeDataQualityJobDefinition = DescribeDataQualityJobDefinition'
  { _dJobDefinitionName ::
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

-- | Creates a value of 'DescribeDataQualityJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dJobDefinitionName' - The name of the data quality monitoring job definition to describe.
describeDataQualityJobDefinition ::
  -- | 'dJobDefinitionName'
  Text ->
  DescribeDataQualityJobDefinition
describeDataQualityJobDefinition pJobDefinitionName_ =
  DescribeDataQualityJobDefinition'
    { _dJobDefinitionName =
        pJobDefinitionName_
    }

-- | The name of the data quality monitoring job definition to describe.
dJobDefinitionName :: Lens' DescribeDataQualityJobDefinition Text
dJobDefinitionName = lens _dJobDefinitionName (\s a -> s {_dJobDefinitionName = a})

instance AWSRequest DescribeDataQualityJobDefinition where
  type
    Rs DescribeDataQualityJobDefinition =
      DescribeDataQualityJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeDataQualityJobDefinitionResponse'
            <$> (x .?> "NetworkConfig")
            <*> (x .?> "DataQualityBaselineConfig")
            <*> (x .?> "StoppingCondition")
            <*> (pure (fromEnum s))
            <*> (x .:> "JobDefinitionArn")
            <*> (x .:> "JobDefinitionName")
            <*> (x .:> "CreationTime")
            <*> (x .:> "DataQualityAppSpecification")
            <*> (x .:> "DataQualityJobInput")
            <*> (x .:> "DataQualityJobOutputConfig")
            <*> (x .:> "JobResources")
            <*> (x .:> "RoleArn")
      )

instance Hashable DescribeDataQualityJobDefinition

instance NFData DescribeDataQualityJobDefinition

instance ToHeaders DescribeDataQualityJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribeDataQualityJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDataQualityJobDefinition where
  toJSON DescribeDataQualityJobDefinition' {..} =
    object
      ( catMaybes
          [Just ("JobDefinitionName" .= _dJobDefinitionName)]
      )

instance ToPath DescribeDataQualityJobDefinition where
  toPath = const "/"

instance ToQuery DescribeDataQualityJobDefinition where
  toQuery = const mempty

-- | /See:/ 'describeDataQualityJobDefinitionResponse' smart constructor.
data DescribeDataQualityJobDefinitionResponse = DescribeDataQualityJobDefinitionResponse'
  { _ddqjdrrsNetworkConfig ::
      !( Maybe
           MonitoringNetworkConfig
       ),
    _ddqjdrrsDataQualityBaselineConfig ::
      !( Maybe
           DataQualityBaselineConfig
       ),
    _ddqjdrrsStoppingCondition ::
      !( Maybe
           MonitoringStoppingCondition
       ),
    _ddqjdrrsResponseStatus ::
      !Int,
    _ddqjdrrsJobDefinitionARN ::
      !Text,
    _ddqjdrrsJobDefinitionName ::
      !Text,
    _ddqjdrrsCreationTime ::
      !POSIX,
    _ddqjdrrsDataQualityAppSpecification ::
      !DataQualityAppSpecification,
    _ddqjdrrsDataQualityJobInput ::
      !DataQualityJobInput,
    _ddqjdrrsDataQualityJobOutputConfig ::
      !MonitoringOutputConfig,
    _ddqjdrrsJobResources ::
      !MonitoringResources,
    _ddqjdrrsRoleARN ::
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

-- | Creates a value of 'DescribeDataQualityJobDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddqjdrrsNetworkConfig' - The networking configuration for the data quality monitoring job.
--
-- * 'ddqjdrrsDataQualityBaselineConfig' - The constraints and baselines for the data quality monitoring job definition.
--
-- * 'ddqjdrrsStoppingCondition' - Undocumented member.
--
-- * 'ddqjdrrsResponseStatus' - -- | The response status code.
--
-- * 'ddqjdrrsJobDefinitionARN' - The Amazon Resource Name (ARN) of the data quality monitoring job definition.
--
-- * 'ddqjdrrsJobDefinitionName' - The name of the data quality monitoring job definition.
--
-- * 'ddqjdrrsCreationTime' - The time that the data quality monitoring job definition was created.
--
-- * 'ddqjdrrsDataQualityAppSpecification' - Information about the container that runs the data quality monitoring job.
--
-- * 'ddqjdrrsDataQualityJobInput' - The list of inputs for the data quality monitoring job. Currently endpoints are supported.
--
-- * 'ddqjdrrsDataQualityJobOutputConfig' - Undocumented member.
--
-- * 'ddqjdrrsJobResources' - Undocumented member.
--
-- * 'ddqjdrrsRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
describeDataQualityJobDefinitionResponse ::
  -- | 'ddqjdrrsResponseStatus'
  Int ->
  -- | 'ddqjdrrsJobDefinitionARN'
  Text ->
  -- | 'ddqjdrrsJobDefinitionName'
  Text ->
  -- | 'ddqjdrrsCreationTime'
  UTCTime ->
  -- | 'ddqjdrrsDataQualityAppSpecification'
  DataQualityAppSpecification ->
  -- | 'ddqjdrrsDataQualityJobInput'
  DataQualityJobInput ->
  -- | 'ddqjdrrsDataQualityJobOutputConfig'
  MonitoringOutputConfig ->
  -- | 'ddqjdrrsJobResources'
  MonitoringResources ->
  -- | 'ddqjdrrsRoleARN'
  Text ->
  DescribeDataQualityJobDefinitionResponse
describeDataQualityJobDefinitionResponse
  pResponseStatus_
  pJobDefinitionARN_
  pJobDefinitionName_
  pCreationTime_
  pDataQualityAppSpecification_
  pDataQualityJobInput_
  pDataQualityJobOutputConfig_
  pJobResources_
  pRoleARN_ =
    DescribeDataQualityJobDefinitionResponse'
      { _ddqjdrrsNetworkConfig =
          Nothing,
        _ddqjdrrsDataQualityBaselineConfig =
          Nothing,
        _ddqjdrrsStoppingCondition =
          Nothing,
        _ddqjdrrsResponseStatus =
          pResponseStatus_,
        _ddqjdrrsJobDefinitionARN =
          pJobDefinitionARN_,
        _ddqjdrrsJobDefinitionName =
          pJobDefinitionName_,
        _ddqjdrrsCreationTime =
          _Time # pCreationTime_,
        _ddqjdrrsDataQualityAppSpecification =
          pDataQualityAppSpecification_,
        _ddqjdrrsDataQualityJobInput =
          pDataQualityJobInput_,
        _ddqjdrrsDataQualityJobOutputConfig =
          pDataQualityJobOutputConfig_,
        _ddqjdrrsJobResources =
          pJobResources_,
        _ddqjdrrsRoleARN = pRoleARN_
      }

-- | The networking configuration for the data quality monitoring job.
ddqjdrrsNetworkConfig :: Lens' DescribeDataQualityJobDefinitionResponse (Maybe MonitoringNetworkConfig)
ddqjdrrsNetworkConfig = lens _ddqjdrrsNetworkConfig (\s a -> s {_ddqjdrrsNetworkConfig = a})

-- | The constraints and baselines for the data quality monitoring job definition.
ddqjdrrsDataQualityBaselineConfig :: Lens' DescribeDataQualityJobDefinitionResponse (Maybe DataQualityBaselineConfig)
ddqjdrrsDataQualityBaselineConfig = lens _ddqjdrrsDataQualityBaselineConfig (\s a -> s {_ddqjdrrsDataQualityBaselineConfig = a})

-- | Undocumented member.
ddqjdrrsStoppingCondition :: Lens' DescribeDataQualityJobDefinitionResponse (Maybe MonitoringStoppingCondition)
ddqjdrrsStoppingCondition = lens _ddqjdrrsStoppingCondition (\s a -> s {_ddqjdrrsStoppingCondition = a})

-- | -- | The response status code.
ddqjdrrsResponseStatus :: Lens' DescribeDataQualityJobDefinitionResponse Int
ddqjdrrsResponseStatus = lens _ddqjdrrsResponseStatus (\s a -> s {_ddqjdrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the data quality monitoring job definition.
ddqjdrrsJobDefinitionARN :: Lens' DescribeDataQualityJobDefinitionResponse Text
ddqjdrrsJobDefinitionARN = lens _ddqjdrrsJobDefinitionARN (\s a -> s {_ddqjdrrsJobDefinitionARN = a})

-- | The name of the data quality monitoring job definition.
ddqjdrrsJobDefinitionName :: Lens' DescribeDataQualityJobDefinitionResponse Text
ddqjdrrsJobDefinitionName = lens _ddqjdrrsJobDefinitionName (\s a -> s {_ddqjdrrsJobDefinitionName = a})

-- | The time that the data quality monitoring job definition was created.
ddqjdrrsCreationTime :: Lens' DescribeDataQualityJobDefinitionResponse UTCTime
ddqjdrrsCreationTime = lens _ddqjdrrsCreationTime (\s a -> s {_ddqjdrrsCreationTime = a}) . _Time

-- | Information about the container that runs the data quality monitoring job.
ddqjdrrsDataQualityAppSpecification :: Lens' DescribeDataQualityJobDefinitionResponse DataQualityAppSpecification
ddqjdrrsDataQualityAppSpecification = lens _ddqjdrrsDataQualityAppSpecification (\s a -> s {_ddqjdrrsDataQualityAppSpecification = a})

-- | The list of inputs for the data quality monitoring job. Currently endpoints are supported.
ddqjdrrsDataQualityJobInput :: Lens' DescribeDataQualityJobDefinitionResponse DataQualityJobInput
ddqjdrrsDataQualityJobInput = lens _ddqjdrrsDataQualityJobInput (\s a -> s {_ddqjdrrsDataQualityJobInput = a})

-- | Undocumented member.
ddqjdrrsDataQualityJobOutputConfig :: Lens' DescribeDataQualityJobDefinitionResponse MonitoringOutputConfig
ddqjdrrsDataQualityJobOutputConfig = lens _ddqjdrrsDataQualityJobOutputConfig (\s a -> s {_ddqjdrrsDataQualityJobOutputConfig = a})

-- | Undocumented member.
ddqjdrrsJobResources :: Lens' DescribeDataQualityJobDefinitionResponse MonitoringResources
ddqjdrrsJobResources = lens _ddqjdrrsJobResources (\s a -> s {_ddqjdrrsJobResources = a})

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
ddqjdrrsRoleARN :: Lens' DescribeDataQualityJobDefinitionResponse Text
ddqjdrrsRoleARN = lens _ddqjdrrsRoleARN (\s a -> s {_ddqjdrrsRoleARN = a})

instance
  NFData
    DescribeDataQualityJobDefinitionResponse
