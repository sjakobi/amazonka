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
-- Module      : Network.AWS.Batch.UpdateJobQueue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job queue.
module Network.AWS.Batch.UpdateJobQueue
  ( -- * Creating a Request
    updateJobQueue,
    UpdateJobQueue,

    -- * Request Lenses
    ujqComputeEnvironmentOrder,
    ujqPriority,
    ujqState,
    ujqJobQueue,

    -- * Destructuring the Response
    updateJobQueueResponse,
    UpdateJobQueueResponse,

    -- * Response Lenses
    ujqrrsJobQueueName,
    ujqrrsJobQueueARN,
    ujqrrsResponseStatus,
  )
where

import Network.AWS.Batch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for @UpdateJobQueue@ .
--
--
--
-- /See:/ 'updateJobQueue' smart constructor.
data UpdateJobQueue = UpdateJobQueue'
  { _ujqComputeEnvironmentOrder ::
      !(Maybe [ComputeEnvironmentOrder]),
    _ujqPriority :: !(Maybe Int),
    _ujqState :: !(Maybe JQState),
    _ujqJobQueue :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateJobQueue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ujqComputeEnvironmentOrder' - Details the set of compute environments mapped to a job queue and their order relative to each other. This is one of the parameters used by the job scheduler to determine which compute environment should run a given job. Compute environments must be in the @VALID@ state before you can associate them with a job queue. All of the compute environments must be either EC2 (@EC2@ or @SPOT@ ) or Fargate (@FARGATE@ or @FARGATE_SPOT@ ); EC2 and Fargate compute environments can't be mixed.
--
-- * 'ujqPriority' - The priority of the job queue. Job queues with a higher priority (or a higher integer value for the @priority@ parameter) are evaluated first when associated with the same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of @10@ is given scheduling preference over a job queue with a priority value of @1@ . All of the compute environments must be either EC2 (@EC2@ or @SPOT@ ) or Fargate (@FARGATE@ or @FARGATE_SPOT@ ); EC2 and Fargate compute environments cannot be mixed.
--
-- * 'ujqState' - Describes the queue's ability to accept new jobs. If the job queue state is @ENABLED@ , it is able to accept jobs. If the job queue state is @DISABLED@ , new jobs cannot be added to the queue, but jobs already in the queue can finish.
--
-- * 'ujqJobQueue' - The name or the Amazon Resource Name (ARN) of the job queue.
updateJobQueue ::
  -- | 'ujqJobQueue'
  Text ->
  UpdateJobQueue
updateJobQueue pJobQueue_ =
  UpdateJobQueue'
    { _ujqComputeEnvironmentOrder =
        Nothing,
      _ujqPriority = Nothing,
      _ujqState = Nothing,
      _ujqJobQueue = pJobQueue_
    }

-- | Details the set of compute environments mapped to a job queue and their order relative to each other. This is one of the parameters used by the job scheduler to determine which compute environment should run a given job. Compute environments must be in the @VALID@ state before you can associate them with a job queue. All of the compute environments must be either EC2 (@EC2@ or @SPOT@ ) or Fargate (@FARGATE@ or @FARGATE_SPOT@ ); EC2 and Fargate compute environments can't be mixed.
ujqComputeEnvironmentOrder :: Lens' UpdateJobQueue [ComputeEnvironmentOrder]
ujqComputeEnvironmentOrder = lens _ujqComputeEnvironmentOrder (\s a -> s {_ujqComputeEnvironmentOrder = a}) . _Default . _Coerce

-- | The priority of the job queue. Job queues with a higher priority (or a higher integer value for the @priority@ parameter) are evaluated first when associated with the same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of @10@ is given scheduling preference over a job queue with a priority value of @1@ . All of the compute environments must be either EC2 (@EC2@ or @SPOT@ ) or Fargate (@FARGATE@ or @FARGATE_SPOT@ ); EC2 and Fargate compute environments cannot be mixed.
ujqPriority :: Lens' UpdateJobQueue (Maybe Int)
ujqPriority = lens _ujqPriority (\s a -> s {_ujqPriority = a})

-- | Describes the queue's ability to accept new jobs. If the job queue state is @ENABLED@ , it is able to accept jobs. If the job queue state is @DISABLED@ , new jobs cannot be added to the queue, but jobs already in the queue can finish.
ujqState :: Lens' UpdateJobQueue (Maybe JQState)
ujqState = lens _ujqState (\s a -> s {_ujqState = a})

-- | The name or the Amazon Resource Name (ARN) of the job queue.
ujqJobQueue :: Lens' UpdateJobQueue Text
ujqJobQueue = lens _ujqJobQueue (\s a -> s {_ujqJobQueue = a})

instance AWSRequest UpdateJobQueue where
  type Rs UpdateJobQueue = UpdateJobQueueResponse
  request = postJSON batch
  response =
    receiveJSON
      ( \s h x ->
          UpdateJobQueueResponse'
            <$> (x .?> "jobQueueName")
            <*> (x .?> "jobQueueArn")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateJobQueue

instance NFData UpdateJobQueue

instance ToHeaders UpdateJobQueue where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateJobQueue where
  toJSON UpdateJobQueue' {..} =
    object
      ( catMaybes
          [ ("computeEnvironmentOrder" .=)
              <$> _ujqComputeEnvironmentOrder,
            ("priority" .=) <$> _ujqPriority,
            ("state" .=) <$> _ujqState,
            Just ("jobQueue" .= _ujqJobQueue)
          ]
      )

instance ToPath UpdateJobQueue where
  toPath = const "/v1/updatejobqueue"

instance ToQuery UpdateJobQueue where
  toQuery = const mempty

-- | /See:/ 'updateJobQueueResponse' smart constructor.
data UpdateJobQueueResponse = UpdateJobQueueResponse'
  { _ujqrrsJobQueueName ::
      !(Maybe Text),
    _ujqrrsJobQueueARN ::
      !(Maybe Text),
    _ujqrrsResponseStatus ::
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

-- | Creates a value of 'UpdateJobQueueResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ujqrrsJobQueueName' - The name of the job queue.
--
-- * 'ujqrrsJobQueueARN' - The Amazon Resource Name (ARN) of the job queue.
--
-- * 'ujqrrsResponseStatus' - -- | The response status code.
updateJobQueueResponse ::
  -- | 'ujqrrsResponseStatus'
  Int ->
  UpdateJobQueueResponse
updateJobQueueResponse pResponseStatus_ =
  UpdateJobQueueResponse'
    { _ujqrrsJobQueueName =
        Nothing,
      _ujqrrsJobQueueARN = Nothing,
      _ujqrrsResponseStatus = pResponseStatus_
    }

-- | The name of the job queue.
ujqrrsJobQueueName :: Lens' UpdateJobQueueResponse (Maybe Text)
ujqrrsJobQueueName = lens _ujqrrsJobQueueName (\s a -> s {_ujqrrsJobQueueName = a})

-- | The Amazon Resource Name (ARN) of the job queue.
ujqrrsJobQueueARN :: Lens' UpdateJobQueueResponse (Maybe Text)
ujqrrsJobQueueARN = lens _ujqrrsJobQueueARN (\s a -> s {_ujqrrsJobQueueARN = a})

-- | -- | The response status code.
ujqrrsResponseStatus :: Lens' UpdateJobQueueResponse Int
ujqrrsResponseStatus = lens _ujqrrsResponseStatus (\s a -> s {_ujqrrsResponseStatus = a})

instance NFData UpdateJobQueueResponse
