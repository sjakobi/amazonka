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
-- Module      : Network.AWS.SageMaker.DescribeAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of the specified algorithm that is in your account.
module Network.AWS.SageMaker.DescribeAlgorithm
  ( -- * Creating a Request
    describeAlgorithm,
    DescribeAlgorithm,

    -- * Request Lenses
    dAlgorithmName,

    -- * Destructuring the Response
    describeAlgorithmResponse,
    DescribeAlgorithmResponse,

    -- * Response Lenses
    desrsAlgorithmDescription,
    desrsValidationSpecification,
    desrsCertifyForMarketplace,
    desrsProductId,
    desrsInferenceSpecification,
    desrsResponseStatus,
    desrsAlgorithmName,
    desrsAlgorithmARN,
    desrsCreationTime,
    desrsTrainingSpecification,
    desrsAlgorithmStatus,
    desrsAlgorithmStatusDetails,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeAlgorithm' smart constructor.
newtype DescribeAlgorithm = DescribeAlgorithm'
  { _dAlgorithmName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAlgorithm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAlgorithmName' - The name of the algorithm to describe.
describeAlgorithm ::
  -- | 'dAlgorithmName'
  Text ->
  DescribeAlgorithm
describeAlgorithm pAlgorithmName_ =
  DescribeAlgorithm'
    { _dAlgorithmName =
        pAlgorithmName_
    }

-- | The name of the algorithm to describe.
dAlgorithmName :: Lens' DescribeAlgorithm Text
dAlgorithmName = lens _dAlgorithmName (\s a -> s {_dAlgorithmName = a})

instance AWSRequest DescribeAlgorithm where
  type Rs DescribeAlgorithm = DescribeAlgorithmResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeAlgorithmResponse'
            <$> (x .?> "AlgorithmDescription")
            <*> (x .?> "ValidationSpecification")
            <*> (x .?> "CertifyForMarketplace")
            <*> (x .?> "ProductId")
            <*> (x .?> "InferenceSpecification")
            <*> (pure (fromEnum s))
            <*> (x .:> "AlgorithmName")
            <*> (x .:> "AlgorithmArn")
            <*> (x .:> "CreationTime")
            <*> (x .:> "TrainingSpecification")
            <*> (x .:> "AlgorithmStatus")
            <*> (x .:> "AlgorithmStatusDetails")
      )

instance Hashable DescribeAlgorithm

instance NFData DescribeAlgorithm

instance ToHeaders DescribeAlgorithm where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeAlgorithm" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAlgorithm where
  toJSON DescribeAlgorithm' {..} =
    object
      ( catMaybes
          [Just ("AlgorithmName" .= _dAlgorithmName)]
      )

instance ToPath DescribeAlgorithm where
  toPath = const "/"

instance ToQuery DescribeAlgorithm where
  toQuery = const mempty

-- | /See:/ 'describeAlgorithmResponse' smart constructor.
data DescribeAlgorithmResponse = DescribeAlgorithmResponse'
  { _desrsAlgorithmDescription ::
      !(Maybe Text),
    _desrsValidationSpecification ::
      !( Maybe
           AlgorithmValidationSpecification
       ),
    _desrsCertifyForMarketplace ::
      !(Maybe Bool),
    _desrsProductId ::
      !(Maybe Text),
    _desrsInferenceSpecification ::
      !( Maybe
           InferenceSpecification
       ),
    _desrsResponseStatus ::
      !Int,
    _desrsAlgorithmName ::
      !Text,
    _desrsAlgorithmARN ::
      !Text,
    _desrsCreationTime ::
      !POSIX,
    _desrsTrainingSpecification ::
      !TrainingSpecification,
    _desrsAlgorithmStatus ::
      !AlgorithmStatus,
    _desrsAlgorithmStatusDetails ::
      !AlgorithmStatusDetails
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAlgorithmResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsAlgorithmDescription' - A brief summary about the algorithm.
--
-- * 'desrsValidationSpecification' - Details about configurations for one or more training jobs that Amazon SageMaker runs to test the algorithm.
--
-- * 'desrsCertifyForMarketplace' - Whether the algorithm is certified to be listed in AWS Marketplace.
--
-- * 'desrsProductId' - The product identifier of the algorithm.
--
-- * 'desrsInferenceSpecification' - Details about inference jobs that the algorithm runs.
--
-- * 'desrsResponseStatus' - -- | The response status code.
--
-- * 'desrsAlgorithmName' - The name of the algorithm being described.
--
-- * 'desrsAlgorithmARN' - The Amazon Resource Name (ARN) of the algorithm.
--
-- * 'desrsCreationTime' - A timestamp specifying when the algorithm was created.
--
-- * 'desrsTrainingSpecification' - Details about training jobs run by this algorithm.
--
-- * 'desrsAlgorithmStatus' - The current status of the algorithm.
--
-- * 'desrsAlgorithmStatusDetails' - Details about the current status of the algorithm.
describeAlgorithmResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  -- | 'desrsAlgorithmName'
  Text ->
  -- | 'desrsAlgorithmARN'
  Text ->
  -- | 'desrsCreationTime'
  UTCTime ->
  -- | 'desrsTrainingSpecification'
  TrainingSpecification ->
  -- | 'desrsAlgorithmStatus'
  AlgorithmStatus ->
  -- | 'desrsAlgorithmStatusDetails'
  AlgorithmStatusDetails ->
  DescribeAlgorithmResponse
describeAlgorithmResponse
  pResponseStatus_
  pAlgorithmName_
  pAlgorithmARN_
  pCreationTime_
  pTrainingSpecification_
  pAlgorithmStatus_
  pAlgorithmStatusDetails_ =
    DescribeAlgorithmResponse'
      { _desrsAlgorithmDescription =
          Nothing,
        _desrsValidationSpecification = Nothing,
        _desrsCertifyForMarketplace = Nothing,
        _desrsProductId = Nothing,
        _desrsInferenceSpecification = Nothing,
        _desrsResponseStatus = pResponseStatus_,
        _desrsAlgorithmName = pAlgorithmName_,
        _desrsAlgorithmARN = pAlgorithmARN_,
        _desrsCreationTime = _Time # pCreationTime_,
        _desrsTrainingSpecification =
          pTrainingSpecification_,
        _desrsAlgorithmStatus = pAlgorithmStatus_,
        _desrsAlgorithmStatusDetails =
          pAlgorithmStatusDetails_
      }

-- | A brief summary about the algorithm.
desrsAlgorithmDescription :: Lens' DescribeAlgorithmResponse (Maybe Text)
desrsAlgorithmDescription = lens _desrsAlgorithmDescription (\s a -> s {_desrsAlgorithmDescription = a})

-- | Details about configurations for one or more training jobs that Amazon SageMaker runs to test the algorithm.
desrsValidationSpecification :: Lens' DescribeAlgorithmResponse (Maybe AlgorithmValidationSpecification)
desrsValidationSpecification = lens _desrsValidationSpecification (\s a -> s {_desrsValidationSpecification = a})

-- | Whether the algorithm is certified to be listed in AWS Marketplace.
desrsCertifyForMarketplace :: Lens' DescribeAlgorithmResponse (Maybe Bool)
desrsCertifyForMarketplace = lens _desrsCertifyForMarketplace (\s a -> s {_desrsCertifyForMarketplace = a})

-- | The product identifier of the algorithm.
desrsProductId :: Lens' DescribeAlgorithmResponse (Maybe Text)
desrsProductId = lens _desrsProductId (\s a -> s {_desrsProductId = a})

-- | Details about inference jobs that the algorithm runs.
desrsInferenceSpecification :: Lens' DescribeAlgorithmResponse (Maybe InferenceSpecification)
desrsInferenceSpecification = lens _desrsInferenceSpecification (\s a -> s {_desrsInferenceSpecification = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeAlgorithmResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

-- | The name of the algorithm being described.
desrsAlgorithmName :: Lens' DescribeAlgorithmResponse Text
desrsAlgorithmName = lens _desrsAlgorithmName (\s a -> s {_desrsAlgorithmName = a})

-- | The Amazon Resource Name (ARN) of the algorithm.
desrsAlgorithmARN :: Lens' DescribeAlgorithmResponse Text
desrsAlgorithmARN = lens _desrsAlgorithmARN (\s a -> s {_desrsAlgorithmARN = a})

-- | A timestamp specifying when the algorithm was created.
desrsCreationTime :: Lens' DescribeAlgorithmResponse UTCTime
desrsCreationTime = lens _desrsCreationTime (\s a -> s {_desrsCreationTime = a}) . _Time

-- | Details about training jobs run by this algorithm.
desrsTrainingSpecification :: Lens' DescribeAlgorithmResponse TrainingSpecification
desrsTrainingSpecification = lens _desrsTrainingSpecification (\s a -> s {_desrsTrainingSpecification = a})

-- | The current status of the algorithm.
desrsAlgorithmStatus :: Lens' DescribeAlgorithmResponse AlgorithmStatus
desrsAlgorithmStatus = lens _desrsAlgorithmStatus (\s a -> s {_desrsAlgorithmStatus = a})

-- | Details about the current status of the algorithm.
desrsAlgorithmStatusDetails :: Lens' DescribeAlgorithmResponse AlgorithmStatusDetails
desrsAlgorithmStatusDetails = lens _desrsAlgorithmStatusDetails (\s a -> s {_desrsAlgorithmStatusDetails = a})

instance NFData DescribeAlgorithmResponse
