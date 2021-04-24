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
-- Module      : Network.AWS.CloudWatchLogs.DeleteLogStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.
module Network.AWS.CloudWatchLogs.DeleteLogStream
  ( -- * Creating a Request
    deleteLogStream,
    DeleteLogStream,

    -- * Request Lenses
    delLogGroupName,
    delLogStreamName,

    -- * Destructuring the Response
    deleteLogStreamResponse,
    DeleteLogStreamResponse,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteLogStream' smart constructor.
data DeleteLogStream = DeleteLogStream'
  { _delLogGroupName ::
      !Text,
    _delLogStreamName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteLogStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delLogGroupName' - The name of the log group.
--
-- * 'delLogStreamName' - The name of the log stream.
deleteLogStream ::
  -- | 'delLogGroupName'
  Text ->
  -- | 'delLogStreamName'
  Text ->
  DeleteLogStream
deleteLogStream pLogGroupName_ pLogStreamName_ =
  DeleteLogStream'
    { _delLogGroupName = pLogGroupName_,
      _delLogStreamName = pLogStreamName_
    }

-- | The name of the log group.
delLogGroupName :: Lens' DeleteLogStream Text
delLogGroupName = lens _delLogGroupName (\s a -> s {_delLogGroupName = a})

-- | The name of the log stream.
delLogStreamName :: Lens' DeleteLogStream Text
delLogStreamName = lens _delLogStreamName (\s a -> s {_delLogStreamName = a})

instance AWSRequest DeleteLogStream where
  type Rs DeleteLogStream = DeleteLogStreamResponse
  request = postJSON cloudWatchLogs
  response = receiveNull DeleteLogStreamResponse'

instance Hashable DeleteLogStream

instance NFData DeleteLogStream

instance ToHeaders DeleteLogStream where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.DeleteLogStream" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteLogStream where
  toJSON DeleteLogStream' {..} =
    object
      ( catMaybes
          [ Just ("logGroupName" .= _delLogGroupName),
            Just ("logStreamName" .= _delLogStreamName)
          ]
      )

instance ToPath DeleteLogStream where
  toPath = const "/"

instance ToQuery DeleteLogStream where
  toQuery = const mempty

-- | /See:/ 'deleteLogStreamResponse' smart constructor.
data DeleteLogStreamResponse = DeleteLogStreamResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteLogStreamResponse' with the minimum fields required to make a request.
deleteLogStreamResponse ::
  DeleteLogStreamResponse
deleteLogStreamResponse = DeleteLogStreamResponse'

instance NFData DeleteLogStreamResponse
