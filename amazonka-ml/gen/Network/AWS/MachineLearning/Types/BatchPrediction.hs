{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.BatchPrediction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.BatchPrediction where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types.EntityStatus
import Network.AWS.Prelude

-- | Represents the output of a @GetBatchPrediction@ operation.
--
--
-- The content consists of the detailed metadata, the status, and the data file information of a @Batch Prediction@ .
--
--
-- /See:/ 'batchPrediction' smart constructor.
data BatchPrediction = BatchPrediction'
  { _bpBatchPredictionId ::
      !(Maybe Text),
    _bpStatus :: !(Maybe EntityStatus),
    _bpStartedAt :: !(Maybe POSIX),
    _bpOutputURI :: !(Maybe Text),
    _bpMessage :: !(Maybe Text),
    _bpCreatedAt :: !(Maybe POSIX),
    _bpFinishedAt :: !(Maybe POSIX),
    _bpCreatedByIAMUser :: !(Maybe Text),
    _bpName :: !(Maybe Text),
    _bpInvalidRecordCount ::
      !(Maybe Integer),
    _bpTotalRecordCount :: !(Maybe Integer),
    _bpBatchPredictionDataSourceId ::
      !(Maybe Text),
    _bpMLModelId :: !(Maybe Text),
    _bpInputDataLocationS3 :: !(Maybe Text),
    _bpComputeTime :: !(Maybe Integer),
    _bpLastUpdatedAt :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchPrediction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpBatchPredictionId' - The ID assigned to the @BatchPrediction@ at creation. This value should be identical to the value of the @BatchPredictionID@ in the request.
--
-- * 'bpStatus' - The status of the @BatchPrediction@ . This element can have one of the following values:     * @PENDING@ - Amazon Machine Learning (Amazon ML) submitted a request to generate predictions for a batch of observations.    * @INPROGRESS@ - The process is underway.    * @FAILED@ - The request to perform a batch prediction did not run to completion. It is not usable.    * @COMPLETED@ - The batch prediction process completed successfully.    * @DELETED@ - The @BatchPrediction@ is marked as deleted. It is not usable.
--
-- * 'bpStartedAt' - Undocumented member.
--
-- * 'bpOutputURI' - The location of an Amazon S3 bucket or directory to receive the operation results. The following substrings are not allowed in the @s3 key@ portion of the @outputURI@ field: ':', '//', '/./', '/../'.
--
-- * 'bpMessage' - A description of the most recent details about processing the batch prediction request.
--
-- * 'bpCreatedAt' - The time that the @BatchPrediction@ was created. The time is expressed in epoch time.
--
-- * 'bpFinishedAt' - Undocumented member.
--
-- * 'bpCreatedByIAMUser' - The AWS user account that invoked the @BatchPrediction@ . The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
--
-- * 'bpName' - A user-supplied name or description of the @BatchPrediction@ .
--
-- * 'bpInvalidRecordCount' - Undocumented member.
--
-- * 'bpTotalRecordCount' - Undocumented member.
--
-- * 'bpBatchPredictionDataSourceId' - The ID of the @DataSource@ that points to the group of observations to predict.
--
-- * 'bpMLModelId' - The ID of the @MLModel@ that generated predictions for the @BatchPrediction@ request.
--
-- * 'bpInputDataLocationS3' - The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
--
-- * 'bpComputeTime' - Undocumented member.
--
-- * 'bpLastUpdatedAt' - The time of the most recent edit to the @BatchPrediction@ . The time is expressed in epoch time.
batchPrediction ::
  BatchPrediction
batchPrediction =
  BatchPrediction'
    { _bpBatchPredictionId = Nothing,
      _bpStatus = Nothing,
      _bpStartedAt = Nothing,
      _bpOutputURI = Nothing,
      _bpMessage = Nothing,
      _bpCreatedAt = Nothing,
      _bpFinishedAt = Nothing,
      _bpCreatedByIAMUser = Nothing,
      _bpName = Nothing,
      _bpInvalidRecordCount = Nothing,
      _bpTotalRecordCount = Nothing,
      _bpBatchPredictionDataSourceId = Nothing,
      _bpMLModelId = Nothing,
      _bpInputDataLocationS3 = Nothing,
      _bpComputeTime = Nothing,
      _bpLastUpdatedAt = Nothing
    }

-- | The ID assigned to the @BatchPrediction@ at creation. This value should be identical to the value of the @BatchPredictionID@ in the request.
bpBatchPredictionId :: Lens' BatchPrediction (Maybe Text)
bpBatchPredictionId = lens _bpBatchPredictionId (\s a -> s {_bpBatchPredictionId = a})

-- | The status of the @BatchPrediction@ . This element can have one of the following values:     * @PENDING@ - Amazon Machine Learning (Amazon ML) submitted a request to generate predictions for a batch of observations.    * @INPROGRESS@ - The process is underway.    * @FAILED@ - The request to perform a batch prediction did not run to completion. It is not usable.    * @COMPLETED@ - The batch prediction process completed successfully.    * @DELETED@ - The @BatchPrediction@ is marked as deleted. It is not usable.
bpStatus :: Lens' BatchPrediction (Maybe EntityStatus)
bpStatus = lens _bpStatus (\s a -> s {_bpStatus = a})

-- | Undocumented member.
bpStartedAt :: Lens' BatchPrediction (Maybe UTCTime)
bpStartedAt = lens _bpStartedAt (\s a -> s {_bpStartedAt = a}) . mapping _Time

-- | The location of an Amazon S3 bucket or directory to receive the operation results. The following substrings are not allowed in the @s3 key@ portion of the @outputURI@ field: ':', '//', '/./', '/../'.
bpOutputURI :: Lens' BatchPrediction (Maybe Text)
bpOutputURI = lens _bpOutputURI (\s a -> s {_bpOutputURI = a})

-- | A description of the most recent details about processing the batch prediction request.
bpMessage :: Lens' BatchPrediction (Maybe Text)
bpMessage = lens _bpMessage (\s a -> s {_bpMessage = a})

-- | The time that the @BatchPrediction@ was created. The time is expressed in epoch time.
bpCreatedAt :: Lens' BatchPrediction (Maybe UTCTime)
bpCreatedAt = lens _bpCreatedAt (\s a -> s {_bpCreatedAt = a}) . mapping _Time

-- | Undocumented member.
bpFinishedAt :: Lens' BatchPrediction (Maybe UTCTime)
bpFinishedAt = lens _bpFinishedAt (\s a -> s {_bpFinishedAt = a}) . mapping _Time

-- | The AWS user account that invoked the @BatchPrediction@ . The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
bpCreatedByIAMUser :: Lens' BatchPrediction (Maybe Text)
bpCreatedByIAMUser = lens _bpCreatedByIAMUser (\s a -> s {_bpCreatedByIAMUser = a})

-- | A user-supplied name or description of the @BatchPrediction@ .
bpName :: Lens' BatchPrediction (Maybe Text)
bpName = lens _bpName (\s a -> s {_bpName = a})

-- | Undocumented member.
bpInvalidRecordCount :: Lens' BatchPrediction (Maybe Integer)
bpInvalidRecordCount = lens _bpInvalidRecordCount (\s a -> s {_bpInvalidRecordCount = a})

-- | Undocumented member.
bpTotalRecordCount :: Lens' BatchPrediction (Maybe Integer)
bpTotalRecordCount = lens _bpTotalRecordCount (\s a -> s {_bpTotalRecordCount = a})

-- | The ID of the @DataSource@ that points to the group of observations to predict.
bpBatchPredictionDataSourceId :: Lens' BatchPrediction (Maybe Text)
bpBatchPredictionDataSourceId = lens _bpBatchPredictionDataSourceId (\s a -> s {_bpBatchPredictionDataSourceId = a})

-- | The ID of the @MLModel@ that generated predictions for the @BatchPrediction@ request.
bpMLModelId :: Lens' BatchPrediction (Maybe Text)
bpMLModelId = lens _bpMLModelId (\s a -> s {_bpMLModelId = a})

-- | The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
bpInputDataLocationS3 :: Lens' BatchPrediction (Maybe Text)
bpInputDataLocationS3 = lens _bpInputDataLocationS3 (\s a -> s {_bpInputDataLocationS3 = a})

-- | Undocumented member.
bpComputeTime :: Lens' BatchPrediction (Maybe Integer)
bpComputeTime = lens _bpComputeTime (\s a -> s {_bpComputeTime = a})

-- | The time of the most recent edit to the @BatchPrediction@ . The time is expressed in epoch time.
bpLastUpdatedAt :: Lens' BatchPrediction (Maybe UTCTime)
bpLastUpdatedAt = lens _bpLastUpdatedAt (\s a -> s {_bpLastUpdatedAt = a}) . mapping _Time

instance FromJSON BatchPrediction where
  parseJSON =
    withObject
      "BatchPrediction"
      ( \x ->
          BatchPrediction'
            <$> (x .:? "BatchPredictionId")
            <*> (x .:? "Status")
            <*> (x .:? "StartedAt")
            <*> (x .:? "OutputUri")
            <*> (x .:? "Message")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "FinishedAt")
            <*> (x .:? "CreatedByIamUser")
            <*> (x .:? "Name")
            <*> (x .:? "InvalidRecordCount")
            <*> (x .:? "TotalRecordCount")
            <*> (x .:? "BatchPredictionDataSourceId")
            <*> (x .:? "MLModelId")
            <*> (x .:? "InputDataLocationS3")
            <*> (x .:? "ComputeTime")
            <*> (x .:? "LastUpdatedAt")
      )

instance Hashable BatchPrediction

instance NFData BatchPrediction
