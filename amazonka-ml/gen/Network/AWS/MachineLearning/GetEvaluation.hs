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
-- Module      : Network.AWS.MachineLearning.GetEvaluation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an @Evaluation@ that includes metadata as well as the current status of the @Evaluation@ .
module Network.AWS.MachineLearning.GetEvaluation
  ( -- * Creating a Request
    getEvaluation,
    GetEvaluation,

    -- * Request Lenses
    geEvaluationId,

    -- * Destructuring the Response
    getEvaluationResponse,
    GetEvaluationResponse,

    -- * Response Lenses
    gerrsPerformanceMetrics,
    gerrsStatus,
    gerrsStartedAt,
    gerrsEvaluationDataSourceId,
    gerrsMessage,
    gerrsCreatedAt,
    gerrsFinishedAt,
    gerrsCreatedByIAMUser,
    gerrsName,
    gerrsEvaluationId,
    gerrsMLModelId,
    gerrsInputDataLocationS3,
    gerrsComputeTime,
    gerrsLastUpdatedAt,
    gerrsLogURI,
    gerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getEvaluation' smart constructor.
newtype GetEvaluation = GetEvaluation'
  { _geEvaluationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetEvaluation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'geEvaluationId' - The ID of the @Evaluation@ to retrieve. The evaluation of each @MLModel@ is recorded and cataloged. The ID provides the means to access the information.
getEvaluation ::
  -- | 'geEvaluationId'
  Text ->
  GetEvaluation
getEvaluation pEvaluationId_ =
  GetEvaluation' {_geEvaluationId = pEvaluationId_}

-- | The ID of the @Evaluation@ to retrieve. The evaluation of each @MLModel@ is recorded and cataloged. The ID provides the means to access the information.
geEvaluationId :: Lens' GetEvaluation Text
geEvaluationId = lens _geEvaluationId (\s a -> s {_geEvaluationId = a})

instance AWSRequest GetEvaluation where
  type Rs GetEvaluation = GetEvaluationResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          GetEvaluationResponse'
            <$> (x .?> "PerformanceMetrics")
            <*> (x .?> "Status")
            <*> (x .?> "StartedAt")
            <*> (x .?> "EvaluationDataSourceId")
            <*> (x .?> "Message")
            <*> (x .?> "CreatedAt")
            <*> (x .?> "FinishedAt")
            <*> (x .?> "CreatedByIamUser")
            <*> (x .?> "Name")
            <*> (x .?> "EvaluationId")
            <*> (x .?> "MLModelId")
            <*> (x .?> "InputDataLocationS3")
            <*> (x .?> "ComputeTime")
            <*> (x .?> "LastUpdatedAt")
            <*> (x .?> "LogUri")
            <*> (pure (fromEnum s))
      )

instance Hashable GetEvaluation

instance NFData GetEvaluation

instance ToHeaders GetEvaluation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonML_20141212.GetEvaluation" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetEvaluation where
  toJSON GetEvaluation' {..} =
    object
      ( catMaybes
          [Just ("EvaluationId" .= _geEvaluationId)]
      )

instance ToPath GetEvaluation where
  toPath = const "/"

instance ToQuery GetEvaluation where
  toQuery = const mempty

-- | Represents the output of a @GetEvaluation@ operation and describes an @Evaluation@ .
--
--
--
-- /See:/ 'getEvaluationResponse' smart constructor.
data GetEvaluationResponse = GetEvaluationResponse'
  { _gerrsPerformanceMetrics ::
      !(Maybe PerformanceMetrics),
    _gerrsStatus ::
      !(Maybe EntityStatus),
    _gerrsStartedAt ::
      !(Maybe POSIX),
    _gerrsEvaluationDataSourceId ::
      !(Maybe Text),
    _gerrsMessage ::
      !(Maybe Text),
    _gerrsCreatedAt ::
      !(Maybe POSIX),
    _gerrsFinishedAt ::
      !(Maybe POSIX),
    _gerrsCreatedByIAMUser ::
      !(Maybe Text),
    _gerrsName :: !(Maybe Text),
    _gerrsEvaluationId ::
      !(Maybe Text),
    _gerrsMLModelId ::
      !(Maybe Text),
    _gerrsInputDataLocationS3 ::
      !(Maybe Text),
    _gerrsComputeTime ::
      !(Maybe Integer),
    _gerrsLastUpdatedAt ::
      !(Maybe POSIX),
    _gerrsLogURI ::
      !(Maybe Text),
    _gerrsResponseStatus ::
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

-- | Creates a value of 'GetEvaluationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gerrsPerformanceMetrics' - Measurements of how well the @MLModel@ performed using observations referenced by the @DataSource@ . One of the following metric is returned based on the type of the @MLModel@ :      * BinaryAUC: A binary @MLModel@ uses the Area Under the Curve (AUC) technique to measure performance.      * RegressionRMSE: A regression @MLModel@ uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.     * MulticlassAvgFScore: A multiclass @MLModel@ uses the F1 score technique to measure performance.  For more information about performance metrics, please see the <http://docs.aws.amazon.com/machine-learning/latest/dg Amazon Machine Learning Developer Guide> .
--
-- * 'gerrsStatus' - The status of the evaluation. This element can have one of the following values:     * @PENDING@ - Amazon Machine Language (Amazon ML) submitted a request to evaluate an @MLModel@ .    * @INPROGRESS@ - The evaluation is underway.    * @FAILED@ - The request to evaluate an @MLModel@ did not run to completion. It is not usable.    * @COMPLETED@ - The evaluation process completed successfully.    * @DELETED@ - The @Evaluation@ is marked as deleted. It is not usable.
--
-- * 'gerrsStartedAt' - The epoch time when Amazon Machine Learning marked the @Evaluation@ as @INPROGRESS@ . @StartedAt@ isn't available if the @Evaluation@ is in the @PENDING@ state.
--
-- * 'gerrsEvaluationDataSourceId' - The @DataSource@ used for this evaluation.
--
-- * 'gerrsMessage' - A description of the most recent details about evaluating the @MLModel@ .
--
-- * 'gerrsCreatedAt' - The time that the @Evaluation@ was created. The time is expressed in epoch time.
--
-- * 'gerrsFinishedAt' - The epoch time when Amazon Machine Learning marked the @Evaluation@ as @COMPLETED@ or @FAILED@ . @FinishedAt@ is only available when the @Evaluation@ is in the @COMPLETED@ or @FAILED@ state.
--
-- * 'gerrsCreatedByIAMUser' - The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
--
-- * 'gerrsName' - A user-supplied name or description of the @Evaluation@ .
--
-- * 'gerrsEvaluationId' - The evaluation ID which is same as the @EvaluationId@ in the request.
--
-- * 'gerrsMLModelId' - The ID of the @MLModel@ that was the focus of the evaluation.
--
-- * 'gerrsInputDataLocationS3' - The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
--
-- * 'gerrsComputeTime' - The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the @Evaluation@ , normalized and scaled on computation resources. @ComputeTime@ is only available if the @Evaluation@ is in the @COMPLETED@ state.
--
-- * 'gerrsLastUpdatedAt' - The time of the most recent edit to the @Evaluation@ . The time is expressed in epoch time.
--
-- * 'gerrsLogURI' - A link to the file that contains logs of the @CreateEvaluation@ operation.
--
-- * 'gerrsResponseStatus' - -- | The response status code.
getEvaluationResponse ::
  -- | 'gerrsResponseStatus'
  Int ->
  GetEvaluationResponse
getEvaluationResponse pResponseStatus_ =
  GetEvaluationResponse'
    { _gerrsPerformanceMetrics =
        Nothing,
      _gerrsStatus = Nothing,
      _gerrsStartedAt = Nothing,
      _gerrsEvaluationDataSourceId = Nothing,
      _gerrsMessage = Nothing,
      _gerrsCreatedAt = Nothing,
      _gerrsFinishedAt = Nothing,
      _gerrsCreatedByIAMUser = Nothing,
      _gerrsName = Nothing,
      _gerrsEvaluationId = Nothing,
      _gerrsMLModelId = Nothing,
      _gerrsInputDataLocationS3 = Nothing,
      _gerrsComputeTime = Nothing,
      _gerrsLastUpdatedAt = Nothing,
      _gerrsLogURI = Nothing,
      _gerrsResponseStatus = pResponseStatus_
    }

-- | Measurements of how well the @MLModel@ performed using observations referenced by the @DataSource@ . One of the following metric is returned based on the type of the @MLModel@ :      * BinaryAUC: A binary @MLModel@ uses the Area Under the Curve (AUC) technique to measure performance.      * RegressionRMSE: A regression @MLModel@ uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.     * MulticlassAvgFScore: A multiclass @MLModel@ uses the F1 score technique to measure performance.  For more information about performance metrics, please see the <http://docs.aws.amazon.com/machine-learning/latest/dg Amazon Machine Learning Developer Guide> .
gerrsPerformanceMetrics :: Lens' GetEvaluationResponse (Maybe PerformanceMetrics)
gerrsPerformanceMetrics = lens _gerrsPerformanceMetrics (\s a -> s {_gerrsPerformanceMetrics = a})

-- | The status of the evaluation. This element can have one of the following values:     * @PENDING@ - Amazon Machine Language (Amazon ML) submitted a request to evaluate an @MLModel@ .    * @INPROGRESS@ - The evaluation is underway.    * @FAILED@ - The request to evaluate an @MLModel@ did not run to completion. It is not usable.    * @COMPLETED@ - The evaluation process completed successfully.    * @DELETED@ - The @Evaluation@ is marked as deleted. It is not usable.
gerrsStatus :: Lens' GetEvaluationResponse (Maybe EntityStatus)
gerrsStatus = lens _gerrsStatus (\s a -> s {_gerrsStatus = a})

-- | The epoch time when Amazon Machine Learning marked the @Evaluation@ as @INPROGRESS@ . @StartedAt@ isn't available if the @Evaluation@ is in the @PENDING@ state.
gerrsStartedAt :: Lens' GetEvaluationResponse (Maybe UTCTime)
gerrsStartedAt = lens _gerrsStartedAt (\s a -> s {_gerrsStartedAt = a}) . mapping _Time

-- | The @DataSource@ used for this evaluation.
gerrsEvaluationDataSourceId :: Lens' GetEvaluationResponse (Maybe Text)
gerrsEvaluationDataSourceId = lens _gerrsEvaluationDataSourceId (\s a -> s {_gerrsEvaluationDataSourceId = a})

-- | A description of the most recent details about evaluating the @MLModel@ .
gerrsMessage :: Lens' GetEvaluationResponse (Maybe Text)
gerrsMessage = lens _gerrsMessage (\s a -> s {_gerrsMessage = a})

-- | The time that the @Evaluation@ was created. The time is expressed in epoch time.
gerrsCreatedAt :: Lens' GetEvaluationResponse (Maybe UTCTime)
gerrsCreatedAt = lens _gerrsCreatedAt (\s a -> s {_gerrsCreatedAt = a}) . mapping _Time

-- | The epoch time when Amazon Machine Learning marked the @Evaluation@ as @COMPLETED@ or @FAILED@ . @FinishedAt@ is only available when the @Evaluation@ is in the @COMPLETED@ or @FAILED@ state.
gerrsFinishedAt :: Lens' GetEvaluationResponse (Maybe UTCTime)
gerrsFinishedAt = lens _gerrsFinishedAt (\s a -> s {_gerrsFinishedAt = a}) . mapping _Time

-- | The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
gerrsCreatedByIAMUser :: Lens' GetEvaluationResponse (Maybe Text)
gerrsCreatedByIAMUser = lens _gerrsCreatedByIAMUser (\s a -> s {_gerrsCreatedByIAMUser = a})

-- | A user-supplied name or description of the @Evaluation@ .
gerrsName :: Lens' GetEvaluationResponse (Maybe Text)
gerrsName = lens _gerrsName (\s a -> s {_gerrsName = a})

-- | The evaluation ID which is same as the @EvaluationId@ in the request.
gerrsEvaluationId :: Lens' GetEvaluationResponse (Maybe Text)
gerrsEvaluationId = lens _gerrsEvaluationId (\s a -> s {_gerrsEvaluationId = a})

-- | The ID of the @MLModel@ that was the focus of the evaluation.
gerrsMLModelId :: Lens' GetEvaluationResponse (Maybe Text)
gerrsMLModelId = lens _gerrsMLModelId (\s a -> s {_gerrsMLModelId = a})

-- | The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
gerrsInputDataLocationS3 :: Lens' GetEvaluationResponse (Maybe Text)
gerrsInputDataLocationS3 = lens _gerrsInputDataLocationS3 (\s a -> s {_gerrsInputDataLocationS3 = a})

-- | The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the @Evaluation@ , normalized and scaled on computation resources. @ComputeTime@ is only available if the @Evaluation@ is in the @COMPLETED@ state.
gerrsComputeTime :: Lens' GetEvaluationResponse (Maybe Integer)
gerrsComputeTime = lens _gerrsComputeTime (\s a -> s {_gerrsComputeTime = a})

-- | The time of the most recent edit to the @Evaluation@ . The time is expressed in epoch time.
gerrsLastUpdatedAt :: Lens' GetEvaluationResponse (Maybe UTCTime)
gerrsLastUpdatedAt = lens _gerrsLastUpdatedAt (\s a -> s {_gerrsLastUpdatedAt = a}) . mapping _Time

-- | A link to the file that contains logs of the @CreateEvaluation@ operation.
gerrsLogURI :: Lens' GetEvaluationResponse (Maybe Text)
gerrsLogURI = lens _gerrsLogURI (\s a -> s {_gerrsLogURI = a})

-- | -- | The response status code.
gerrsResponseStatus :: Lens' GetEvaluationResponse Int
gerrsResponseStatus = lens _gerrsResponseStatus (\s a -> s {_gerrsResponseStatus = a})

instance NFData GetEvaluationResponse
