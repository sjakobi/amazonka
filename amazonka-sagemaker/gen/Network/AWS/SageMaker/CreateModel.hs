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
-- Module      : Network.AWS.SageMaker.CreateModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a model in Amazon SageMaker. In the request, you name the model and describe a primary container. For the primary container, you specify the Docker image that contains inference code, artifacts (from prior training), and a custom environment map that the inference code uses when you deploy the model for predictions.
--
--
-- Use this API to create a model if you want to use Amazon SageMaker hosting services or run a batch transform job.
--
-- To host your model, you create an endpoint configuration with the @CreateEndpointConfig@ API, and then create an endpoint with the @CreateEndpoint@ API. Amazon SageMaker then deploys all of the containers that you defined for the model in the hosting environment.
--
-- For an example that calls this method when deploying a model to Amazon SageMaker hosting services, see <https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-deploy-model.html#ex1-deploy-model-boto Deploy the Model to Amazon SageMaker Hosting Services (AWS SDK for Python (Boto 3)).>
--
-- To run a batch transform using your model, you start a job with the @CreateTransformJob@ API. Amazon SageMaker uses your model and your dataset to get inferences which are then saved to a specified S3 location.
--
-- In the @CreateModel@ request, you must define a container with the @PrimaryContainer@ parameter.
--
-- In the request, you also provide an IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute hosting instances or for batch transform jobs. In addition, you also use the IAM role to manage permissions the inference code needs. For example, if the inference code access any other AWS resources, you grant necessary permissions via this role.
module Network.AWS.SageMaker.CreateModel
  ( -- * Creating a Request
    createModel,
    CreateModel,

    -- * Request Lenses
    cmVPCConfig,
    cmPrimaryContainer,
    cmEnableNetworkIsolation,
    cmContainers,
    cmTags,
    cmInferenceExecutionConfig,
    cmModelName,
    cmExecutionRoleARN,

    -- * Destructuring the Response
    createModelResponse,
    CreateModelResponse,

    -- * Response Lenses
    cmrrsResponseStatus,
    cmrrsModelARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createModel' smart constructor.
data CreateModel = CreateModel'
  { _cmVPCConfig ::
      !(Maybe VPCConfig),
    _cmPrimaryContainer ::
      !(Maybe ContainerDefinition),
    _cmEnableNetworkIsolation :: !(Maybe Bool),
    _cmContainers :: !(Maybe [ContainerDefinition]),
    _cmTags :: !(Maybe [Tag]),
    _cmInferenceExecutionConfig ::
      !(Maybe InferenceExecutionConfig),
    _cmModelName :: !Text,
    _cmExecutionRoleARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmVPCConfig' - A 'VpcConfig' object that specifies the VPC that you want your model to connect to. Control access to and from your model container by configuring the VPC. @VpcConfig@ is used in hosting services and in batch transform. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html Protect Endpoints by Using an Amazon Virtual Private Cloud> and <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-vpc.html Protect Data in Batch Transform Jobs by Using an Amazon Virtual Private Cloud> .
--
-- * 'cmPrimaryContainer' - The location of the primary docker image containing inference code, associated artifacts, and custom environment map that the inference code uses when the model is deployed for predictions.
--
-- * 'cmEnableNetworkIsolation' - Isolates the model container. No inbound or outbound network calls can be made to or from the model container.
--
-- * 'cmContainers' - Specifies the containers in the inference pipeline.
--
-- * 'cmTags' - An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
--
-- * 'cmInferenceExecutionConfig' - Specifies details of how containers in a multi-container endpoint are called.
--
-- * 'cmModelName' - The name of the new model.
--
-- * 'cmExecutionRoleARN' - The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute instances or for batch transform jobs. Deploying on ML compute instances is part of model hosting. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html Amazon SageMaker Roles> .
createModel ::
  -- | 'cmModelName'
  Text ->
  -- | 'cmExecutionRoleARN'
  Text ->
  CreateModel
createModel pModelName_ pExecutionRoleARN_ =
  CreateModel'
    { _cmVPCConfig = Nothing,
      _cmPrimaryContainer = Nothing,
      _cmEnableNetworkIsolation = Nothing,
      _cmContainers = Nothing,
      _cmTags = Nothing,
      _cmInferenceExecutionConfig = Nothing,
      _cmModelName = pModelName_,
      _cmExecutionRoleARN = pExecutionRoleARN_
    }

-- | A 'VpcConfig' object that specifies the VPC that you want your model to connect to. Control access to and from your model container by configuring the VPC. @VpcConfig@ is used in hosting services and in batch transform. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html Protect Endpoints by Using an Amazon Virtual Private Cloud> and <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-vpc.html Protect Data in Batch Transform Jobs by Using an Amazon Virtual Private Cloud> .
cmVPCConfig :: Lens' CreateModel (Maybe VPCConfig)
cmVPCConfig = lens _cmVPCConfig (\s a -> s {_cmVPCConfig = a})

-- | The location of the primary docker image containing inference code, associated artifacts, and custom environment map that the inference code uses when the model is deployed for predictions.
cmPrimaryContainer :: Lens' CreateModel (Maybe ContainerDefinition)
cmPrimaryContainer = lens _cmPrimaryContainer (\s a -> s {_cmPrimaryContainer = a})

-- | Isolates the model container. No inbound or outbound network calls can be made to or from the model container.
cmEnableNetworkIsolation :: Lens' CreateModel (Maybe Bool)
cmEnableNetworkIsolation = lens _cmEnableNetworkIsolation (\s a -> s {_cmEnableNetworkIsolation = a})

-- | Specifies the containers in the inference pipeline.
cmContainers :: Lens' CreateModel [ContainerDefinition]
cmContainers = lens _cmContainers (\s a -> s {_cmContainers = a}) . _Default . _Coerce

-- | An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
cmTags :: Lens' CreateModel [Tag]
cmTags = lens _cmTags (\s a -> s {_cmTags = a}) . _Default . _Coerce

-- | Specifies details of how containers in a multi-container endpoint are called.
cmInferenceExecutionConfig :: Lens' CreateModel (Maybe InferenceExecutionConfig)
cmInferenceExecutionConfig = lens _cmInferenceExecutionConfig (\s a -> s {_cmInferenceExecutionConfig = a})

-- | The name of the new model.
cmModelName :: Lens' CreateModel Text
cmModelName = lens _cmModelName (\s a -> s {_cmModelName = a})

-- | The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute instances or for batch transform jobs. Deploying on ML compute instances is part of model hosting. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html Amazon SageMaker Roles> .
cmExecutionRoleARN :: Lens' CreateModel Text
cmExecutionRoleARN = lens _cmExecutionRoleARN (\s a -> s {_cmExecutionRoleARN = a})

instance AWSRequest CreateModel where
  type Rs CreateModel = CreateModelResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateModelResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "ModelArn")
      )

