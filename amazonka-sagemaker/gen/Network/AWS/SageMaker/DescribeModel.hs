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
-- Module      : Network.AWS.SageMaker.DescribeModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a model that you created using the @CreateModel@ API.
module Network.AWS.SageMaker.DescribeModel
  ( -- * Creating a Request
    describeModel,
    DescribeModel,

    -- * Request Lenses
    dModelName,

    -- * Destructuring the Response
    describeModelResponse,
    DescribeModelResponse,

    -- * Response Lenses
    dmrrsVPCConfig,
    dmrrsPrimaryContainer,
    dmrrsEnableNetworkIsolation,
    dmrrsContainers,
    dmrrsInferenceExecutionConfig,
    dmrrsResponseStatus,
    dmrrsModelName,
    dmrrsExecutionRoleARN,
    dmrrsCreationTime,
    dmrrsModelARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeModel' smart constructor.
newtype DescribeModel = DescribeModel'
  { _dModelName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dModelName' - The name of the model.
describeModel ::
  -- | 'dModelName'
  Text ->
  DescribeModel
describeModel pModelName_ =
  DescribeModel' {_dModelName = pModelName_}

-- | The name of the model.
dModelName :: Lens' DescribeModel Text
dModelName = lens _dModelName (\s a -> s {_dModelName = a})

instance AWSRequest DescribeModel where
  type Rs DescribeModel = DescribeModelResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeModelResponse'
            <$> (x .?> "VpcConfig")
            <*> (x .?> "PrimaryContainer")
            <*> (x .?> "EnableNetworkIsolation")
            <*> (x .?> "Containers" .!@ mempty)
            <*> (x .?> "InferenceExecutionConfig")
            <*> (pure (fromEnum s))
            <*> (x .:> "ModelName")
            <*> (x .:> "ExecutionRoleArn")
            <*> (x .:> "CreationTime")
            <*> (x .:> "ModelArn")
      )

instance Hashable DescribeModel

instance NFData DescribeModel

instance ToHeaders DescribeModel where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeModel" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeModel where
  toJSON DescribeModel' {..} =
    object
      (catMaybes [Just ("ModelName" .= _dModelName)])

instance ToPath DescribeModel where
  toPath = const "/"

instance ToQuery DescribeModel where
  toQuery = const mempty

-- | /See:/ 'describeModelResponse' smart constructor.
data DescribeModelResponse = DescribeModelResponse'
  { _dmrrsVPCConfig ::
      !(Maybe VPCConfig),
    _dmrrsPrimaryContainer ::
      !( Maybe
           ContainerDefinition
       ),
    _dmrrsEnableNetworkIsolation ::
      !(Maybe Bool),
    _dmrrsContainers ::
      !( Maybe
           [ContainerDefinition]
       ),
    _dmrrsInferenceExecutionConfig ::
      !( Maybe
           InferenceExecutionConfig
       ),
    _dmrrsResponseStatus ::
      !Int,
    _dmrrsModelName :: !Text,
    _dmrrsExecutionRoleARN ::
      !Text,
    _dmrrsCreationTime ::
      !POSIX,
    _dmrrsModelARN :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeModelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmrrsVPCConfig' - A 'VpcConfig' object that specifies the VPC that this model has access to. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html Protect Endpoints by Using an Amazon Virtual Private Cloud>
--
-- * 'dmrrsPrimaryContainer' - The location of the primary inference code, associated artifacts, and custom environment map that the inference code uses when it is deployed in production.
--
-- * 'dmrrsEnableNetworkIsolation' - If @True@ , no inbound or outbound network calls can be made to or from the model container.
--
-- * 'dmrrsContainers' - The containers in the inference pipeline.
--
-- * 'dmrrsInferenceExecutionConfig' - Specifies details of how containers in a multi-container endpoint are called.
--
-- * 'dmrrsResponseStatus' - -- | The response status code.
--
-- * 'dmrrsModelName' - Name of the Amazon SageMaker model.
--
-- * 'dmrrsExecutionRoleARN' - The Amazon Resource Name (ARN) of the IAM role that you specified for the model.
--
-- * 'dmrrsCreationTime' - A timestamp that shows when the model was created.
--
-- * 'dmrrsModelARN' - The Amazon Resource Name (ARN) of the model.
describeModelResponse ::
  -- | 'dmrrsResponseStatus'
  Int ->
  -- | 'dmrrsModelName'
  Text ->
  -- | 'dmrrsExecutionRoleARN'
  Text ->
  -- | 'dmrrsCreationTime'
  UTCTime ->
  -- | 'dmrrsModelARN'
  Text ->
  DescribeModelResponse
describeModelResponse
  pResponseStatus_
  pModelName_
  pExecutionRoleARN_
  pCreationTime_
  pModelARN_ =
    DescribeModelResponse'
      { _dmrrsVPCConfig = Nothing,
        _dmrrsPrimaryContainer = Nothing,
        _dmrrsEnableNetworkIsolation = Nothing,
        _dmrrsContainers = Nothing,
        _dmrrsInferenceExecutionConfig = Nothing,
        _dmrrsResponseStatus = pResponseStatus_,
        _dmrrsModelName = pModelName_,
        _dmrrsExecutionRoleARN = pExecutionRoleARN_,
        _dmrrsCreationTime = _Time # pCreationTime_,
        _dmrrsModelARN = pModelARN_
      }

-- | A 'VpcConfig' object that specifies the VPC that this model has access to. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html Protect Endpoints by Using an Amazon Virtual Private Cloud>
dmrrsVPCConfig :: Lens' DescribeModelResponse (Maybe VPCConfig)
dmrrsVPCConfig = lens _dmrrsVPCConfig (\s a -> s {_dmrrsVPCConfig = a})

-- | The location of the primary inference code, associated artifacts, and custom environment map that the inference code uses when it is deployed in production.
dmrrsPrimaryContainer :: Lens' DescribeModelResponse (Maybe ContainerDefinition)
dmrrsPrimaryContainer = lens _dmrrsPrimaryContainer (\s a -> s {_dmrrsPrimaryContainer = a})

-- | If @True@ , no inbound or outbound network calls can be made to or from the model container.
dmrrsEnableNetworkIsolation :: Lens' DescribeModelResponse (Maybe Bool)
dmrrsEnableNetworkIsolation = lens _dmrrsEnableNetworkIsolation (\s a -> s {_dmrrsEnableNetworkIsolation = a})

-- | The containers in the inference pipeline.
dmrrsContainers :: Lens' DescribeModelResponse [ContainerDefinition]
dmrrsContainers = lens _dmrrsContainers (\s a -> s {_dmrrsContainers = a}) . _Default . _Coerce

-- | Specifies details of how containers in a multi-container endpoint are called.
dmrrsInferenceExecutionConfig :: Lens' DescribeModelResponse (Maybe InferenceExecutionConfig)
dmrrsInferenceExecutionConfig = lens _dmrrsInferenceExecutionConfig (\s a -> s {_dmrrsInferenceExecutionConfig = a})

-- | -- | The response status code.
dmrrsResponseStatus :: Lens' DescribeModelResponse Int
dmrrsResponseStatus = lens _dmrrsResponseStatus (\s a -> s {_dmrrsResponseStatus = a})

-- | Name of the Amazon SageMaker model.
dmrrsModelName :: Lens' DescribeModelResponse Text
dmrrsModelName = lens _dmrrsModelName (\s a -> s {_dmrrsModelName = a})

-- | The Amazon Resource Name (ARN) of the IAM role that you specified for the model.
dmrrsExecutionRoleARN :: Lens' DescribeModelResponse Text
dmrrsExecutionRoleARN = lens _dmrrsExecutionRoleARN (\s a -> s {_dmrrsExecutionRoleARN = a})

-- | A timestamp that shows when the model was created.
dmrrsCreationTime :: Lens' DescribeModelResponse UTCTime
dmrrsCreationTime = lens _dmrrsCreationTime (\s a -> s {_dmrrsCreationTime = a}) . _Time

-- | The Amazon Resource Name (ARN) of the model.
dmrrsModelARN :: Lens' DescribeModelResponse Text
dmrrsModelARN = lens _dmrrsModelARN (\s a -> s {_dmrrsModelARN = a})

instance NFData DescribeModelResponse
