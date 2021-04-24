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
-- Module      : Network.AWS.SSM.ResumeSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reconnects a session to an instance after it has been disconnected. Connections can be resumed for disconnected sessions, but not terminated sessions.
module Network.AWS.SSM.ResumeSession
  ( -- * Creating a Request
    resumeSession,
    ResumeSession,

    -- * Request Lenses
    rsSessionId,

    -- * Destructuring the Response
    resumeSessionResponse,
    ResumeSessionResponse,

    -- * Response Lenses
    rsrrsSessionId,
    rsrrsStreamURL,
    rsrrsTokenValue,
    rsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'resumeSession' smart constructor.
newtype ResumeSession = ResumeSession'
  { _rsSessionId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResumeSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsSessionId' - The ID of the disconnected session to resume.
resumeSession ::
  -- | 'rsSessionId'
  Text ->
  ResumeSession
resumeSession pSessionId_ =
  ResumeSession' {_rsSessionId = pSessionId_}

-- | The ID of the disconnected session to resume.
rsSessionId :: Lens' ResumeSession Text
rsSessionId = lens _rsSessionId (\s a -> s {_rsSessionId = a})

instance AWSRequest ResumeSession where
  type Rs ResumeSession = ResumeSessionResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ResumeSessionResponse'
            <$> (x .?> "SessionId")
            <*> (x .?> "StreamUrl")
            <*> (x .?> "TokenValue")
            <*> (pure (fromEnum s))
      )

instance Hashable ResumeSession

instance NFData ResumeSession

instance ToHeaders ResumeSession where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ResumeSession" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ResumeSession where
  toJSON ResumeSession' {..} =
    object
      (catMaybes [Just ("SessionId" .= _rsSessionId)])

instance ToPath ResumeSession where
  toPath = const "/"

instance ToQuery ResumeSession where
  toQuery = const mempty

-- | /See:/ 'resumeSessionResponse' smart constructor.
data ResumeSessionResponse = ResumeSessionResponse'
  { _rsrrsSessionId ::
      !(Maybe Text),
    _rsrrsStreamURL ::
      !(Maybe Text),
    _rsrrsTokenValue ::
      !(Maybe Text),
    _rsrrsResponseStatus ::
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

-- | Creates a value of 'ResumeSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsrrsSessionId' - The ID of the session.
--
-- * 'rsrrsStreamURL' - A URL back to SSM Agent on the instance that the Session Manager client uses to send commands and receive output from the instance. Format: @wss://ssmmessages.__region__ .amazonaws.com/v1/data-channel/__session-id__ ?stream=(input|output)@ . __region__ represents the Region identifier for an AWS Region supported by AWS Systems Manager, such as @us-east-2@ for the US East (Ohio) Region. For a list of supported __region__ values, see the __Region__ column in <http://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region Systems Manager service endpoints> in the /AWS General Reference/ . __session-id__ represents the ID of a Session Manager session, such as @1a2b3c4dEXAMPLE@ .
--
-- * 'rsrrsTokenValue' - An encrypted token value containing session and caller information. Used to authenticate the connection to the instance.
--
-- * 'rsrrsResponseStatus' - -- | The response status code.
resumeSessionResponse ::
  -- | 'rsrrsResponseStatus'
  Int ->
  ResumeSessionResponse
resumeSessionResponse pResponseStatus_ =
  ResumeSessionResponse'
    { _rsrrsSessionId = Nothing,
      _rsrrsStreamURL = Nothing,
      _rsrrsTokenValue = Nothing,
      _rsrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the session.
rsrrsSessionId :: Lens' ResumeSessionResponse (Maybe Text)
rsrrsSessionId = lens _rsrrsSessionId (\s a -> s {_rsrrsSessionId = a})

-- | A URL back to SSM Agent on the instance that the Session Manager client uses to send commands and receive output from the instance. Format: @wss://ssmmessages.__region__ .amazonaws.com/v1/data-channel/__session-id__ ?stream=(input|output)@ . __region__ represents the Region identifier for an AWS Region supported by AWS Systems Manager, such as @us-east-2@ for the US East (Ohio) Region. For a list of supported __region__ values, see the __Region__ column in <http://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region Systems Manager service endpoints> in the /AWS General Reference/ . __session-id__ represents the ID of a Session Manager session, such as @1a2b3c4dEXAMPLE@ .
rsrrsStreamURL :: Lens' ResumeSessionResponse (Maybe Text)
rsrrsStreamURL = lens _rsrrsStreamURL (\s a -> s {_rsrrsStreamURL = a})

-- | An encrypted token value containing session and caller information. Used to authenticate the connection to the instance.
rsrrsTokenValue :: Lens' ResumeSessionResponse (Maybe Text)
rsrrsTokenValue = lens _rsrrsTokenValue (\s a -> s {_rsrrsTokenValue = a})

-- | -- | The response status code.
rsrrsResponseStatus :: Lens' ResumeSessionResponse Int
rsrrsResponseStatus = lens _rsrrsResponseStatus (\s a -> s {_rsrrsResponseStatus = a})

instance NFData ResumeSessionResponse
