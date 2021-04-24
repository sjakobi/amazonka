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
-- Module      : Network.AWS.SageMaker.DescribeHyperParameterTuningJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a description of a hyperparameter tuning job.
module Network.AWS.SageMaker.DescribeHyperParameterTuningJob
  ( -- * Creating a Request
    describeHyperParameterTuningJob,
    DescribeHyperParameterTuningJob,

    -- * Request Lenses
    dhptjHyperParameterTuningJobName,

    -- * Destructuring the Response
    describeHyperParameterTuningJobResponse,
    DescribeHyperParameterTuningJobResponse,

    -- * Response Lenses
    dhptjrrsBestTrainingJob,
    dhptjrrsWarmStartConfig,
    dhptjrrsHyperParameterTuningEndTime,
    dhptjrrsFailureReason,
    dhptjrrsTrainingJobDefinitions,
    dhptjrrsLastModifiedTime,
    dhptjrrsOverallBestTrainingJob,
    dhptjrrsTrainingJobDefinition,
    dhptjrrsResponseStatus,
    dhptjrrsHyperParameterTuningJobName,
    dhptjrrsHyperParameterTuningJobARN,
    dhptjrrsHyperParameterTuningJobConfig,
    dhptjrrsHyperParameterTuningJobStatus,
    dhptjrrsCreationTime,
    dhptjrrsTrainingJobStatusCounters,
    dhptjrrsObjectiveStatusCounters,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeHyperParameterTuningJob' smart constructor.
newtype DescribeHyperParameterTuningJob = DescribeHyperParameterTuningJob'
  { _dhptjHyperParameterTuningJobName ::
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

-- | Creates a value of 'DescribeHyperParameterTuningJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhptjHyperParameterTuningJobName' - The name of the tuning job.
describeHyperParameterTuningJob ::
  -- | 'dhptjHyperParameterTuningJobName'
  Text ->
  DescribeHyperParameterTuningJob
describeHyperParameterTuningJob
  pHyperParameterTuningJobName_ =
    DescribeHyperParameterTuningJob'
      { _dhptjHyperParameterTuningJobName =
          pHyperParameterTuningJobName_
      }

-- | The name of the tuning job.
dhptjHyperParameterTuningJobName :: Lens' DescribeHyperParameterTuningJob Text
dhptjHyperParameterTuningJobName = lens _dhptjHyperParameterTuningJobName (\s a -> s {_dhptjHyperParameterTuningJobName = a})

instance AWSRequest DescribeHyperParameterTuningJob where
  type
    Rs DescribeHyperParameterTuningJob =
      DescribeHyperParameterTuningJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeHyperParameterTuningJobResponse'
            <$> (x .?> "BestTrainingJob")
            <*> (x .?> "WarmStartConfig")
            <*> (x .?> "HyperParameterTuningEndTime")
            <*> (x .?> "FailureReason")
            <*> (x .?> "TrainingJobDefinitions")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "OverallBestTrainingJob")
            <*> (x .?> "TrainingJobDefinition")
            <*> (pure (fromEnum s))
            <*> (x .:> "HyperParameterTuningJobName")
            <*> (x .:> "HyperParameterTuningJobArn")
            <*> (x .:> "HyperParameterTuningJobConfig")
            <*> (x .:> "HyperParameterTuningJobStatus")
            <*> (x .:> "CreationTime")
            <*> (x .:> "TrainingJobStatusCounters")
            <*> (x .:> "ObjectiveStatusCounters")
      )

instance Hashable DescribeHyperParameterTuningJob

instance NFData DescribeHyperParameterTuningJob

instance ToHeaders DescribeHyperParameterTuningJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribeHyperParameterTuningJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeHyperParameterTuningJob where
  toJSON DescribeHyperParameterTuningJob' {..} =
    object
      ( catMaybes
          [ Just
              ( "HyperParameterTuningJobName"
                  .= _dhptjHyperParameterTuningJobName
              )
          ]
      )

instance ToPath DescribeHyperParameterTuningJob where
  toPath = const "/"

instance ToQuery DescribeHyperParameterTuningJob where
  toQuery = const mempty

