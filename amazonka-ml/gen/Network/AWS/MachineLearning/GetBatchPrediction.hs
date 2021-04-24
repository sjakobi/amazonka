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
-- Module      : Network.AWS.MachineLearning.GetBatchPrediction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a @BatchPrediction@ that includes detailed metadata, status, and data file information for a @Batch Prediction@ request.
module Network.AWS.MachineLearning.GetBatchPrediction
  ( -- * Creating a Request
    getBatchPrediction,
    GetBatchPrediction,

    -- * Request Lenses
    gbpBatchPredictionId,

    -- * Destructuring the Response
    getBatchPredictionResponse,
    GetBatchPredictionResponse,

    -- * Response Lenses
    gbprrsBatchPredictionId,
    gbprrsStatus,
    gbprrsStartedAt,
    gbprrsOutputURI,
    gbprrsMessage,
    gbprrsCreatedAt,
    gbprrsFinishedAt,
    gbprrsCreatedByIAMUser,
    gbprrsName,
    gbprrsInvalidRecordCount,
    gbprrsTotalRecordCount,
    gbprrsBatchPredictionDataSourceId,
    gbprrsMLModelId,
    gbprrsInputDataLocationS3,
    gbprrsComputeTime,
    gbprrsLastUpdatedAt,
    gbprrsLogURI,
    gbprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBatchPrediction' smart constructor.
newtype GetBatchPrediction = GetBatchPrediction'
  { _gbpBatchPredictionId ::
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

-- | Creates a value of 'GetBatchPrediction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbpBatchPredictionId' - An ID assigned to the @BatchPrediction@ at creation.
getBatchPrediction ::
  -- | 'gbpBatchPredictionId'
  Text ->
  GetBatchPrediction
getBatchPrediction pBatchPredictionId_ =
  GetBatchPrediction'
    { _gbpBatchPredictionId =
        pBatchPredictionId_
    }

-- | An ID assigned to the @BatchPrediction@ at creation.
gbpBatchPredictionId :: Lens' GetBatchPrediction Text
gbpBatchPredictionId = lens _gbpBatchPredictionId (\s a -> s {_gbpBatchPredictionId = a})

instance AWSRequest GetBatchPrediction where
  type
    Rs GetBatchPrediction =
      GetBatchPredictionResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          GetBatchPredictionResponse'
            <$> (x .?> "BatchPredictionId")
            <*> (x .?> "Status")
            <*> (x .?> "StartedAt")
            <*> (x .?> "OutputUri")
            <*> (x .?> "Message")
            <*> (x .?> "CreatedAt")
            <*> (x .?> "FinishedAt")
            <*> (x .?> "CreatedByIamUser")
            <*> (x .?> "Name")
            <*> (x .?> "InvalidRecordCount")
            <*> (x .?> "TotalRecordCount")
            <*> (x .?> "BatchPredictionDataSourceId")
            <*> (x .?> "MLModelId")
            <*> (x .?> "InputDataLocationS3")
            <*> (x .?> "ComputeTime")
            <*> (x .?> "LastUpdatedAt")
            <*> (x .?> "LogUri")
            <*> (pure (fromEnum s))
      )

instance Hashable GetBatchPrediction

instance NFData GetBatchPrediction

instance ToHeaders GetBatchPrediction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonML_20141212.GetBatchPrediction" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetBatchPrediction where
  toJSON GetBatchPrediction' {..} =
    object
      ( catMaybes
          [ Just
              ("BatchPredictionId" .= _gbpBatchPredictionId)
          ]
      )

instance ToPath GetBatchPrediction where
  toPath = const "/"

instance ToQuery GetBatchPrediction where
  toQuery = const mempty

-- | Represents the output of a @GetBatchPrediction@ operation and describes a @BatchPrediction@ .
--
--
--
-- /See:/ 'getBatchPredictionResponse' smart constructor.
data GetBatchPredictionResponse = GetBatchPredictionResponse'
  { _gbprrsBatchPredictionId ::
      !(Maybe Text),
    _gbprrsStatus ::
      !( Maybe
           EntityStatus
       ),
    _gbprrsStartedAt ::
      !(Maybe POSIX),
    _gbprrsOutputURI ::
      !(Maybe Text),
    _gbprrsMessage ::
      !(Maybe Text),
    _gbprrsCreatedAt ::
      !(Maybe POSIX),
    _gbprrsFinishedAt ::
      !(Maybe POSIX),
    _gbprrsCreatedByIAMUser ::
      !(Maybe Text),
    _gbprrsName ::
      !(Maybe Text),
    _gbprrsInvalidRecordCount ::
      !(Maybe Integer),
    _gbprrsTotalRecordCount ::
      !(Maybe Integer),
    _gbprrsBatchPredictionDataSourceId ::
      !(Maybe Text),
    _gbprrsMLModelId ::
      !(Maybe Text),
    _gbprrsInputDataLocationS3 ::
      !(Maybe Text),
    _gbprrsComputeTime ::
      !(Maybe Integer),
    _gbprrsLastUpdatedAt ::
      !(Maybe POSIX),
    _gbprrsLogURI ::
      !(Maybe Text),
    _gbprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetBatchPredictionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbprrsBatchPredictionId' - An ID assigned to the @BatchPrediction@ at creation. This value should be identical to the value of the @BatchPredictionID@ in the request.
--
-- * 'gbprrsStatus' - The status of the @BatchPrediction@ , which can be one of the following values:     * @PENDING@ - Amazon Machine Learning (Amazon ML) submitted a request to generate batch predictions.    * @INPROGRESS@ - The batch predictions are in progress.    * @FAILED@ - The request to perform a batch prediction did not run to completion. It is not usable.    * @COMPLETED@ - The batch prediction process completed successfully.    * @DELETED@ - The @BatchPrediction@ is marked as deleted. It is not usable.
--
-- * 'gbprrsStartedAt' - The epoch time when Amazon Machine Learning marked the @BatchPrediction@ as @INPROGRESS@ . @StartedAt@ isn't available if the @BatchPrediction@ is in the @PENDING@ state.
--
-- * 'gbprrsOutputURI' - The location of an Amazon S3 bucket or directory to receive the operation results.
--
-- * 'gbprrsMessage' - A description of the most recent details about processing the batch prediction request.
--
-- * 'gbprrsCreatedAt' - The time when the @BatchPrediction@ was created. The time is expressed in epoch time.
--
-- * 'gbprrsFinishedAt' - The epoch time when Amazon Machine Learning marked the @BatchPrediction@ as @COMPLETED@ or @FAILED@ . @FinishedAt@ is only available when the @BatchPrediction@ is in the @COMPLETED@ or @FAILED@ state.
--
-- * 'gbprrsCreatedByIAMUser' - The AWS user account that invoked the @BatchPrediction@ . The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
--
-- * 'gbprrsName' - A user-supplied name or description of the @BatchPrediction@ .
--
-- * 'gbprrsInvalidRecordCount' - The number of invalid records that Amazon Machine Learning saw while processing the @BatchPrediction@ .
--
-- * 'gbprrsTotalRecordCount' - The number of total records that Amazon Machine Learning saw while processing the @BatchPrediction@ .
--
-- * 'gbprrsBatchPredictionDataSourceId' - The ID of the @DataSource@ that was used to create the @BatchPrediction@ .
--
-- * 'gbprrsMLModelId' - The ID of the @MLModel@ that generated predictions for the @BatchPrediction@ request.
--
-- * 'gbprrsInputDataLocationS3' - The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
--
-- * 'gbprrsComputeTime' - The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the @BatchPrediction@ , normalized and scaled on computation resources. @ComputeTime@ is only available if the @BatchPrediction@ is in the @COMPLETED@ state.
--
-- * 'gbprrsLastUpdatedAt' - The time of the most recent edit to @BatchPrediction@ . The time is expressed in epoch time.
--
-- * 'gbprrsLogURI' - A link to the file that contains logs of the @CreateBatchPrediction@ operation.
--
-- * 'gbprrsResponseStatus' - -- | The response status code.
getBatchPredictionResponse ::
  -- | 'gbprrsResponseStatus'
  Int ->
  GetBatchPredictionResponse
getBatchPredictionResponse pResponseStatus_ =
  GetBatchPredictionResponse'
    { _gbprrsBatchPredictionId =
        Nothing,
      _gbprrsStatus = Nothing,
      _gbprrsStartedAt = Nothing,
      _gbprrsOutputURI = Nothing,
      _gbprrsMessage = Nothing,
      _gbprrsCreatedAt = Nothing,
      _gbprrsFinishedAt = Nothing,
      _gbprrsCreatedByIAMUser = Nothing,
      _gbprrsName = Nothing,
      _gbprrsInvalidRecordCount = Nothing,
      _gbprrsTotalRecordCount = Nothing,
      _gbprrsBatchPredictionDataSourceId = Nothing,
      _gbprrsMLModelId = Nothing,
      _gbprrsInputDataLocationS3 = Nothing,
      _gbprrsComputeTime = Nothing,
      _gbprrsLastUpdatedAt = Nothing,
      _gbprrsLogURI = Nothing,
      _gbprrsResponseStatus = pResponseStatus_
    }

-- | An ID assigned to the @BatchPrediction@ at creation. This value should be identical to the value of the @BatchPredictionID@ in the request.
gbprrsBatchPredictionId :: Lens' GetBatchPredictionResponse (Maybe Text)
gbprrsBatchPredictionId = lens _gbprrsBatchPredictionId (\s a -> s {_gbprrsBatchPredictionId = a})

-- | The status of the @BatchPrediction@ , which can be one of the following values:     * @PENDING@ - Amazon Machine Learning (Amazon ML) submitted a request to generate batch predictions.    * @INPROGRESS@ - The batch predictions are in progress.    * @FAILED@ - The request to perform a batch prediction did not run to completion. It is not usable.    * @COMPLETED@ - The batch prediction process completed successfully.    * @DELETED@ - The @BatchPrediction@ is marked as deleted. It is not usable.
gbprrsStatus :: Lens' GetBatchPredictionResponse (Maybe EntityStatus)
gbprrsStatus = lens _gbprrsStatus (\s a -> s {_gbprrsStatus = a})

-- | The epoch time when Amazon Machine Learning marked the @BatchPrediction@ as @INPROGRESS@ . @StartedAt@ isn't available if the @BatchPrediction@ is in the @PENDING@ state.
gbprrsStartedAt :: Lens' GetBatchPredictionResponse (Maybe UTCTime)
gbprrsStartedAt = lens _gbprrsStartedAt (\s a -> s {_gbprrsStartedAt = a}) . mapping _Time

-- | The location of an Amazon S3 bucket or directory to receive the operation results.
gbprrsOutputURI :: Lens' GetBatchPredictionResponse (Maybe Text)
gbprrsOutputURI = lens _gbprrsOutputURI (\s a -> s {_gbprrsOutputURI = a})

-- | A description of the most recent details about processing the batch prediction request.
gbprrsMessage :: Lens' GetBatchPredictionResponse (Maybe Text)
gbprrsMessage = lens _gbprrsMessage (\s a -> s {_gbprrsMessage = a})

-- | The time when the @BatchPrediction@ was created. The time is expressed in epoch time.
gbprrsCreatedAt :: Lens' GetBatchPredictionResponse (Maybe UTCTime)
gbprrsCreatedAt = lens _gbprrsCreatedAt (\s a -> s {_gbprrsCreatedAt = a}) . mapping _Time

-- | The epoch time when Amazon Machine Learning marked the @BatchPrediction@ as @COMPLETED@ or @FAILED@ . @FinishedAt@ is only available when the @BatchPrediction@ is in the @COMPLETED@ or @FAILED@ state.
gbprrsFinishedAt :: Lens' GetBatchPredictionResponse (Maybe UTCTime)
gbprrsFinishedAt = lens _gbprrsFinishedAt (\s a -> s {_gbprrsFinishedAt = a}) . mapping _Time

-- | The AWS user account that invoked the @BatchPrediction@ . The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
gbprrsCreatedByIAMUser :: Lens' GetBatchPredictionResponse (Maybe Text)
gbprrsCreatedByIAMUser = lens _gbprrsCreatedByIAMUser (\s a -> s {_gbprrsCreatedByIAMUser = a})

-- | A user-supplied name or description of the @BatchPrediction@ .
gbprrsName :: Lens' GetBatchPredictionResponse (Maybe Text)
gbprrsName = lens _gbprrsName (\s a -> s {_gbprrsName = a})

-- | The number of invalid records that Amazon Machine Learning saw while processing the @BatchPrediction@ .
gbprrsInvalidRecordCount :: Lens' GetBatchPredictionResponse (Maybe Integer)
gbprrsInvalidRecordCount = lens _gbprrsInvalidRecordCount (\s a -> s {_gbprrsInvalidRecordCount = a})

-- | The number of total records that Amazon Machine Learning saw while processing the @BatchPrediction@ .
gbprrsTotalRecordCount :: Lens' GetBatchPredictionResponse (Maybe Integer)
gbprrsTotalRecordCount = lens _gbprrsTotalRecordCount (\s a -> s {_gbprrsTotalRecordCount = a})

-- | The ID of the @DataSource@ that was used to create the @BatchPrediction@ .
gbprrsBatchPredictionDataSourceId :: Lens' GetBatchPredictionResponse (Maybe Text)
gbprrsBatchPredictionDataSourceId = lens _gbprrsBatchPredictionDataSourceId (\s a -> s {_gbprrsBatchPredictionDataSourceId = a})

-- | The ID of the @MLModel@ that generated predictions for the @BatchPrediction@ request.
gbprrsMLModelId :: Lens' GetBatchPredictionResponse (Maybe Text)
gbprrsMLModelId = lens _gbprrsMLModelId (\s a -> s {_gbprrsMLModelId = a})

-- | The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
gbprrsInputDataLocationS3 :: Lens' GetBatchPredictionResponse (Maybe Text)
gbprrsInputDataLocationS3 = lens _gbprrsInputDataLocationS3 (\s a -> s {_gbprrsInputDataLocationS3 = a})

-- | The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the @BatchPrediction@ , normalized and scaled on computation resources. @ComputeTime@ is only available if the @BatchPrediction@ is in the @COMPLETED@ state.
gbprrsComputeTime :: Lens' GetBatchPredictionResponse (Maybe Integer)
gbprrsComputeTime = lens _gbprrsComputeTime (\s a -> s {_gbprrsComputeTime = a})

-- | The time of the most recent edit to @BatchPrediction@ . The time is expressed in epoch time.
gbprrsLastUpdatedAt :: Lens' GetBatchPredictionResponse (Maybe UTCTime)
gbprrsLastUpdatedAt = lens _gbprrsLastUpdatedAt (\s a -> s {_gbprrsLastUpdatedAt = a}) . mapping _Time

-- | A link to the file that contains logs of the @CreateBatchPrediction@ operation.
gbprrsLogURI :: Lens' GetBatchPredictionResponse (Maybe Text)
gbprrsLogURI = lens _gbprrsLogURI (\s a -> s {_gbprrsLogURI = a})

-- | -- | The response status code.
gbprrsResponseStatus :: Lens' GetBatchPredictionResponse Int
gbprrsResponseStatus = lens _gbprrsResponseStatus (\s a -> s {_gbprrsResponseStatus = a})

instance NFData GetBatchPredictionResponse
