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
-- Module      : Network.AWS.ECS.SubmitTaskStateChange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sent to acknowledge that a task changed states.
module Network.AWS.ECS.SubmitTaskStateChange
  ( -- * Creating a Request
    submitTaskStateChange,
    SubmitTaskStateChange,

    -- * Request Lenses
    stscStatus,
    stscPullStartedAt,
    stscTask,
    stscContainers,
    stscReason,
    stscPullStoppedAt,
    stscExecutionStoppedAt,
    stscCluster,
    stscAttachments,

    -- * Destructuring the Response
    submitTaskStateChangeResponse,
    SubmitTaskStateChangeResponse,

    -- * Response Lenses
    stscrrsAcknowledgment,
    stscrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'submitTaskStateChange' smart constructor.
data SubmitTaskStateChange = SubmitTaskStateChange'
  { _stscStatus ::
      !(Maybe Text),
    _stscPullStartedAt ::
      !(Maybe POSIX),
    _stscTask :: !(Maybe Text),
    _stscContainers ::
      !( Maybe
           [ContainerStateChange]
       ),
    _stscReason ::
      !(Maybe Text),
    _stscPullStoppedAt ::
      !(Maybe POSIX),
    _stscExecutionStoppedAt ::
      !(Maybe POSIX),
    _stscCluster ::
      !(Maybe Text),
    _stscAttachments ::
      !( Maybe
           [AttachmentStateChange]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SubmitTaskStateChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stscStatus' - The status of the state change request.
--
-- * 'stscPullStartedAt' - The Unix timestamp for when the container image pull began.
--
-- * 'stscTask' - The task ID or full ARN of the task in the state change request.
--
-- * 'stscContainers' - Any containers associated with the state change request.
--
-- * 'stscReason' - The reason for the state change request.
--
-- * 'stscPullStoppedAt' - The Unix timestamp for when the container image pull completed.
--
-- * 'stscExecutionStoppedAt' - The Unix timestamp for when the task execution stopped.
--
-- * 'stscCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.
--
-- * 'stscAttachments' - Any attachments associated with the state change request.
submitTaskStateChange ::
  SubmitTaskStateChange
submitTaskStateChange =
  SubmitTaskStateChange'
    { _stscStatus = Nothing,
      _stscPullStartedAt = Nothing,
      _stscTask = Nothing,
      _stscContainers = Nothing,
      _stscReason = Nothing,
      _stscPullStoppedAt = Nothing,
      _stscExecutionStoppedAt = Nothing,
      _stscCluster = Nothing,
      _stscAttachments = Nothing
    }

-- | The status of the state change request.
stscStatus :: Lens' SubmitTaskStateChange (Maybe Text)
stscStatus = lens _stscStatus (\s a -> s {_stscStatus = a})

-- | The Unix timestamp for when the container image pull began.
stscPullStartedAt :: Lens' SubmitTaskStateChange (Maybe UTCTime)
stscPullStartedAt = lens _stscPullStartedAt (\s a -> s {_stscPullStartedAt = a}) . mapping _Time

-- | The task ID or full ARN of the task in the state change request.
stscTask :: Lens' SubmitTaskStateChange (Maybe Text)
stscTask = lens _stscTask (\s a -> s {_stscTask = a})

-- | Any containers associated with the state change request.
stscContainers :: Lens' SubmitTaskStateChange [ContainerStateChange]
stscContainers = lens _stscContainers (\s a -> s {_stscContainers = a}) . _Default . _Coerce

-- | The reason for the state change request.
stscReason :: Lens' SubmitTaskStateChange (Maybe Text)
stscReason = lens _stscReason (\s a -> s {_stscReason = a})

-- | The Unix timestamp for when the container image pull completed.
stscPullStoppedAt :: Lens' SubmitTaskStateChange (Maybe UTCTime)
stscPullStoppedAt = lens _stscPullStoppedAt (\s a -> s {_stscPullStoppedAt = a}) . mapping _Time

-- | The Unix timestamp for when the task execution stopped.
stscExecutionStoppedAt :: Lens' SubmitTaskStateChange (Maybe UTCTime)
stscExecutionStoppedAt = lens _stscExecutionStoppedAt (\s a -> s {_stscExecutionStoppedAt = a}) . mapping _Time

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.
stscCluster :: Lens' SubmitTaskStateChange (Maybe Text)
stscCluster = lens _stscCluster (\s a -> s {_stscCluster = a})

-- | Any attachments associated with the state change request.
stscAttachments :: Lens' SubmitTaskStateChange [AttachmentStateChange]
stscAttachments = lens _stscAttachments (\s a -> s {_stscAttachments = a}) . _Default . _Coerce

instance AWSRequest SubmitTaskStateChange where
  type
    Rs SubmitTaskStateChange =
      SubmitTaskStateChangeResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          SubmitTaskStateChangeResponse'
            <$> (x .?> "acknowledgment") <*> (pure (fromEnum s))
      )

instance Hashable SubmitTaskStateChange

instance NFData SubmitTaskStateChange

instance ToHeaders SubmitTaskStateChange where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.SubmitTaskStateChange" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SubmitTaskStateChange where
  toJSON SubmitTaskStateChange' {..} =
    object
      ( catMaybes
          [ ("status" .=) <$> _stscStatus,
            ("pullStartedAt" .=) <$> _stscPullStartedAt,
            ("task" .=) <$> _stscTask,
            ("containers" .=) <$> _stscContainers,
            ("reason" .=) <$> _stscReason,
            ("pullStoppedAt" .=) <$> _stscPullStoppedAt,
            ("executionStoppedAt" .=)
              <$> _stscExecutionStoppedAt,
            ("cluster" .=) <$> _stscCluster,
            ("attachments" .=) <$> _stscAttachments
          ]
      )

instance ToPath SubmitTaskStateChange where
  toPath = const "/"

instance ToQuery SubmitTaskStateChange where
  toQuery = const mempty

-- | /See:/ 'submitTaskStateChangeResponse' smart constructor.
data SubmitTaskStateChangeResponse = SubmitTaskStateChangeResponse'
  { _stscrrsAcknowledgment ::
      !( Maybe
           Text
       ),
    _stscrrsResponseStatus ::
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

-- | Creates a value of 'SubmitTaskStateChangeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stscrrsAcknowledgment' - Acknowledgement of the state change.
--
-- * 'stscrrsResponseStatus' - -- | The response status code.
submitTaskStateChangeResponse ::
  -- | 'stscrrsResponseStatus'
  Int ->
  SubmitTaskStateChangeResponse
submitTaskStateChangeResponse pResponseStatus_ =
  SubmitTaskStateChangeResponse'
    { _stscrrsAcknowledgment =
        Nothing,
      _stscrrsResponseStatus = pResponseStatus_
    }

-- | Acknowledgement of the state change.
stscrrsAcknowledgment :: Lens' SubmitTaskStateChangeResponse (Maybe Text)
stscrrsAcknowledgment = lens _stscrrsAcknowledgment (\s a -> s {_stscrrsAcknowledgment = a})

-- | -- | The response status code.
stscrrsResponseStatus :: Lens' SubmitTaskStateChangeResponse Int
stscrrsResponseStatus = lens _stscrrsResponseStatus (\s a -> s {_stscrrsResponseStatus = a})

instance NFData SubmitTaskStateChangeResponse
