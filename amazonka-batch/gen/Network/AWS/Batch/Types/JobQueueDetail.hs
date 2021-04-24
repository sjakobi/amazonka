{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.JobQueueDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JobQueueDetail where

import Network.AWS.Batch.Types.ComputeEnvironmentOrder
import Network.AWS.Batch.Types.JQState
import Network.AWS.Batch.Types.JQStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the details of an AWS Batch job queue.
--
--
--
-- /See:/ 'jobQueueDetail' smart constructor.
data JobQueueDetail = JobQueueDetail'
  { _jqdStatus ::
      !(Maybe JQStatus),
    _jqdTags :: !(Maybe (Map Text Text)),
    _jqdStatusReason :: !(Maybe Text),
    _jqdJobQueueName :: !Text,
    _jqdJobQueueARN :: !Text,
    _jqdState :: !JQState,
    _jqdPriority :: !Int,
    _jqdComputeEnvironmentOrder ::
      ![ComputeEnvironmentOrder]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobQueueDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jqdStatus' - The status of the job queue (for example, @CREATING@ or @VALID@ ).
--
-- * 'jqdTags' - The tags applied to the job queue. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html Tagging your AWS Batch resources> in /AWS Batch User Guide/ .
--
-- * 'jqdStatusReason' - A short, human-readable string to provide additional details about the current status of the job queue.
--
-- * 'jqdJobQueueName' - The name of the job queue.
--
-- * 'jqdJobQueueARN' - The Amazon Resource Name (ARN) of the job queue.
--
-- * 'jqdState' - Describes the ability of the queue to accept new jobs. If the job queue state is @ENABLED@ , it's able to accept jobs. If the job queue state is @DISABLED@ , new jobs can't be added to the queue, but jobs already in the queue can finish.
--
-- * 'jqdPriority' - The priority of the job queue. Job queues with a higher priority (or a higher integer value for the @priority@ parameter) are evaluated first when associated with the same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of @10@ is given scheduling preference over a job queue with a priority value of @1@ . All of the compute environments must be either EC2 (@EC2@ or @SPOT@ ) or Fargate (@FARGATE@ or @FARGATE_SPOT@ ); EC2 and Fargate compute environments cannot be mixed.
--
-- * 'jqdComputeEnvironmentOrder' - The compute environments that are attached to the job queue and the order that job placement is preferred. Compute environments are selected for job placement in ascending order.
jobQueueDetail ::
  -- | 'jqdJobQueueName'
  Text ->
  -- | 'jqdJobQueueARN'
  Text ->
  -- | 'jqdState'
  JQState ->
  -- | 'jqdPriority'
  Int ->
  JobQueueDetail
jobQueueDetail
  pJobQueueName_
  pJobQueueARN_
  pState_
  pPriority_ =
    JobQueueDetail'
      { _jqdStatus = Nothing,
        _jqdTags = Nothing,
        _jqdStatusReason = Nothing,
        _jqdJobQueueName = pJobQueueName_,
        _jqdJobQueueARN = pJobQueueARN_,
        _jqdState = pState_,
        _jqdPriority = pPriority_,
        _jqdComputeEnvironmentOrder = mempty
      }

-- | The status of the job queue (for example, @CREATING@ or @VALID@ ).
jqdStatus :: Lens' JobQueueDetail (Maybe JQStatus)
jqdStatus = lens _jqdStatus (\s a -> s {_jqdStatus = a})

-- | The tags applied to the job queue. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html Tagging your AWS Batch resources> in /AWS Batch User Guide/ .
jqdTags :: Lens' JobQueueDetail (HashMap Text Text)
jqdTags = lens _jqdTags (\s a -> s {_jqdTags = a}) . _Default . _Map

-- | A short, human-readable string to provide additional details about the current status of the job queue.
jqdStatusReason :: Lens' JobQueueDetail (Maybe Text)
jqdStatusReason = lens _jqdStatusReason (\s a -> s {_jqdStatusReason = a})

-- | The name of the job queue.
jqdJobQueueName :: Lens' JobQueueDetail Text
jqdJobQueueName = lens _jqdJobQueueName (\s a -> s {_jqdJobQueueName = a})

-- | The Amazon Resource Name (ARN) of the job queue.
jqdJobQueueARN :: Lens' JobQueueDetail Text
jqdJobQueueARN = lens _jqdJobQueueARN (\s a -> s {_jqdJobQueueARN = a})

-- | Describes the ability of the queue to accept new jobs. If the job queue state is @ENABLED@ , it's able to accept jobs. If the job queue state is @DISABLED@ , new jobs can't be added to the queue, but jobs already in the queue can finish.
jqdState :: Lens' JobQueueDetail JQState
jqdState = lens _jqdState (\s a -> s {_jqdState = a})

-- | The priority of the job queue. Job queues with a higher priority (or a higher integer value for the @priority@ parameter) are evaluated first when associated with the same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of @10@ is given scheduling preference over a job queue with a priority value of @1@ . All of the compute environments must be either EC2 (@EC2@ or @SPOT@ ) or Fargate (@FARGATE@ or @FARGATE_SPOT@ ); EC2 and Fargate compute environments cannot be mixed.
jqdPriority :: Lens' JobQueueDetail Int
jqdPriority = lens _jqdPriority (\s a -> s {_jqdPriority = a})

-- | The compute environments that are attached to the job queue and the order that job placement is preferred. Compute environments are selected for job placement in ascending order.
jqdComputeEnvironmentOrder :: Lens' JobQueueDetail [ComputeEnvironmentOrder]
jqdComputeEnvironmentOrder = lens _jqdComputeEnvironmentOrder (\s a -> s {_jqdComputeEnvironmentOrder = a}) . _Coerce

instance FromJSON JobQueueDetail where
  parseJSON =
    withObject
      "JobQueueDetail"
      ( \x ->
          JobQueueDetail'
            <$> (x .:? "status")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "statusReason")
            <*> (x .: "jobQueueName")
            <*> (x .: "jobQueueArn")
            <*> (x .: "state")
            <*> (x .: "priority")
            <*> (x .:? "computeEnvironmentOrder" .!= mempty)
      )

instance Hashable JobQueueDetail

instance NFData JobQueueDetail
