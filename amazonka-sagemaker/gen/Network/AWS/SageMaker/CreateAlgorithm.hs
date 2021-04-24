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
-- Module      : Network.AWS.SageMaker.CreateAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a machine learning algorithm that you can use in Amazon SageMaker and list in the AWS Marketplace.
module Network.AWS.SageMaker.CreateAlgorithm
  ( -- * Creating a Request
    createAlgorithm,
    CreateAlgorithm,

    -- * Request Lenses
    crerAlgorithmDescription,
    crerValidationSpecification,
    crerCertifyForMarketplace,
    crerTags,
    crerInferenceSpecification,
    crerAlgorithmName,
    crerTrainingSpecification,

    -- * Destructuring the Response
    createAlgorithmResponse,
    CreateAlgorithmResponse,

    -- * Response Lenses
    cararsResponseStatus,
    cararsAlgorithmARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createAlgorithm' smart constructor.
data CreateAlgorithm = CreateAlgorithm'
  { _crerAlgorithmDescription ::
      !(Maybe Text),
    _crerValidationSpecification ::
      !( Maybe
           AlgorithmValidationSpecification
       ),
    _crerCertifyForMarketplace ::
      !(Maybe Bool),
    _crerTags :: !(Maybe [Tag]),
    _crerInferenceSpecification ::
      !(Maybe InferenceSpecification),
    _crerAlgorithmName :: !Text,
    _crerTrainingSpecification ::
      !TrainingSpecification
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAlgorithm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crerAlgorithmDescription' - A description of the algorithm.
--
-- * 'crerValidationSpecification' - Specifies configurations for one or more training jobs and that Amazon SageMaker runs to test the algorithm's training code and, optionally, one or more batch transform jobs that Amazon SageMaker runs to test the algorithm's inference code.
--
-- * 'crerCertifyForMarketplace' - Whether to certify the algorithm so that it can be listed in AWS Marketplace.
--
-- * 'crerTags' - An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
--
-- * 'crerInferenceSpecification' - Specifies details about inference jobs that the algorithm runs, including the following:     * The Amazon ECR paths of containers that contain the inference code and model artifacts.     * The instance types that the algorithm supports for transform jobs and real-time endpoints used for inference.     * The input and output content formats that the algorithm supports for inference.
--
-- * 'crerAlgorithmName' - The name of the algorithm.
--
-- * 'crerTrainingSpecification' - Specifies details about training jobs run by this algorithm, including the following:     * The Amazon ECR path of the container and the version digest of the algorithm.     * The hyperparameters that the algorithm supports.     * The instance types that the algorithm supports for training.     * Whether the algorithm supports distributed training.     * The metrics that the algorithm emits to Amazon CloudWatch.     * Which metrics that the algorithm emits can be used as the objective metric for hyperparameter tuning jobs.     * The input channels that the algorithm supports for training data. For example, an algorithm might support @train@ , @validation@ , and @test@ channels.
createAlgorithm ::
  -- | 'crerAlgorithmName'
  Text ->
  -- | 'crerTrainingSpecification'
  TrainingSpecification ->
  CreateAlgorithm
createAlgorithm
  pAlgorithmName_
  pTrainingSpecification_ =
    CreateAlgorithm'
      { _crerAlgorithmDescription =
          Nothing,
        _crerValidationSpecification = Nothing,
        _crerCertifyForMarketplace = Nothing,
        _crerTags = Nothing,
        _crerInferenceSpecification = Nothing,
        _crerAlgorithmName = pAlgorithmName_,
        _crerTrainingSpecification = pTrainingSpecification_
      }

-- | A description of the algorithm.
crerAlgorithmDescription :: Lens' CreateAlgorithm (Maybe Text)
crerAlgorithmDescription = lens _crerAlgorithmDescription (\s a -> s {_crerAlgorithmDescription = a})

-- | Specifies configurations for one or more training jobs and that Amazon SageMaker runs to test the algorithm's training code and, optionally, one or more batch transform jobs that Amazon SageMaker runs to test the algorithm's inference code.
crerValidationSpecification :: Lens' CreateAlgorithm (Maybe AlgorithmValidationSpecification)
crerValidationSpecification = lens _crerValidationSpecification (\s a -> s {_crerValidationSpecification = a})

-- | Whether to certify the algorithm so that it can be listed in AWS Marketplace.
crerCertifyForMarketplace :: Lens' CreateAlgorithm (Maybe Bool)
crerCertifyForMarketplace = lens _crerCertifyForMarketplace (\s a -> s {_crerCertifyForMarketplace = a})

-- | An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
crerTags :: Lens' CreateAlgorithm [Tag]
crerTags = lens _crerTags (\s a -> s {_crerTags = a}) . _Default . _Coerce

-- | Specifies details about inference jobs that the algorithm runs, including the following:     * The Amazon ECR paths of containers that contain the inference code and model artifacts.     * The instance types that the algorithm supports for transform jobs and real-time endpoints used for inference.     * The input and output content formats that the algorithm supports for inference.
crerInferenceSpecification :: Lens' CreateAlgorithm (Maybe InferenceSpecification)
crerInferenceSpecification = lens _crerInferenceSpecification (\s a -> s {_crerInferenceSpecification = a})

-- | The name of the algorithm.
crerAlgorithmName :: Lens' CreateAlgorithm Text
crerAlgorithmName = lens _crerAlgorithmName (\s a -> s {_crerAlgorithmName = a})

-- | Specifies details about training jobs run by this algorithm, including the following:     * The Amazon ECR path of the container and the version digest of the algorithm.     * The hyperparameters that the algorithm supports.     * The instance types that the algorithm supports for training.     * Whether the algorithm supports distributed training.     * The metrics that the algorithm emits to Amazon CloudWatch.     * Which metrics that the algorithm emits can be used as the objective metric for hyperparameter tuning jobs.     * The input channels that the algorithm supports for training data. For example, an algorithm might support @train@ , @validation@ , and @test@ channels.
crerTrainingSpecification :: Lens' CreateAlgorithm TrainingSpecification
crerTrainingSpecification = lens _crerTrainingSpecification (\s a -> s {_crerTrainingSpecification = a})

instance AWSRequest CreateAlgorithm where
  type Rs CreateAlgorithm = CreateAlgorithmResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateAlgorithmResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "AlgorithmArn")
      )

