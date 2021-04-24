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
-- Module      : Network.AWS.SSM.TerminateSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently ends a session and closes the data connection between the Session Manager client and SSM Agent on the instance. A terminated session cannot be resumed.
module Network.AWS.SSM.TerminateSession
  ( -- * Creating a Request
    terminateSession,
    TerminateSession,

    -- * Request Lenses
    tsSessionId,

    -- * Destructuring the Response
    terminateSessionResponse,
    TerminateSessionResponse,

    -- * Response Lenses
    tsrrsSessionId,
    tsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'terminateSession' smart constructor.
newtype TerminateSession = TerminateSession'
  { _tsSessionId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TerminateSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsSessionId' - The ID of the session to terminate.
terminateSession ::
  -- | 'tsSessionId'
  Text ->
  TerminateSession
terminateSession pSessionId_ =
  TerminateSession' {_tsSessionId = pSessionId_}

-- | The ID of the session to terminate.
tsSessionId :: Lens' TerminateSession Text
tsSessionId = lens _tsSessionId (\s a -> s {_tsSessionId = a})

instance AWSRequest TerminateSession where
  type Rs TerminateSession = TerminateSessionResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          TerminateSessionResponse'
            <$> (x .?> "SessionId") <*> (pure (fromEnum s))
      )

instance Hashable TerminateSession

instance NFData TerminateSession

instance ToHeaders TerminateSession where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.TerminateSession" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TerminateSession where
  toJSON TerminateSession' {..} =
    object
      (catMaybes [Just ("SessionId" .= _tsSessionId)])

instance ToPath TerminateSession where
  toPath = const "/"

instance ToQuery TerminateSession where
  toQuery = const mempty

-- | /See:/ 'terminateSessionResponse' smart constructor.
data TerminateSessionResponse = TerminateSessionResponse'
  { _tsrrsSessionId ::
      !(Maybe Text),
    _tsrrsResponseStatus ::
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

-- | Creates a value of 'TerminateSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsrrsSessionId' - The ID of the session that has been terminated.
--
-- * 'tsrrsResponseStatus' - -- | The response status code.
terminateSessionResponse ::
  -- | 'tsrrsResponseStatus'
  Int ->
  TerminateSessionResponse
terminateSessionResponse pResponseStatus_ =
  TerminateSessionResponse'
    { _tsrrsSessionId =
        Nothing,
      _tsrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the session that has been terminated.
tsrrsSessionId :: Lens' TerminateSessionResponse (Maybe Text)
tsrrsSessionId = lens _tsrrsSessionId (\s a -> s {_tsrrsSessionId = a})

-- | -- | The response status code.
tsrrsResponseStatus :: Lens' TerminateSessionResponse Int
tsrrsResponseStatus = lens _tsrrsResponseStatus (\s a -> s {_tsrrsResponseStatus = a})

instance NFData TerminateSessionResponse
