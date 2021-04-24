{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ContainerDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ContainerDefinition where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ContainerMode
import Network.AWS.SageMaker.Types.ImageConfig
import Network.AWS.SageMaker.Types.MultiModelConfig

-- | Describes the container, as part of model definition.
--
--
--
-- /See:/ 'containerDefinition' smart constructor.
data ContainerDefinition = ContainerDefinition'
  { _cdMultiModelConfig ::
      !(Maybe MultiModelConfig),
    _cdModelDataURL ::
      !(Maybe Text),
    _cdMode ::
      !(Maybe ContainerMode),
    _cdContainerHostname ::
      !(Maybe Text),
    _cdImageConfig ::
      !(Maybe ImageConfig),
    _cdEnvironment ::
      !(Maybe (Map Text Text)),
    _cdModelPackageName ::
      !(Maybe Text),
    _cdImage :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdMultiModelConfig' - Specifies additional configuration for multi-model endpoints.
--
-- * 'cdModelDataURL' - The S3 path where the model artifacts, which result from model training, are stored. This path must point to a single gzip compressed tar archive (.tar.gz suffix). The S3 path is required for Amazon SageMaker built-in algorithms, but not if you use your own algorithms. For more information on built-in algorithms, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html Common Parameters> .  If you provide a value for this parameter, Amazon SageMaker uses AWS Security Token Service to download model artifacts from the S3 path you provide. AWS STS is activated in your IAM user account by default. If you previously deactivated AWS STS for a region, you need to reactivate AWS STS for that region. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html Activating and Deactivating AWS STS in an AWS Region> in the /AWS Identity and Access Management User Guide/ . /Important:/ If you use a built-in algorithm to create a model, Amazon SageMaker requires that you provide a S3 path to the model artifacts in @ModelDataUrl@ .
--
-- * 'cdMode' - Whether the container hosts a single model or multiple models.
--
-- * 'cdContainerHostname' - This parameter is ignored for models that contain only a @PrimaryContainer@ . When a @ContainerDefinition@ is part of an inference pipeline, the value of the parameter uniquely identifies the container for the purposes of logging and metrics. For information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/inference-pipeline-logs-metrics.html Use Logs and Metrics to Monitor an Inference Pipeline> . If you don't specify a value for this parameter for a @ContainerDefinition@ that is part of an inference pipeline, a unique name is automatically assigned based on the position of the @ContainerDefinition@ in the pipeline. If you specify a value for the @ContainerHostName@ for any @ContainerDefinition@ that is part of an inference pipeline, you must specify a value for the @ContainerHostName@ parameter of every @ContainerDefinition@ in that pipeline.
--
-- * 'cdImageConfig' - Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). For information about storing containers in a private Docker registry, see <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-containers-inference-private.html Use a Private Docker Registry for Real-Time Inference Containers>
--
-- * 'cdEnvironment' - The environment variables to set in the Docker container. Each key and value in the @Environment@ string to string map can have length of up to 1024. We support up to 16 entries in the map.
--
-- * 'cdModelPackageName' - The name or Amazon Resource Name (ARN) of the model package to use to create the model.
--
-- * 'cdImage' - The path where inference code is stored. This can be either in Amazon EC2 Container Registry or in a Docker registry that is accessible from the same VPC that you configure for your endpoint. If you are using your own custom algorithm instead of an algorithm provided by Amazon SageMaker, the inference code must meet Amazon SageMaker requirements. Amazon SageMaker supports both @registry/repository[:tag]@ and @registry/repository[@digest]@ image path formats. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker>
containerDefinition ::
  ContainerDefinition
containerDefinition =
  ContainerDefinition'
    { _cdMultiModelConfig = Nothing,
      _cdModelDataURL = Nothing,
      _cdMode = Nothing,
      _cdContainerHostname = Nothing,
      _cdImageConfig = Nothing,
      _cdEnvironment = Nothing,
      _cdModelPackageName = Nothing,
      _cdImage = Nothing
    }

-- | Specifies additional configuration for multi-model endpoints.
cdMultiModelConfig :: Lens' ContainerDefinition (Maybe MultiModelConfig)
cdMultiModelConfig = lens _cdMultiModelConfig (\s a -> s {_cdMultiModelConfig = a})

-- | The S3 path where the model artifacts, which result from model training, are stored. This path must point to a single gzip compressed tar archive (.tar.gz suffix). The S3 path is required for Amazon SageMaker built-in algorithms, but not if you use your own algorithms. For more information on built-in algorithms, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html Common Parameters> .  If you provide a value for this parameter, Amazon SageMaker uses AWS Security Token Service to download model artifacts from the S3 path you provide. AWS STS is activated in your IAM user account by default. If you previously deactivated AWS STS for a region, you need to reactivate AWS STS for that region. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html Activating and Deactivating AWS STS in an AWS Region> in the /AWS Identity and Access Management User Guide/ . /Important:/ If you use a built-in algorithm to create a model, Amazon SageMaker requires that you provide a S3 path to the model artifacts in @ModelDataUrl@ .
cdModelDataURL :: Lens' ContainerDefinition (Maybe Text)
cdModelDataURL = lens _cdModelDataURL (\s a -> s {_cdModelDataURL = a})

-- | Whether the container hosts a single model or multiple models.
cdMode :: Lens' ContainerDefinition (Maybe ContainerMode)
cdMode = lens _cdMode (\s a -> s {_cdMode = a})

-- | This parameter is ignored for models that contain only a @PrimaryContainer@ . When a @ContainerDefinition@ is part of an inference pipeline, the value of the parameter uniquely identifies the container for the purposes of logging and metrics. For information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/inference-pipeline-logs-metrics.html Use Logs and Metrics to Monitor an Inference Pipeline> . If you don't specify a value for this parameter for a @ContainerDefinition@ that is part of an inference pipeline, a unique name is automatically assigned based on the position of the @ContainerDefinition@ in the pipeline. If you specify a value for the @ContainerHostName@ for any @ContainerDefinition@ that is part of an inference pipeline, you must specify a value for the @ContainerHostName@ parameter of every @ContainerDefinition@ in that pipeline.
cdContainerHostname :: Lens' ContainerDefinition (Maybe Text)
cdContainerHostname = lens _cdContainerHostname (\s a -> s {_cdContainerHostname = a})

-- | Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). For information about storing containers in a private Docker registry, see <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-containers-inference-private.html Use a Private Docker Registry for Real-Time Inference Containers>
cdImageConfig :: Lens' ContainerDefinition (Maybe ImageConfig)
cdImageConfig = lens _cdImageConfig (\s a -> s {_cdImageConfig = a})