instance Hashable CreateModel

instance NFData CreateModel

instance ToHeaders CreateModel where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateModel" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateModel where
  toJSON CreateModel' {..} =
    object
      ( catMaybes
          [ ("VpcConfig" .=) <$> _cmVPCConfig,
            ("PrimaryContainer" .=) <$> _cmPrimaryContainer,
            ("EnableNetworkIsolation" .=)
              <$> _cmEnableNetworkIsolation,
            ("Containers" .=) <$> _cmContainers,
            ("Tags" .=) <$> _cmTags,
            ("InferenceExecutionConfig" .=)
              <$> _cmInferenceExecutionConfig,
            Just ("ModelName" .= _cmModelName),
            Just ("ExecutionRoleArn" .= _cmExecutionRoleARN)
          ]
      )

instance ToPath CreateModel where
  toPath = const "/"

instance ToQuery CreateModel where
  toQuery = const mempty

-- | /See:/ 'createModelResponse' smart constructor.
data CreateModelResponse = CreateModelResponse'
  { _cmrrsResponseStatus ::
      !Int,
    _cmrrsModelARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateModelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmrrsResponseStatus' - -- | The response status code.
--
-- * 'cmrrsModelARN' - The ARN of the model created in Amazon SageMaker.
createModelResponse ::
  -- | 'cmrrsResponseStatus'
  Int ->
  -- | 'cmrrsModelARN'
  Text ->
  CreateModelResponse
createModelResponse pResponseStatus_ pModelARN_ =
  CreateModelResponse'
    { _cmrrsResponseStatus =
        pResponseStatus_,
      _cmrrsModelARN = pModelARN_
    }

-- | -- | The response status code.
cmrrsResponseStatus :: Lens' CreateModelResponse Int
cmrrsResponseStatus = lens _cmrrsResponseStatus (\s a -> s {_cmrrsResponseStatus = a})

-- | The ARN of the model created in Amazon SageMaker.
cmrrsModelARN :: Lens' CreateModelResponse Text
cmrrsModelARN = lens _cmrrsModelARN (\s a -> s {_cmrrsModelARN = a})

instance NFData CreateModelResponse
