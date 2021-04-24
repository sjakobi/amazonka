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
-- Module      : Network.AWS.MediaStore.StartAccessLogging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.
module Network.AWS.MediaStore.StartAccessLogging
  ( -- * Creating a Request
    startAccessLogging,
    StartAccessLogging,

    -- * Request Lenses
    salContainerName,

    -- * Destructuring the Response
    startAccessLoggingResponse,
    StartAccessLoggingResponse,

    -- * Response Lenses
    salrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaStore.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startAccessLogging' smart constructor.
newtype StartAccessLogging = StartAccessLogging'
  { _salContainerName ::
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

-- | Creates a value of 'StartAccessLogging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salContainerName' - The name of the container that you want to start access logging on.
startAccessLogging ::
  -- | 'salContainerName'
  Text ->
  StartAccessLogging
startAccessLogging pContainerName_ =
  StartAccessLogging'
    { _salContainerName =
        pContainerName_
    }

-- | The name of the container that you want to start access logging on.
salContainerName :: Lens' StartAccessLogging Text
salContainerName = lens _salContainerName (\s a -> s {_salContainerName = a})

instance AWSRequest StartAccessLogging where
  type
    Rs StartAccessLogging =
      StartAccessLoggingResponse
  request = postJSON mediaStore
  response =
    receiveEmpty
      ( \s h x ->
          StartAccessLoggingResponse' <$> (pure (fromEnum s))
      )

instance Hashable StartAccessLogging

instance NFData StartAccessLogging

instance ToHeaders StartAccessLogging where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MediaStore_20170901.StartAccessLogging" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartAccessLogging where
  toJSON StartAccessLogging' {..} =
    object
      ( catMaybes
          [Just ("ContainerName" .= _salContainerName)]
      )

instance ToPath StartAccessLogging where
  toPath = const "/"

instance ToQuery StartAccessLogging where
  toQuery = const mempty

-- | /See:/ 'startAccessLoggingResponse' smart constructor.
newtype StartAccessLoggingResponse = StartAccessLoggingResponse'
  { _salrrsResponseStatus ::
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

-- | Creates a value of 'StartAccessLoggingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salrrsResponseStatus' - -- | The response status code.
startAccessLoggingResponse ::
  -- | 'salrrsResponseStatus'
  Int ->
  StartAccessLoggingResponse
startAccessLoggingResponse pResponseStatus_ =
  StartAccessLoggingResponse'
    { _salrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
salrrsResponseStatus :: Lens' StartAccessLoggingResponse Int
salrrsResponseStatus = lens _salrrsResponseStatus (\s a -> s {_salrrsResponseStatus = a})

instance NFData StartAccessLoggingResponse
