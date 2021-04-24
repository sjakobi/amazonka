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
-- Module      : Network.AWS.DirectoryService.DeregisterEventTopic
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified directory as a publisher to the specified SNS topic.
module Network.AWS.DirectoryService.DeregisterEventTopic
  ( -- * Creating a Request
    deregisterEventTopic,
    DeregisterEventTopic,

    -- * Request Lenses
    derDirectoryId,
    derTopicName,

    -- * Destructuring the Response
    deregisterEventTopicResponse,
    DeregisterEventTopicResponse,

    -- * Response Lenses
    detrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Removes the specified directory as a publisher to the specified SNS topic.
--
--
--
-- /See:/ 'deregisterEventTopic' smart constructor.
data DeregisterEventTopic = DeregisterEventTopic'
  { _derDirectoryId ::
      !Text,
    _derTopicName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeregisterEventTopic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derDirectoryId' - The Directory ID to remove as a publisher. This directory will no longer send messages to the specified SNS topic.
--
-- * 'derTopicName' - The name of the SNS topic from which to remove the directory as a publisher.
deregisterEventTopic ::
  -- | 'derDirectoryId'
  Text ->
  -- | 'derTopicName'
  Text ->
  DeregisterEventTopic
deregisterEventTopic pDirectoryId_ pTopicName_ =
  DeregisterEventTopic'
    { _derDirectoryId =
        pDirectoryId_,
      _derTopicName = pTopicName_
    }

-- | The Directory ID to remove as a publisher. This directory will no longer send messages to the specified SNS topic.
derDirectoryId :: Lens' DeregisterEventTopic Text
derDirectoryId = lens _derDirectoryId (\s a -> s {_derDirectoryId = a})

-- | The name of the SNS topic from which to remove the directory as a publisher.
derTopicName :: Lens' DeregisterEventTopic Text
derTopicName = lens _derTopicName (\s a -> s {_derTopicName = a})

instance AWSRequest DeregisterEventTopic where
  type
    Rs DeregisterEventTopic =
      DeregisterEventTopicResponse
  request = postJSON directoryService
  response =
    receiveEmpty
      ( \s h x ->
          DeregisterEventTopicResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeregisterEventTopic

instance NFData DeregisterEventTopic

instance ToHeaders DeregisterEventTopic where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DeregisterEventTopic" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeregisterEventTopic where
  toJSON DeregisterEventTopic' {..} =
    object
      ( catMaybes
          [ Just ("DirectoryId" .= _derDirectoryId),
            Just ("TopicName" .= _derTopicName)
          ]
      )

instance ToPath DeregisterEventTopic where
  toPath = const "/"

instance ToQuery DeregisterEventTopic where
  toQuery = const mempty

-- | The result of a DeregisterEventTopic request.
--
--
--
-- /See:/ 'deregisterEventTopicResponse' smart constructor.
newtype DeregisterEventTopicResponse = DeregisterEventTopicResponse'
  { _detrrsResponseStatus ::
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

-- | Creates a value of 'DeregisterEventTopicResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detrrsResponseStatus' - -- | The response status code.
deregisterEventTopicResponse ::
  -- | 'detrrsResponseStatus'
  Int ->
  DeregisterEventTopicResponse
deregisterEventTopicResponse pResponseStatus_ =
  DeregisterEventTopicResponse'
    { _detrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
detrrsResponseStatus :: Lens' DeregisterEventTopicResponse Int
detrrsResponseStatus = lens _detrrsResponseStatus (\s a -> s {_detrrsResponseStatus = a})

instance NFData DeregisterEventTopicResponse