instance Hashable CreateAlgorithm

instance NFData CreateAlgorithm

instance ToHeaders CreateAlgorithm where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateAlgorithm" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateAlgorithm where
  toJSON CreateAlgorithm' {..} =
    object
      ( catMaybes
          [ ("AlgorithmDescription" .=)
              <$> _crerAlgorithmDescription,
            ("ValidationSpecification" .=)
              <$> _crerValidationSpecification,
            ("CertifyForMarketplace" .=)
              <$> _crerCertifyForMarketplace,
            ("Tags" .=) <$> _crerTags,
            ("InferenceSpecification" .=)
              <$> _crerInferenceSpecification,
            Just ("AlgorithmName" .= _crerAlgorithmName),
            Just
              ( "TrainingSpecification"
                  .= _crerTrainingSpecification
              )
          ]
      )

instance ToPath CreateAlgorithm where
  toPath = const "/"

instance ToQuery CreateAlgorithm where
  toQuery = const mempty

-- | /See:/ 'createAlgorithmResponse' smart constructor.
data CreateAlgorithmResponse = CreateAlgorithmResponse'
  { _cararsResponseStatus ::
      !Int,
    _cararsAlgorithmARN ::
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

-- | Creates a value of 'CreateAlgorithmResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cararsResponseStatus' - -- | The response status code.
--
-- * 'cararsAlgorithmARN' - The Amazon Resource Name (ARN) of the new algorithm.
createAlgorithmResponse ::
  -- | 'cararsResponseStatus'
  Int ->
  -- | 'cararsAlgorithmARN'
  Text ->
  CreateAlgorithmResponse
createAlgorithmResponse
  pResponseStatus_
  pAlgorithmARN_ =
    CreateAlgorithmResponse'
      { _cararsResponseStatus =
          pResponseStatus_,
        _cararsAlgorithmARN = pAlgorithmARN_
      }

-- | -- | The response status code.
cararsResponseStatus :: Lens' CreateAlgorithmResponse Int
cararsResponseStatus = lens _cararsResponseStatus (\s a -> s {_cararsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the new algorithm.
cararsAlgorithmARN :: Lens' CreateAlgorithmResponse Text
cararsAlgorithmARN = lens _cararsAlgorithmARN (\s a -> s {_cararsAlgorithmARN = a})

instance NFData CreateAlgorithmResponse
