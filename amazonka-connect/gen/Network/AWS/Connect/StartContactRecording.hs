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
-- Module      : Network.AWS.Connect.StartContactRecording
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts recording the contact when the agent joins the call. StartContactRecording is a one-time action. For example, if you use StopContactRecording to stop recording an ongoing call, you can't use StartContactRecording to restart it. For scenarios where the recording has started and you want to suspend and resume it, such as when collecting sensitive information (for example, a credit card number), use SuspendContactRecording and ResumeContactRecording.
--
--
-- You can use this API to override the recording behavior configured in the <https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html Set recording behavior> block.
--
-- Only voice recordings are supported at this time.
module Network.AWS.Connect.StartContactRecording
  ( -- * Creating a Request
    startContactRecording,
    StartContactRecording,

    -- * Request Lenses
    sInstanceId,
    sContactId,
    sInitialContactId,
    sVoiceRecordingConfiguration,

    -- * Destructuring the Response
    startContactRecordingResponse,
    StartContactRecordingResponse,

    -- * Response Lenses
    srsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startContactRecording' smart constructor.
data StartContactRecording = StartContactRecording'
  { _sInstanceId ::
      !Text,
    _sContactId :: !Text,
    _sInitialContactId :: !Text,
    _sVoiceRecordingConfiguration ::
      !VoiceRecordingConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartContactRecording' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'sContactId' - The identifier of the contact.
--
-- * 'sInitialContactId' - The identifier of the contact. This is the identifier of the contact associated with the first interaction with the contact center.
--
-- * 'sVoiceRecordingConfiguration' - The person being recorded.
startContactRecording ::
  -- | 'sInstanceId'
  Text ->
  -- | 'sContactId'
  Text ->
  -- | 'sInitialContactId'
  Text ->
  -- | 'sVoiceRecordingConfiguration'
  VoiceRecordingConfiguration ->
  StartContactRecording
startContactRecording
  pInstanceId_
  pContactId_
  pInitialContactId_
  pVoiceRecordingConfiguration_ =
    StartContactRecording'
      { _sInstanceId = pInstanceId_,
        _sContactId = pContactId_,
        _sInitialContactId = pInitialContactId_,
        _sVoiceRecordingConfiguration =
          pVoiceRecordingConfiguration_
      }

-- | The identifier of the Amazon Connect instance.
sInstanceId :: Lens' StartContactRecording Text
sInstanceId = lens _sInstanceId (\s a -> s {_sInstanceId = a})

-- | The identifier of the contact.
sContactId :: Lens' StartContactRecording Text
sContactId = lens _sContactId (\s a -> s {_sContactId = a})

-- | The identifier of the contact. This is the identifier of the contact associated with the first interaction with the contact center.
sInitialContactId :: Lens' StartContactRecording Text
sInitialContactId = lens _sInitialContactId (\s a -> s {_sInitialContactId = a})

-- | The person being recorded.
sVoiceRecordingConfiguration :: Lens' StartContactRecording VoiceRecordingConfiguration
sVoiceRecordingConfiguration = lens _sVoiceRecordingConfiguration (\s a -> s {_sVoiceRecordingConfiguration = a})

instance AWSRequest StartContactRecording where
  type
    Rs StartContactRecording =
      StartContactRecordingResponse
  request = postJSON connect
  response =
    receiveEmpty
      ( \s h x ->
          StartContactRecordingResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable StartContactRecording

instance NFData StartContactRecording

instance ToHeaders StartContactRecording where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartContactRecording where
  toJSON StartContactRecording' {..} =
    object
      ( catMaybes
          [ Just ("InstanceId" .= _sInstanceId),
            Just ("ContactId" .= _sContactId),
            Just ("InitialContactId" .= _sInitialContactId),
            Just
              ( "VoiceRecordingConfiguration"
                  .= _sVoiceRecordingConfiguration
              )
          ]
      )

instance ToPath StartContactRecording where
  toPath = const "/contact/start-recording"

instance ToQuery StartContactRecording where
  toQuery = const mempty

-- | /See:/ 'startContactRecordingResponse' smart constructor.
newtype StartContactRecordingResponse = StartContactRecordingResponse'
  { _srsResponseStatus ::
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

-- | Creates a value of 'StartContactRecordingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsResponseStatus' - -- | The response status code.
startContactRecordingResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StartContactRecordingResponse
startContactRecordingResponse pResponseStatus_ =
  StartContactRecordingResponse'
    { _srsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
srsResponseStatus :: Lens' StartContactRecordingResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StartContactRecordingResponse
