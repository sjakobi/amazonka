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
-- Module      : Network.AWS.Connect.SuspendContactRecording
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- When a contact is being recorded, this API suspends recording the call. For example, you might suspend the call recording while collecting sensitive information, such as a credit card number. Then use ResumeContactRecording to restart recording.
--
--
-- The period of time that the recording is suspended is filled with silence in the final recording.
--
-- Only voice recordings are supported at this time.
module Network.AWS.Connect.SuspendContactRecording
  ( -- * Creating a Request
    suspendContactRecording,
    SuspendContactRecording,

    -- * Request Lenses
    scrInstanceId,
    scrContactId,
    scrInitialContactId,

    -- * Destructuring the Response
    suspendContactRecordingResponse,
    SuspendContactRecordingResponse,

    -- * Response Lenses
    scrrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'suspendContactRecording' smart constructor.
data SuspendContactRecording = SuspendContactRecording'
  { _scrInstanceId ::
      !Text,
    _scrContactId :: !Text,
    _scrInitialContactId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SuspendContactRecording' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'scrContactId' - The identifier of the contact.
--
-- * 'scrInitialContactId' - The identifier of the contact. This is the identifier of the contact associated with the first interaction with the contact center.
suspendContactRecording ::
  -- | 'scrInstanceId'
  Text ->
  -- | 'scrContactId'
  Text ->
  -- | 'scrInitialContactId'
  Text ->
  SuspendContactRecording
suspendContactRecording
  pInstanceId_
  pContactId_
  pInitialContactId_ =
    SuspendContactRecording'
      { _scrInstanceId =
          pInstanceId_,
        _scrContactId = pContactId_,
        _scrInitialContactId = pInitialContactId_
      }

-- | The identifier of the Amazon Connect instance.
scrInstanceId :: Lens' SuspendContactRecording Text
scrInstanceId = lens _scrInstanceId (\s a -> s {_scrInstanceId = a})

-- | The identifier of the contact.
scrContactId :: Lens' SuspendContactRecording Text
scrContactId = lens _scrContactId (\s a -> s {_scrContactId = a})

-- | The identifier of the contact. This is the identifier of the contact associated with the first interaction with the contact center.
scrInitialContactId :: Lens' SuspendContactRecording Text
scrInitialContactId = lens _scrInitialContactId (\s a -> s {_scrInitialContactId = a})

instance AWSRequest SuspendContactRecording where
  type
    Rs SuspendContactRecording =
      SuspendContactRecordingResponse
  request = postJSON connect
  response =
    receiveEmpty
      ( \s h x ->
          SuspendContactRecordingResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable SuspendContactRecording

instance NFData SuspendContactRecording

instance ToHeaders SuspendContactRecording where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SuspendContactRecording where
  toJSON SuspendContactRecording' {..} =
    object
      ( catMaybes
          [ Just ("InstanceId" .= _scrInstanceId),
            Just ("ContactId" .= _scrContactId),
            Just ("InitialContactId" .= _scrInitialContactId)
          ]
      )

instance ToPath SuspendContactRecording where
  toPath = const "/contact/suspend-recording"

instance ToQuery SuspendContactRecording where
  toQuery = const mempty

-- | /See:/ 'suspendContactRecordingResponse' smart constructor.
newtype SuspendContactRecordingResponse = SuspendContactRecordingResponse'
  { _scrrrsResponseStatus ::
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

-- | Creates a value of 'SuspendContactRecordingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrrrsResponseStatus' - -- | The response status code.
suspendContactRecordingResponse ::
  -- | 'scrrrsResponseStatus'
  Int ->
  SuspendContactRecordingResponse
suspendContactRecordingResponse pResponseStatus_ =
  SuspendContactRecordingResponse'
    { _scrrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
scrrrsResponseStatus :: Lens' SuspendContactRecordingResponse Int
scrrrsResponseStatus = lens _scrrrsResponseStatus (\s a -> s {_scrrrsResponseStatus = a})

instance NFData SuspendContactRecordingResponse
