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
-- Module      : Network.AWS.MediaConvert.DeleteQueue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently delete a queue you have created.
module Network.AWS.MediaConvert.DeleteQueue
  ( -- * Creating a Request
    deleteQueue,
    DeleteQueue,

    -- * Request Lenses
    dqName,

    -- * Destructuring the Response
    deleteQueueResponse,
    DeleteQueueResponse,

    -- * Response Lenses
    dqrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteQueue' smart constructor.
newtype DeleteQueue = DeleteQueue' {_dqName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteQueue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqName' - The name of the queue that you want to delete.
deleteQueue ::
  -- | 'dqName'
  Text ->
  DeleteQueue
deleteQueue pName_ = DeleteQueue' {_dqName = pName_}

-- | The name of the queue that you want to delete.
dqName :: Lens' DeleteQueue Text
dqName = lens _dqName (\s a -> s {_dqName = a})

instance AWSRequest DeleteQueue where
  type Rs DeleteQueue = DeleteQueueResponse
  request = delete mediaConvert
  response =
    receiveEmpty
      ( \s h x ->
          DeleteQueueResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteQueue

instance NFData DeleteQueue

instance ToHeaders DeleteQueue where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteQueue where
  toPath DeleteQueue' {..} =
    mconcat ["/2017-08-29/queues/", toBS _dqName]

instance ToQuery DeleteQueue where
  toQuery = const mempty

-- | /See:/ 'deleteQueueResponse' smart constructor.
newtype DeleteQueueResponse = DeleteQueueResponse'
  { _dqrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteQueueResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqrrsResponseStatus' - -- | The response status code.
deleteQueueResponse ::
  -- | 'dqrrsResponseStatus'
  Int ->
  DeleteQueueResponse
deleteQueueResponse pResponseStatus_ =
  DeleteQueueResponse'
    { _dqrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dqrrsResponseStatus :: Lens' DeleteQueueResponse Int
dqrrsResponseStatus = lens _dqrrsResponseStatus (\s a -> s {_dqrrsResponseStatus = a})

instance NFData DeleteQueueResponse
