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
-- Module      : Network.AWS.SageMaker.CreateTrainingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a model training job. After training completes, Amazon SageMaker saves the resulting model artifacts to an Amazon S3 location that you specify.
--
--
-- If you choose to host your model using Amazon SageMaker hosting services, you can use the resulting model artifacts as part of the model. You can also use the artifacts in a machine learning service other than Amazon SageMaker, provided that you know how to use them for inference.
--
-- In the request body, you provide the following:
--
--     * @AlgorithmSpecification@ - Identifies the training algorithm to use.
--
--     * @HyperParameters@ - Specify these algorithm-specific parameters to enable the estimation of model parameters during training. Hyperparameters can be tuned to optimize this learning process. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see <https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html Algorithms> .
--
--     * @InputDataConfig@ - Describes the training dataset and the Amazon S3, EFS, or FSx location where it is stored.
--
--     * @OutputDataConfig@ - Identifies the Amazon S3 bucket where you want Amazon SageMaker to save the results of model training.
--
--
--
--     * @ResourceConfig@ - Identifies the resources, ML compute instances, and ML storage volumes to deploy for model training. In distributed training, you specify more than one instance.
--
--     * @EnableManagedSpotTraining@ - Optimize the cost of training machine learning models by up to 80% by using Amazon EC2 Spot instances. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html Managed Spot Training> .
--
--     * @RoleArn@ - The Amazon Resource Name (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during model training. You must grant this role the necessary permissions so that Amazon SageMaker can successfully complete model training.
--
--     * @StoppingCondition@ - To help cap training costs, use @MaxRuntimeInSeconds@ to set a time limit for training. Use @MaxWaitTimeInSeconds@ to specify how long you are willing to wait for a managed spot training job to complete.
--
--
--
-- For more information about Amazon SageMaker, see <https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html How It Works> .
module Network.AWS.SageMaker.CreateTrainingJob
  ( -- * Creating a Request
    createTrainingJob,
    CreateTrainingJob,

    -- * Request Lenses
    creVPCConfig,
    creDebugRuleConfigurations,
    creInputDataConfig,
    creHyperParameters,
    creEnableManagedSpotTraining,
    creProfilerConfig,
    creExperimentConfig,
    creEnableNetworkIsolation,
    creEnableInterContainerTrafficEncryption,
    creCheckpointConfig,
    creProfilerRuleConfigurations,
    creTags,
    creTensorBoardOutputConfig,
    creDebugHookConfig,
    creTrainingJobName,
    creAlgorithmSpecification,
    creRoleARN,
    creOutputDataConfig,
    creResourceConfig,
    creStoppingCondition,

    -- * Destructuring the Response
    createTrainingJobResponse,
    CreateTrainingJobResponse,

    -- * Response Lenses
    ctjrtrsResponseStatus,
    ctjrtrsTrainingJobARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createTrainingJob' smart constructor.
data CreateTrainingJob = CreateTrainingJob'
  { _creVPCConfig ::
      !(Maybe VPCConfig),
    _creDebugRuleConfigurations ::
      !(Maybe [DebugRuleConfiguration]),
    _creInputDataConfig ::
      !(Maybe (List1 Channel)),
    _creHyperParameters ::
      !(Maybe (Map Text Text)),
    _creEnableManagedSpotTraining ::
      !(Maybe Bool),
    _creProfilerConfig ::
      !(Maybe ProfilerConfig),
    _creExperimentConfig ::
      !(Maybe ExperimentConfig),
    _creEnableNetworkIsolation ::
      !(Maybe Bool),
    _creEnableInterContainerTrafficEncryption ::
      !(Maybe Bool),
    _creCheckpointConfig ::
      !(Maybe CheckpointConfig),
    _creProfilerRuleConfigurations ::
      !( Maybe
           [ProfilerRuleConfiguration]
       ),
    _creTags :: !(Maybe [Tag]),
    _creTensorBoardOutputConfig ::
      !(Maybe TensorBoardOutputConfig),
    _creDebugHookConfig ::
      !(Maybe DebugHookConfig),
    _creTrainingJobName :: !Text,
    _creAlgorithmSpecification ::
      !AlgorithmSpecification,
    _creRoleARN :: !Text,
    _creOutputDataConfig ::
      !OutputDataConfig,
    _creResourceConfig ::
      !ResourceConfig,
    _creStoppingCondition ::
      !StoppingCondition
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTrainingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creVPCConfig' - A 'VpcConfig' object that specifies the VPC that you want your training job to connect to. Control access to and from your training container by configuring the VPC. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html Protect Training Jobs by Using an Amazon Virtual Private Cloud> .
--
-- * 'creDebugRuleConfigurations' - Configuration information for Debugger rules for debugging output tensors.
--
-- * 'creInputDataConfig' - An array of @Channel@ objects. Each channel is a named input source. @InputDataConfig@ describes the input data and its location.  Algorithms can accept input data from one or more channels. For example, an algorithm might have two channels of input data, @training_data@ and @validation_data@ . The configuration for each channel provides the S3, EFS, or FSx location where the input data is stored. It also provides information about the stored data: the MIME type, compression method, and whether the data is wrapped in RecordIO format.  Depending on the input mode that the algorithm supports, Amazon SageMaker either copies input data files from an S3 bucket to a local directory in the Docker container, or makes it available as input streams. For example, if you specify an EFS location, input data files will be made available as input streams. They do not need to be downloaded.
--
-- * 'creHyperParameters' - Algorithm-specific parameters that influence the quality of the model. You set hyperparameters before you start the learning process. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see <https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html Algorithms> .  You can specify a maximum of 100 hyperparameters. Each hyperparameter is a key-value pair. Each key and value is limited to 256 characters, as specified by the @Length Constraint@ .
--
-- * 'creEnableManagedSpotTraining' - To train models using managed spot training, choose @True@ . Managed spot training provides a fully managed and scalable infrastructure for training machine learning models. this option is useful when training jobs can be interrupted and when there is flexibility when the training job is run.  The complete and intermediate results of jobs are stored in an Amazon S3 bucket, and can be used as a starting point to train models incrementally. Amazon SageMaker provides metrics and logs in CloudWatch. They can be used to see when managed spot training jobs are running, interrupted, resumed, or completed.
--
-- * 'creProfilerConfig' - Undocumented member.
--
-- * 'creExperimentConfig' - Undocumented member.
--
-- * 'creEnableNetworkIsolation' - Isolates the training container. No inbound or outbound network calls can be made, except for calls between peers within a training cluster for distributed training. If you enable network isolation for training jobs that are configured to use a VPC, Amazon SageMaker downloads and uploads customer data and model artifacts through the specified VPC, but the training container does not have network access.
--
-- * 'creEnableInterContainerTrafficEncryption' - To encrypt all communications between ML compute instances in distributed training, choose @True@ . Encryption provides greater security for distributed training, but training might take longer. How long it takes depends on the amount of communication between compute instances, especially if you use a deep learning algorithm in distributed training. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-encrypt.html Protect Communications Between ML Compute Instances in a Distributed Training Job> .
--
-- * 'creCheckpointConfig' - Contains information about the output location for managed spot training checkpoint data.
--
-- * 'creProfilerRuleConfigurations' - Configuration information for Debugger rules for profiling system and framework metrics.
--
-- * 'creTags' - An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
--
-- * 'creTensorBoardOutputConfig' - Undocumented member.
--
-- * 'creDebugHookConfig' - Undocumented member.
--
-- * 'creTrainingJobName' - The name of the training job. The name must be unique within an AWS Region in an AWS account.
--
-- * 'creAlgorithmSpecification' - The registry path of the Docker image that contains the training algorithm and algorithm-specific metadata, including the input mode. For more information about algorithms provided by Amazon SageMaker, see <https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html Algorithms> . For information about providing your own algorithms, see <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker> .
--
-- * 'creRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.  During model training, Amazon SageMaker needs your permission to read input data from an S3 bucket, download a Docker image that contains training code, write model artifacts to an S3 bucket, write logs to Amazon CloudWatch Logs, and publish metrics to Amazon CloudWatch. You grant permissions for all of these tasks to an IAM role. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html Amazon SageMaker Roles> .
--
-- * 'creOutputDataConfig' - Specifies the path to the S3 location where you want to store model artifacts. Amazon SageMaker creates subfolders for the artifacts.
--
-- * 'creResourceConfig' - The resources, including the ML compute instances and ML storage volumes, to use for model training.  ML storage volumes store model artifacts and incremental states. Training algorithms might also use ML storage volumes for scratch space. If you want Amazon SageMaker to use the ML storage volume to store the training data, choose @File@ as the @TrainingInputMode@ in the algorithm specification. For distributed training algorithms, specify an instance count greater than 1.
--
-- * 'creStoppingCondition' - Specifies a limit to how long a model training job can run. When the job reaches the time limit, Amazon SageMaker ends the training job. Use this API to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the @SIGTERM@ signal, which delays job termination for 120 seconds. Algorithms can use this 120-second window to save the model artifacts, so the results of training are not lost.
createTrainingJob ::
  -- | 'creTrainingJobName'
  Text ->
  -- | 'creAlgorithmSpecification'
  AlgorithmSpecification ->
  -- | 'creRoleARN'
  Text ->
  -- | 'creOutputDataConfig'
  OutputDataConfig ->
  -- | 'creResourceConfig'
  ResourceConfig ->
  -- | 'creStoppingCondition'
  StoppingCondition ->
  CreateTrainingJob
createTrainingJob
  pTrainingJobName_
  pAlgorithmSpecification_
  pRoleARN_
  pOutputDataConfig_
  pResourceConfig_
  pStoppingCondition_ =
    CreateTrainingJob'
      { _creVPCConfig = Nothing,
        _creDebugRuleConfigurations = Nothing,
        _creInputDataConfig = Nothing,
        _creHyperParameters = Nothing,
        _creEnableManagedSpotTraining = Nothing,
        _creProfilerConfig = Nothing,
        _creExperimentConfig = Nothing,
        _creEnableNetworkIsolation = Nothing,
        _creEnableInterContainerTrafficEncryption = Nothing,
        _creCheckpointConfig = Nothing,
        _creProfilerRuleConfigurations = Nothing,
        _creTags = Nothing,
        _creTensorBoardOutputConfig = Nothing,
        _creDebugHookConfig = Nothing,
        _creTrainingJobName = pTrainingJobName_,
        _creAlgorithmSpecification =
          pAlgorithmSpecification_,
        _creRoleARN = pRoleARN_,
        _creOutputDataConfig = pOutputDataConfig_,
        _creResourceConfig = pResourceConfig_,
        _creStoppingCondition = pStoppingCondition_
      }

-- | A 'VpcConfig' object that specifies the VPC that you want your training job to connect to. Control access to and from your training container by configuring the VPC. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html Protect Training Jobs by Using an Amazon Virtual Private Cloud> .
creVPCConfig :: Lens' CreateTrainingJob (Maybe VPCConfig)
creVPCConfig = lens _creVPCConfig (\s a -> s {_creVPCConfig = a})

-- | Configuration information for Debugger rules for debugging output tensors.
creDebugRuleConfigurations :: Lens' CreateTrainingJob [DebugRuleConfiguration]
creDebugRuleConfigurations = lens _creDebugRuleConfigurations (\s a -> s {_creDebugRuleConfigurations = a}) . _Default . _Coerce

-- | An array of @Channel@ objects. Each channel is a named input source. @InputDataConfig@ describes the input data and its location.  Algorithms can accept input data from one or more channels. For example, an algorithm might have two channels of input data, @training_data@ and @validation_data@ . The configuration for each channel provides the S3, EFS, or FSx location where the input data is stored. It also provides information about the stored data: the MIME type, compression method, and whether the data is wrapped in RecordIO format.  Depending on the input mode that the algorithm supports, Amazon SageMaker either copies input data files from an S3 bucket to a local directory in the Docker container, or makes it available as input streams. For example, if you specify an EFS location, input data files will be made available as input streams. They do not need to be downloaded.
creInputDataConfig :: Lens' CreateTrainingJob (Maybe (NonEmpty Channel))
creInputDataConfig = lens _creInputDataConfig (\s a -> s {_creInputDataConfig = a}) . mapping _List1

-- | Algorithm-specific parameters that influence the quality of the model. You set hyperparameters before you start the learning process. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see <https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html Algorithms> .  You can specify a maximum of 100 hyperparameters. Each hyperparameter is a key-value pair. Each key and value is limited to 256 characters, as specified by the @Length Constraint@ .
creHyperParameters :: Lens' CreateTrainingJob (HashMap Text Text)
creHyperParameters = lens _creHyperParameters (\s a -> s {_creHyperParameters = a}) . _Default . _Map

-- | To train models using managed spot training, choose @True@ . Managed spot training provides a fully managed and scalable infrastructure for training machine learning models. this option is useful when training jobs can be interrupted and when there is flexibility when the training job is run.  The complete and intermediate results of jobs are stored in an Amazon S3 bucket, and can be used as a starting point to train models incrementally. Amazon SageMaker provides metrics and logs in CloudWatch. They can be used to see when managed spot training jobs are running, interrupted, resumed, or completed.
creEnableManagedSpotTraining :: Lens' CreateTrainingJob (Maybe Bool)
creEnableManagedSpotTraining = lens _creEnableManagedSpotTraining (\s a -> s {_creEnableManagedSpotTraining = a})

-- | Undocumented member.
creProfilerConfig :: Lens' CreateTrainingJob (Maybe ProfilerConfig)
creProfilerConfig = lens _creProfilerConfig (\s a -> s {_creProfilerConfig = a})

-- | Undocumented member.
creExperimentConfig :: Lens' CreateTrainingJob (Maybe ExperimentConfig)
creExperimentConfig = lens _creExperimentConfig (\s a -> s {_creExperimentConfig = a})

-- | Isolates the training container. No inbound or outbound network calls can be made, except for calls between peers within a training cluster for distributed training. If you enable network isolation for training jobs that are configured to use a VPC, Amazon SageMaker downloads and uploads customer data and model artifacts through the specified VPC, but the training container does not have network access.
creEnableNetworkIsolation :: Lens' CreateTrainingJob (Maybe Bool)
creEnableNetworkIsolation = lens _creEnableNetworkIsolation (\s a -> s {_creEnableNetworkIsolation = a})

-- | To encrypt all communications between ML compute instances in distributed training, choose @True@ . Encryption provides greater security for distributed training, but training might take longer. How long it takes depends on the amount of communication between compute instances, especially if you use a deep learning algorithm in distributed training. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-encrypt.html Protect Communications Between ML Compute Instances in a Distributed Training Job> .
creEnableInterContainerTrafficEncryption :: Lens' CreateTrainingJob (Maybe Bool)
creEnableInterContainerTrafficEncryption = lens _creEnableInterContainerTrafficEncryption (\s a -> s {_creEnableInterContainerTrafficEncryption = a})

-- | Contains information about the output location for managed spot training checkpoint data.
creCheckpointConfig :: Lens' CreateTrainingJob (Maybe CheckpointConfig)
creCheckpointConfig = lens _creCheckpointConfig (\s a -> s {_creCheckpointConfig = a})

-- | Configuration information for Debugger rules for profiling system and framework metrics.
creProfilerRuleConfigurations :: Lens' CreateTrainingJob [ProfilerRuleConfiguration]
creProfilerRuleConfigurations = lens _creProfilerRuleConfigurations (\s a -> s {_creProfilerRuleConfigurations = a}) . _Default . _Coerce

-- | An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
creTags :: Lens' CreateTrainingJob [Tag]
creTags = lens _creTags (\s a -> s {_creTags = a}) . _Default . _Coerce

-- | Undocumented member.
creTensorBoardOutputConfig :: Lens' CreateTrainingJob (Maybe TensorBoardOutputConfig)
creTensorBoardOutputConfig = lens _creTensorBoardOutputConfig (\s a -> s {_creTensorBoardOutputConfig = a})

-- | Undocumented member.
creDebugHookConfig :: Lens' CreateTrainingJob (Maybe DebugHookConfig)
creDebugHookConfig = lens _creDebugHookConfig (\s a -> s {_creDebugHookConfig = a})

-- | The name of the training job. The name must be unique within an AWS Region in an AWS account.
creTrainingJobName :: Lens' CreateTrainingJob Text
creTrainingJobName = lens _creTrainingJobName (\s a -> s {_creTrainingJobName = a})

-- | The registry path of the Docker image that contains the training algorithm and algorithm-specific metadata, including the input mode. For more information about algorithms provided by Amazon SageMaker, see <https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html Algorithms> . For information about providing your own algorithms, see <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker> .
creAlgorithmSpecification :: Lens' CreateTrainingJob AlgorithmSpecification
creAlgorithmSpecification = lens _creAlgorithmSpecification (\s a -> s {_creAlgorithmSpecification = a})

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.  During model training, Amazon SageMaker needs your permission to read input data from an S3 bucket, download a Docker image that contains training code, write model artifacts to an S3 bucket, write logs to Amazon CloudWatch Logs, and publish metrics to Amazon CloudWatch. You grant permissions for all of these tasks to an IAM role. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html Amazon SageMaker Roles> .
creRoleARN :: Lens' CreateTrainingJob Text
creRoleARN = lens _creRoleARN (\s a -> s {_creRoleARN = a})

-- | Specifies the path to the S3 location where you want to store model artifacts. Amazon SageMaker creates subfolders for the artifacts.
creOutputDataConfig :: Lens' CreateTrainingJob OutputDataConfig
creOutputDataConfig = lens _creOutputDataConfig (\s a -> s {_creOutputDataConfig = a})

-- | The resources, including the ML compute instances and ML storage volumes, to use for model training.  ML storage volumes store model artifacts and incremental states. Training algorithms might also use ML storage volumes for scratch space. If you want Amazon SageMaker to use the ML storage volume to store the training data, choose @File@ as the @TrainingInputMode@ in the algorithm specification. For distributed training algorithms, specify an instance count greater than 1.
creResourceConfig :: Lens' CreateTrainingJob ResourceConfig
creResourceConfig = lens _creResourceConfig (\s a -> s {_creResourceConfig = a})

-- | Specifies a limit to how long a model training job can run. When the job reaches the time limit, Amazon SageMaker ends the training job. Use this API to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the @SIGTERM@ signal, which delays job termination for 120 seconds. Algorithms can use this 120-second window to save the model artifacts, so the results of training are not lost.
creStoppingCondition :: Lens' CreateTrainingJob StoppingCondition
creStoppingCondition = lens _creStoppingCondition (\s a -> s {_creStoppingCondition = a})

instance AWSRequest CreateTrainingJob where
  type Rs CreateTrainingJob = CreateTrainingJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateTrainingJobResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "TrainingJobArn")
      )

instance Hashable CreateTrainingJob

instance NFData CreateTrainingJob

instance ToHeaders CreateTrainingJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateTrainingJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateTrainingJob where
  toJSON CreateTrainingJob' {..} =
    object
      ( catMaybes
          [ ("VpcConfig" .=) <$> _creVPCConfig,
            ("DebugRuleConfigurations" .=)
              <$> _creDebugRuleConfigurations,
            ("InputDataConfig" .=) <$> _creInputDataConfig,
            ("HyperParameters" .=) <$> _creHyperParameters,
            ("EnableManagedSpotTraining" .=)
              <$> _creEnableManagedSpotTraining,
            ("ProfilerConfig" .=) <$> _creProfilerConfig,
            ("ExperimentConfig" .=) <$> _creExperimentConfig,
            ("EnableNetworkIsolation" .=)
              <$> _creEnableNetworkIsolation,
            ("EnableInterContainerTrafficEncryption" .=)
              <$> _creEnableInterContainerTrafficEncryption,
            ("CheckpointConfig" .=) <$> _creCheckpointConfig,
            ("ProfilerRuleConfigurations" .=)
              <$> _creProfilerRuleConfigurations,
            ("Tags" .=) <$> _creTags,
            ("TensorBoardOutputConfig" .=)
              <$> _creTensorBoardOutputConfig,
            ("DebugHookConfig" .=) <$> _creDebugHookConfig,
            Just ("TrainingJobName" .= _creTrainingJobName),
            Just
              ( "AlgorithmSpecification"
                  .= _creAlgorithmSpecification
              ),
            Just ("RoleArn" .= _creRoleARN),
            Just ("OutputDataConfig" .= _creOutputDataConfig),
            Just ("ResourceConfig" .= _creResourceConfig),
            Just ("StoppingCondition" .= _creStoppingCondition)
          ]
      )

instance ToPath CreateTrainingJob where
  toPath = const "/"

instance ToQuery CreateTrainingJob where
  toQuery = const mempty

-- | /See:/ 'createTrainingJobResponse' smart constructor.
data CreateTrainingJobResponse = CreateTrainingJobResponse'
  { _ctjrtrsResponseStatus ::
      !Int,
    _ctjrtrsTrainingJobARN ::
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

-- | Creates a value of 'CreateTrainingJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctjrtrsResponseStatus' - -- | The response status code.
--
-- * 'ctjrtrsTrainingJobARN' - The Amazon Resource Name (ARN) of the training job.
createTrainingJobResponse ::
  -- | 'ctjrtrsResponseStatus'
  Int ->
  -- | 'ctjrtrsTrainingJobARN'
  Text ->
  CreateTrainingJobResponse
createTrainingJobResponse
  pResponseStatus_
  pTrainingJobARN_ =
    CreateTrainingJobResponse'
      { _ctjrtrsResponseStatus =
          pResponseStatus_,
        _ctjrtrsTrainingJobARN = pTrainingJobARN_
      }

-- | -- | The response status code.
ctjrtrsResponseStatus :: Lens' CreateTrainingJobResponse Int
ctjrtrsResponseStatus = lens _ctjrtrsResponseStatus (\s a -> s {_ctjrtrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the training job.
ctjrtrsTrainingJobARN :: Lens' CreateTrainingJobResponse Text
ctjrtrsTrainingJobARN = lens _ctjrtrsTrainingJobARN (\s a -> s {_ctjrtrsTrainingJobARN = a})

instance NFData CreateTrainingJobResponse