-- | The environment variables to set in the Docker container. Each key and value in the @Environment@ string to string map can have length of up to 1024. We support up to 16 entries in the map.
cdEnvironment :: Lens' ContainerDefinition (HashMap Text Text)
cdEnvironment = lens _cdEnvironment (\s a -> s {_cdEnvironment = a}) . _Default . _Map

-- | The name or Amazon Resource Name (ARN) of the model package to use to create the model.
cdModelPackageName :: Lens' ContainerDefinition (Maybe Text)
cdModelPackageName = lens _cdModelPackageName (\s a -> s {_cdModelPackageName = a})

-- | The path where inference code is stored. This can be either in Amazon EC2 Container Registry or in a Docker registry that is accessible from the same VPC that you configure for your endpoint. If you are using your own custom algorithm instead of an algorithm provided by Amazon SageMaker, the inference code must meet Amazon SageMaker requirements. Amazon SageMaker supports both @registry/repository[:tag]@ and @registry/repository[@digest]@ image path formats. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker>
cdImage :: Lens' ContainerDefinition (Maybe Text)
cdImage = lens _cdImage (\s a -> s {_cdImage = a})

instance FromJSON ContainerDefinition where
  parseJSON =
    withObject
      "ContainerDefinition"
      ( \x ->
          ContainerDefinition'
            <$> (x .:? "MultiModelConfig")
            <*> (x .:? "ModelDataUrl")
            <*> (x .:? "Mode")
            <*> (x .:? "ContainerHostname")
            <*> (x .:? "ImageConfig")
            <*> (x .:? "Environment" .!= mempty)
            <*> (x .:? "ModelPackageName")
            <*> (x .:? "Image")
      )

instance Hashable ContainerDefinition

instance NFData ContainerDefinition

instance ToJSON ContainerDefinition where
  toJSON ContainerDefinition' {..} =
    object
      ( catMaybes
          [ ("MultiModelConfig" .=) <$> _cdMultiModelConfig,
            ("ModelDataUrl" .=) <$> _cdModelDataURL,
            ("Mode" .=) <$> _cdMode,
            ("ContainerHostname" .=) <$> _cdContainerHostname,
            ("ImageConfig" .=) <$> _cdImageConfig,
            ("Environment" .=) <$> _cdEnvironment,
            ("ModelPackageName" .=) <$> _cdModelPackageName,
            ("Image" .=) <$> _cdImage
          ]
      )
