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
-- Module      : Network.AWS.DMS.MoveReplicationTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves a replication task from its current replication instance to a different target replication instance using the specified parameters. The target replication instance must be created with the same or later AWS DMS version as the current replication instance.
module Network.AWS.DMS.MoveReplicationTask
  ( -- * Creating a Request
    moveReplicationTask,
    MoveReplicationTask,

    -- * Request Lenses
    mReplicationTaskARN,
    mTargetReplicationInstanceARN,

    -- * Destructuring the Response
    moveReplicationTaskResponse,
    MoveReplicationTaskResponse,

    -- * Response Lenses
    mrsReplicationTask,
    mrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'moveReplicationTask' smart constructor.
data MoveReplicationTask = MoveReplicationTask'
  { _mReplicationTaskARN ::
      !Text,
    _mTargetReplicationInstanceARN ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MoveReplicationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mReplicationTaskARN' - The Amazon Resource Name (ARN) of the task that you want to move.
--
-- * 'mTargetReplicationInstanceARN' - The ARN of the replication instance where you want to move the task to.
moveReplicationTask ::
  -- | 'mReplicationTaskARN'
  Text ->
  -- | 'mTargetReplicationInstanceARN'
  Text ->
  MoveReplicationTask
moveReplicationTask
  pReplicationTaskARN_
  pTargetReplicationInstanceARN_ =
    MoveReplicationTask'
      { _mReplicationTaskARN =
          pReplicationTaskARN_,
        _mTargetReplicationInstanceARN =
          pTargetReplicationInstanceARN_
      }

-- | The Amazon Resource Name (ARN) of the task that you want to move.
mReplicationTaskARN :: Lens' MoveReplicationTask Text
mReplicationTaskARN = lens _mReplicationTaskARN (\s a -> s {_mReplicationTaskARN = a})

-- | The ARN of the replication instance where you want to move the task to.
mTargetReplicationInstanceARN :: Lens' MoveReplicationTask Text
mTargetReplicationInstanceARN = lens _mTargetReplicationInstanceARN (\s a -> s {_mTargetReplicationInstanceARN = a})

instance AWSRequest MoveReplicationTask where
  type
    Rs MoveReplicationTask =
      MoveReplicationTaskResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          MoveReplicationTaskResponse'
            <$> (x .?> "ReplicationTask") <*> (pure (fromEnum s))
      )

instance Hashable MoveReplicationTask

instance NFData MoveReplicationTask

instance ToHeaders MoveReplicationTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.MoveReplicationTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON MoveReplicationTask where
  toJSON MoveReplicationTask' {..} =
    object
      ( catMaybes
          [ Just ("ReplicationTaskArn" .= _mReplicationTaskARN),
            Just
              ( "TargetReplicationInstanceArn"
                  .= _mTargetReplicationInstanceARN
              )
          ]
      )

instance ToPath MoveReplicationTask where
  toPath = const "/"

instance ToQuery MoveReplicationTask where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'moveReplicationTaskResponse' smart constructor.
data MoveReplicationTaskResponse = MoveReplicationTaskResponse'
  { _mrsReplicationTask ::
      !( Maybe
           ReplicationTask
       ),
    _mrsResponseStatus ::
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

-- | Creates a value of 'MoveReplicationTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrsReplicationTask' - The replication task that was moved.
--
-- * 'mrsResponseStatus' - -- | The response status code.
moveReplicationTaskResponse ::
  -- | 'mrsResponseStatus'
  Int ->
  MoveReplicationTaskResponse
moveReplicationTaskResponse pResponseStatus_ =
  MoveReplicationTaskResponse'
    { _mrsReplicationTask =
        Nothing,
      _mrsResponseStatus = pResponseStatus_
    }

-- | The replication task that was moved.
mrsReplicationTask :: Lens' MoveReplicationTaskResponse (Maybe ReplicationTask)
mrsReplicationTask = lens _mrsReplicationTask (\s a -> s {_mrsReplicationTask = a})

-- | -- | The response status code.
mrsResponseStatus :: Lens' MoveReplicationTaskResponse Int
mrsResponseStatus = lens _mrsResponseStatus (\s a -> s {_mrsResponseStatus = a})

instance NFData MoveReplicationTaskResponse
