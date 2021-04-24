{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.Evaluation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.Evaluation where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types.EntityStatus
import Network.AWS.MachineLearning.Types.PerformanceMetrics
import Network.AWS.Prelude

-- | Represents the output of @GetEvaluation@ operation.
--
--
-- The content consists of the detailed metadata and data file information and the current status of the @Evaluation@ .
--
--
-- /See:/ 'evaluation' smart constructor.
data Evaluation = Evaluation'
  { _ePerformanceMetrics ::
      !(Maybe PerformanceMetrics),
    _eStatus :: !(Maybe EntityStatus),
    _eStartedAt :: !(Maybe POSIX),
    _eEvaluationDataSourceId :: !(Maybe Text),
    _eMessage :: !(Maybe Text),
    _eCreatedAt :: !(Maybe POSIX),
    _eFinishedAt :: !(Maybe POSIX),
    _eCreatedByIAMUser :: !(Maybe Text),
    _eName :: !(Maybe Text),
    _eEvaluationId :: !(Maybe Text),
    _eMLModelId :: !(Maybe Text),
    _eInputDataLocationS3 :: !(Maybe Text),
    _eComputeTime :: !(Maybe Integer),
    _eLastUpdatedAt :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Evaluation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ePerformanceMetrics' - Measurements of how well the @MLModel@ performed, using observations referenced by the @DataSource@ . One of the following metrics is returned, based on the type of the @MLModel@ :      * BinaryAUC: A binary @MLModel@ uses the Area Under the Curve (AUC) technique to measure performance.      * RegressionRMSE: A regression @MLModel@ uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.     * MulticlassAvgFScore: A multiclass @MLModel@ uses the F1 score technique to measure performance.  For more information about performance metrics, please see the <http://docs.aws.amazon.com/machine-learning/latest/dg Amazon Machine Learning Developer Guide> .
--
-- * 'eStatus' - The status of the evaluation. This element can have one of the following values:     * @PENDING@ - Amazon Machine Learning (Amazon ML) submitted a request to evaluate an @MLModel@ .    * @INPROGRESS@ - The evaluation is underway.    * @FAILED@ - The request to evaluate an @MLModel@ did not run to completion. It is not usable.    * @COMPLETED@ - The evaluation process completed successfully.    * @DELETED@ - The @Evaluation@ is marked as deleted. It is not usable.
--
-- * 'eStartedAt' - Undocumented member.
--
-- * 'eEvaluationDataSourceId' - The ID of the @DataSource@ that is used to evaluate the @MLModel@ .
--
-- * 'eMessage' - A description of the most recent details about evaluating the @MLModel@ .
--
-- * 'eCreatedAt' - The time that the @Evaluation@ was created. The time is expressed in epoch time.
--
-- * 'eFinishedAt' - Undocumented member.
--
-- * 'eCreatedByIAMUser' - The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
--
-- * 'eName' - A user-supplied name or description of the @Evaluation@ .
--
-- * 'eEvaluationId' - The ID that is assigned to the @Evaluation@ at creation.
--
-- * 'eMLModelId' - The ID of the @MLModel@ that is the focus of the evaluation.
--
-- * 'eInputDataLocationS3' - The location and name of the data in Amazon Simple Storage Server (Amazon S3) that is used in the evaluation.
--
-- * 'eComputeTime' - Undocumented member.
--
-- * 'eLastUpdatedAt' - The time of the most recent edit to the @Evaluation@ . The time is expressed in epoch time.
evaluation ::
  Evaluation
evaluation =
  Evaluation'
    { _ePerformanceMetrics = Nothing,
      _eStatus = Nothing,
      _eStartedAt = Nothing,
      _eEvaluationDataSourceId = Nothing,
      _eMessage = Nothing,
      _eCreatedAt = Nothing,
      _eFinishedAt = Nothing,
      _eCreatedByIAMUser = Nothing,
      _eName = Nothing,
      _eEvaluationId = Nothing,
      _eMLModelId = Nothing,
      _eInputDataLocationS3 = Nothing,
      _eComputeTime = Nothing,
      _eLastUpdatedAt = Nothing
    }

-- | Measurements of how well the @MLModel@ performed, using observations referenced by the @DataSource@ . One of the following metrics is returned, based on the type of the @MLModel@ :      * BinaryAUC: A binary @MLModel@ uses the Area Under the Curve (AUC) technique to measure performance.      * RegressionRMSE: A regression @MLModel@ uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.     * MulticlassAvgFScore: A multiclass @MLModel@ uses the F1 score technique to measure performance.  For more information about performance metrics, please see the <http://docs.aws.amazon.com/machine-learning/latest/dg Amazon Machine Learning Developer Guide> .
ePerformanceMetrics :: Lens' Evaluation (Maybe PerformanceMetrics)
ePerformanceMetrics = lens _ePerformanceMetrics (\s a -> s {_ePerformanceMetrics = a})

-- | The status of the evaluation. This element can have one of the following values:     * @PENDING@ - Amazon Machine Learning (Amazon ML) submitted a request to evaluate an @MLModel@ .    * @INPROGRESS@ - The evaluation is underway.    * @FAILED@ - The request to evaluate an @MLModel@ did not run to completion. It is not usable.    * @COMPLETED@ - The evaluation process completed successfully.    * @DELETED@ - The @Evaluation@ is marked as deleted. It is not usable.
eStatus :: Lens' Evaluation (Maybe EntityStatus)
eStatus = lens _eStatus (\s a -> s {_eStatus = a})

-- | Undocumented member.
eStartedAt :: Lens' Evaluation (Maybe UTCTime)
eStartedAt = lens _eStartedAt (\s a -> s {_eStartedAt = a}) . mapping _Time

-- | The ID of the @DataSource@ that is used to evaluate the @MLModel@ .
eEvaluationDataSourceId :: Lens' Evaluation (Maybe Text)
eEvaluationDataSourceId = lens _eEvaluationDataSourceId (\s a -> s {_eEvaluationDataSourceId = a})

-- | A description of the most recent details about evaluating the @MLModel@ .
eMessage :: Lens' Evaluation (Maybe Text)
eMessage = lens _eMessage (\s a -> s {_eMessage = a})

-- | The time that the @Evaluation@ was created. The time is expressed in epoch time.
eCreatedAt :: Lens' Evaluation (Maybe UTCTime)
eCreatedAt = lens _eCreatedAt (\s a -> s {_eCreatedAt = a}) . mapping _Time

-- | Undocumented member.
eFinishedAt :: Lens' Evaluation (Maybe UTCTime)
eFinishedAt = lens _eFinishedAt (\s a -> s {_eFinishedAt = a}) . mapping _Time

-- | The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
eCreatedByIAMUser :: Lens' Evaluation (Maybe Text)
eCreatedByIAMUser = lens _eCreatedByIAMUser (\s a -> s {_eCreatedByIAMUser = a})

-- | A user-supplied name or description of the @Evaluation@ .
eName :: Lens' Evaluation (Maybe Text)
eName = lens _eName (\s a -> s {_eName = a})

-- | The ID that is assigned to the @Evaluation@ at creation.
eEvaluationId :: Lens' Evaluation (Maybe Text)
eEvaluationId = lens _eEvaluationId (\s a -> s {_eEvaluationId = a})

-- | The ID of the @MLModel@ that is the focus of the evaluation.
eMLModelId :: Lens' Evaluation (Maybe Text)
eMLModelId = lens _eMLModelId (\s a -> s {_eMLModelId = a})

-- | The location and name of the data in Amazon Simple Storage Server (Amazon S3) that is used in the evaluation.
eInputDataLocationS3 :: Lens' Evaluation (Maybe Text)
eInputDataLocationS3 = lens _eInputDataLocationS3 (\s a -> s {_eInputDataLocationS3 = a})

-- | Undocumented member.
eComputeTime :: Lens' Evaluation (Maybe Integer)
eComputeTime = lens _eComputeTime (\s a -> s {_eComputeTime = a})

-- | The time of the most recent edit to the @Evaluation@ . The time is expressed in epoch time.
eLastUpdatedAt :: Lens' Evaluation (Maybe UTCTime)
eLastUpdatedAt = lens _eLastUpdatedAt (\s a -> s {_eLastUpdatedAt = a}) . mapping _Time

instance FromJSON Evaluation where
  parseJSON =
    withObject
      "Evaluation"
      ( \x ->
          Evaluation'
            <$> (x .:? "PerformanceMetrics")
            <*> (x .:? "Status")
            <*> (x .:? "StartedAt")
            <*> (x .:? "EvaluationDataSourceId")
            <*> (x .:? "Message")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "FinishedAt")
            <*> (x .:? "CreatedByIamUser")
            <*> (x .:? "Name")
            <*> (x .:? "EvaluationId")
            <*> (x .:? "MLModelId")
            <*> (x .:? "InputDataLocationS3")
            <*> (x .:? "ComputeTime")
            <*> (x .:? "LastUpdatedAt")
      )

instance Hashable Evaluation

instance NFData Evaluation