-- | /See:/ 'describeHyperParameterTuningJobResponse' smart constructor.
data DescribeHyperParameterTuningJobResponse = DescribeHyperParameterTuningJobResponse'
  { _dhptjrrsBestTrainingJob ::
      !( Maybe
           HyperParameterTrainingJobSummary
       ),
    _dhptjrrsWarmStartConfig ::
      !( Maybe
           HyperParameterTuningJobWarmStartConfig
       ),
    _dhptjrrsHyperParameterTuningEndTime ::
      !( Maybe
           POSIX
       ),
    _dhptjrrsFailureReason ::
      !( Maybe
           Text
       ),
    _dhptjrrsTrainingJobDefinitions ::
      !( Maybe
           ( List1
               HyperParameterTrainingJobDefinition
           )
       ),
    _dhptjrrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _dhptjrrsOverallBestTrainingJob ::
      !( Maybe
           HyperParameterTrainingJobSummary
       ),
    _dhptjrrsTrainingJobDefinition ::
      !( Maybe
           HyperParameterTrainingJobDefinition
       ),
    _dhptjrrsResponseStatus ::
      !Int,
    _dhptjrrsHyperParameterTuningJobName ::
      !Text,
    _dhptjrrsHyperParameterTuningJobARN ::
      !Text,
    _dhptjrrsHyperParameterTuningJobConfig ::
      !HyperParameterTuningJobConfig,
    _dhptjrrsHyperParameterTuningJobStatus ::
      !HyperParameterTuningJobStatus,
    _dhptjrrsCreationTime ::
      !POSIX,
    _dhptjrrsTrainingJobStatusCounters ::
      !TrainingJobStatusCounters,
    _dhptjrrsObjectiveStatusCounters ::
      !ObjectiveStatusCounters
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeHyperParameterTuningJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhptjrrsBestTrainingJob' - A 'TrainingJobSummary' object that describes the training job that completed with the best current 'HyperParameterTuningJobObjective' .
--
-- * 'dhptjrrsWarmStartConfig' - The configuration for starting the hyperparameter parameter tuning job using one or more previous tuning jobs as a starting point. The results of previous tuning jobs are used to inform which combinations of hyperparameters to search over in the new tuning job.
--
-- * 'dhptjrrsHyperParameterTuningEndTime' - The date and time that the tuning job ended.
--
-- * 'dhptjrrsFailureReason' - If the tuning job failed, the reason it failed.
--
-- * 'dhptjrrsTrainingJobDefinitions' - A list of the 'HyperParameterTrainingJobDefinition' objects launched for this tuning job.
--
-- * 'dhptjrrsLastModifiedTime' - The date and time that the status of the tuning job was modified.
--
-- * 'dhptjrrsOverallBestTrainingJob' - If the hyperparameter tuning job is an warm start tuning job with a @WarmStartType@ of @IDENTICAL_DATA_AND_ALGORITHM@ , this is the 'TrainingJobSummary' for the training job with the best objective metric value of all training jobs launched by this tuning job and all parent jobs specified for the warm start tuning job.
--
-- * 'dhptjrrsTrainingJobDefinition' - The 'HyperParameterTrainingJobDefinition' object that specifies the definition of the training jobs that this tuning job launches.
--
-- * 'dhptjrrsResponseStatus' - -- | The response status code.
--
-- * 'dhptjrrsHyperParameterTuningJobName' - The name of the tuning job.
--
-- * 'dhptjrrsHyperParameterTuningJobARN' - The Amazon Resource Name (ARN) of the tuning job.
--
-- * 'dhptjrrsHyperParameterTuningJobConfig' - The 'HyperParameterTuningJobConfig' object that specifies the configuration of the tuning job.
--
-- * 'dhptjrrsHyperParameterTuningJobStatus' - The status of the tuning job: InProgress, Completed, Failed, Stopping, or Stopped.
--
-- * 'dhptjrrsCreationTime' - The date and time that the tuning job started.
--
-- * 'dhptjrrsTrainingJobStatusCounters' - The 'TrainingJobStatusCounters' object that specifies the number of training jobs, categorized by status, that this tuning job launched.
--
-- * 'dhptjrrsObjectiveStatusCounters' - The 'ObjectiveStatusCounters' object that specifies the number of training jobs, categorized by the status of their final objective metric, that this tuning job launched.
describeHyperParameterTuningJobResponse ::
  -- | 'dhptjrrsResponseStatus'
  Int ->
  -- | 'dhptjrrsHyperParameterTuningJobName'
  Text ->
  -- | 'dhptjrrsHyperParameterTuningJobARN'
  Text ->
  -- | 'dhptjrrsHyperParameterTuningJobConfig'
  HyperParameterTuningJobConfig ->
  -- | 'dhptjrrsHyperParameterTuningJobStatus'
  HyperParameterTuningJobStatus ->
  -- | 'dhptjrrsCreationTime'
  UTCTime ->
  -- | 'dhptjrrsTrainingJobStatusCounters'
  TrainingJobStatusCounters ->
  -- | 'dhptjrrsObjectiveStatusCounters'
  ObjectiveStatusCounters ->
  DescribeHyperParameterTuningJobResponse
describeHyperParameterTuningJobResponse
  pResponseStatus_
  pHyperParameterTuningJobName_
  pHyperParameterTuningJobARN_
  pHyperParameterTuningJobConfig_
  pHyperParameterTuningJobStatus_
  pCreationTime_
  pTrainingJobStatusCounters_
  pObjectiveStatusCounters_ =
    DescribeHyperParameterTuningJobResponse'
      { _dhptjrrsBestTrainingJob =
          Nothing,
        _dhptjrrsWarmStartConfig = Nothing,
        _dhptjrrsHyperParameterTuningEndTime =
          Nothing,
        _dhptjrrsFailureReason = Nothing,
        _dhptjrrsTrainingJobDefinitions =
          Nothing,
        _dhptjrrsLastModifiedTime =
          Nothing,
        _dhptjrrsOverallBestTrainingJob =
          Nothing,
        _dhptjrrsTrainingJobDefinition =
          Nothing,
        _dhptjrrsResponseStatus =
          pResponseStatus_,
        _dhptjrrsHyperParameterTuningJobName =
          pHyperParameterTuningJobName_,
        _dhptjrrsHyperParameterTuningJobARN =
          pHyperParameterTuningJobARN_,
        _dhptjrrsHyperParameterTuningJobConfig =
          pHyperParameterTuningJobConfig_,
        _dhptjrrsHyperParameterTuningJobStatus =
          pHyperParameterTuningJobStatus_,
        _dhptjrrsCreationTime =
          _Time # pCreationTime_,
        _dhptjrrsTrainingJobStatusCounters =
          pTrainingJobStatusCounters_,
        _dhptjrrsObjectiveStatusCounters =
          pObjectiveStatusCounters_
      }

-- | A 'TrainingJobSummary' object that describes the training job that completed with the best current 'HyperParameterTuningJobObjective' .
dhptjrrsBestTrainingJob :: Lens' DescribeHyperParameterTuningJobResponse (Maybe HyperParameterTrainingJobSummary)
dhptjrrsBestTrainingJob = lens _dhptjrrsBestTrainingJob (\s a -> s {_dhptjrrsBestTrainingJob = a})

-- | The configuration for starting the hyperparameter parameter tuning job using one or more previous tuning jobs as a starting point. The results of previous tuning jobs are used to inform which combinations of hyperparameters to search over in the new tuning job.
dhptjrrsWarmStartConfig :: Lens' DescribeHyperParameterTuningJobResponse (Maybe HyperParameterTuningJobWarmStartConfig)
dhptjrrsWarmStartConfig = lens _dhptjrrsWarmStartConfig (\s a -> s {_dhptjrrsWarmStartConfig = a})

-- | The date and time that the tuning job ended.
dhptjrrsHyperParameterTuningEndTime :: Lens' DescribeHyperParameterTuningJobResponse (Maybe UTCTime)
dhptjrrsHyperParameterTuningEndTime = lens _dhptjrrsHyperParameterTuningEndTime (\s a -> s {_dhptjrrsHyperParameterTuningEndTime = a}) . mapping _Time

-- | If the tuning job failed, the reason it failed.
dhptjrrsFailureReason :: Lens' DescribeHyperParameterTuningJobResponse (Maybe Text)
dhptjrrsFailureReason = lens _dhptjrrsFailureReason (\s a -> s {_dhptjrrsFailureReason = a})

-- | A list of the 'HyperParameterTrainingJobDefinition' objects launched for this tuning job.
dhptjrrsTrainingJobDefinitions :: Lens' DescribeHyperParameterTuningJobResponse (Maybe (NonEmpty HyperParameterTrainingJobDefinition))
dhptjrrsTrainingJobDefinitions = lens _dhptjrrsTrainingJobDefinitions (\s a -> s {_dhptjrrsTrainingJobDefinitions = a}) . mapping _List1

-- | The date and time that the status of the tuning job was modified.
dhptjrrsLastModifiedTime :: Lens' DescribeHyperParameterTuningJobResponse (Maybe UTCTime)
dhptjrrsLastModifiedTime = lens _dhptjrrsLastModifiedTime (\s a -> s {_dhptjrrsLastModifiedTime = a}) . mapping _Time

-- | If the hyperparameter tuning job is an warm start tuning job with a @WarmStartType@ of @IDENTICAL_DATA_AND_ALGORITHM@ , this is the 'TrainingJobSummary' for the training job with the best objective metric value of all training jobs launched by this tuning job and all parent jobs specified for the warm start tuning job.
dhptjrrsOverallBestTrainingJob :: Lens' DescribeHyperParameterTuningJobResponse (Maybe HyperParameterTrainingJobSummary)
dhptjrrsOverallBestTrainingJob = lens _dhptjrrsOverallBestTrainingJob (\s a -> s {_dhptjrrsOverallBestTrainingJob = a})

-- | The 'HyperParameterTrainingJobDefinition' object that specifies the definition of the training jobs that this tuning job launches.
dhptjrrsTrainingJobDefinition :: Lens' DescribeHyperParameterTuningJobResponse (Maybe HyperParameterTrainingJobDefinition)
dhptjrrsTrainingJobDefinition = lens _dhptjrrsTrainingJobDefinition (\s a -> s {_dhptjrrsTrainingJobDefinition = a})

-- | -- | The response status code.
dhptjrrsResponseStatus :: Lens' DescribeHyperParameterTuningJobResponse Int
dhptjrrsResponseStatus = lens _dhptjrrsResponseStatus (\s a -> s {_dhptjrrsResponseStatus = a})

-- | The name of the tuning job.
dhptjrrsHyperParameterTuningJobName :: Lens' DescribeHyperParameterTuningJobResponse Text
dhptjrrsHyperParameterTuningJobName = lens _dhptjrrsHyperParameterTuningJobName (\s a -> s {_dhptjrrsHyperParameterTuningJobName = a})

-- | The Amazon Resource Name (ARN) of the tuning job.
dhptjrrsHyperParameterTuningJobARN :: Lens' DescribeHyperParameterTuningJobResponse Text
dhptjrrsHyperParameterTuningJobARN = lens _dhptjrrsHyperParameterTuningJobARN (\s a -> s {_dhptjrrsHyperParameterTuningJobARN = a})

-- | The 'HyperParameterTuningJobConfig' object that specifies the configuration of the tuning job.
dhptjrrsHyperParameterTuningJobConfig :: Lens' DescribeHyperParameterTuningJobResponse HyperParameterTuningJobConfig
dhptjrrsHyperParameterTuningJobConfig = lens _dhptjrrsHyperParameterTuningJobConfig (\s a -> s {_dhptjrrsHyperParameterTuningJobConfig = a})

-- | The status of the tuning job: InProgress, Completed, Failed, Stopping, or Stopped.
dhptjrrsHyperParameterTuningJobStatus :: Lens' DescribeHyperParameterTuningJobResponse HyperParameterTuningJobStatus
dhptjrrsHyperParameterTuningJobStatus = lens _dhptjrrsHyperParameterTuningJobStatus (\s a -> s {_dhptjrrsHyperParameterTuningJobStatus = a})

-- | The date and time that the tuning job started.
dhptjrrsCreationTime :: Lens' DescribeHyperParameterTuningJobResponse UTCTime
dhptjrrsCreationTime = lens _dhptjrrsCreationTime (\s a -> s {_dhptjrrsCreationTime = a}) . _Time

-- | The 'TrainingJobStatusCounters' object that specifies the number of training jobs, categorized by status, that this tuning job launched.
dhptjrrsTrainingJobStatusCounters :: Lens' DescribeHyperParameterTuningJobResponse TrainingJobStatusCounters
dhptjrrsTrainingJobStatusCounters = lens _dhptjrrsTrainingJobStatusCounters (\s a -> s {_dhptjrrsTrainingJobStatusCounters = a})

-- | The 'ObjectiveStatusCounters' object that specifies the number of training jobs, categorized by the status of their final objective metric, that this tuning job launched.
dhptjrrsObjectiveStatusCounters :: Lens' DescribeHyperParameterTuningJobResponse ObjectiveStatusCounters
dhptjrrsObjectiveStatusCounters = lens _dhptjrrsObjectiveStatusCounters (\s a -> s {_dhptjrrsObjectiveStatusCounters = a})

instance
  NFData
    DescribeHyperParameterTuningJobResponse
