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
-- Module      : Network.AWS.DeviceFarm.GetTestGridSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A session is an instance of a browser created through a @RemoteWebDriver@ with the URL from 'CreateTestGridUrlResult$url' . You can use the following to look up sessions:
--
--
--     * The session ARN ('GetTestGridSessionRequest$sessionArn' ).
--
--     * The project ARN and a session ID ('GetTestGridSessionRequest$projectArn' and 'GetTestGridSessionRequest$sessionId' ).
module Network.AWS.DeviceFarm.GetTestGridSession
  ( -- * Creating a Request
    getTestGridSession,
    GetTestGridSession,

    -- * Request Lenses
    gtgsSessionId,
    gtgsSessionARN,
    gtgsProjectARN,

    -- * Destructuring the Response
    getTestGridSessionResponse,
    GetTestGridSessionResponse,

    -- * Response Lenses
    gtgsrrsTestGridSession,
    gtgsrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTestGridSession' smart constructor.
data GetTestGridSession = GetTestGridSession'
  { _gtgsSessionId ::
      !(Maybe Text),
    _gtgsSessionARN :: !(Maybe Text),
    _gtgsProjectARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTestGridSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgsSessionId' - An ID associated with this session.
--
-- * 'gtgsSessionARN' - An ARN that uniquely identifies a 'TestGridSession' .
--
-- * 'gtgsProjectARN' - The ARN for the project that this session belongs to. See 'CreateTestGridProject' and 'ListTestGridProjects' .
getTestGridSession ::
  GetTestGridSession
getTestGridSession =
  GetTestGridSession'
    { _gtgsSessionId = Nothing,
      _gtgsSessionARN = Nothing,
      _gtgsProjectARN = Nothing
    }

-- | An ID associated with this session.
gtgsSessionId :: Lens' GetTestGridSession (Maybe Text)
gtgsSessionId = lens _gtgsSessionId (\s a -> s {_gtgsSessionId = a})

-- | An ARN that uniquely identifies a 'TestGridSession' .
gtgsSessionARN :: Lens' GetTestGridSession (Maybe Text)
gtgsSessionARN = lens _gtgsSessionARN (\s a -> s {_gtgsSessionARN = a})

-- | The ARN for the project that this session belongs to. See 'CreateTestGridProject' and 'ListTestGridProjects' .
gtgsProjectARN :: Lens' GetTestGridSession (Maybe Text)
gtgsProjectARN = lens _gtgsProjectARN (\s a -> s {_gtgsProjectARN = a})

instance AWSRequest GetTestGridSession where
  type
    Rs GetTestGridSession =
      GetTestGridSessionResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          GetTestGridSessionResponse'
            <$> (x .?> "testGridSession") <*> (pure (fromEnum s))
      )

instance Hashable GetTestGridSession

instance NFData GetTestGridSession

instance ToHeaders GetTestGridSession where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.GetTestGridSession" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTestGridSession where
  toJSON GetTestGridSession' {..} =
    object
      ( catMaybes
          [ ("sessionId" .=) <$> _gtgsSessionId,
            ("sessionArn" .=) <$> _gtgsSessionARN,
            ("projectArn" .=) <$> _gtgsProjectARN
          ]
      )

instance ToPath GetTestGridSession where
  toPath = const "/"

instance ToQuery GetTestGridSession where
  toQuery = const mempty

-- | /See:/ 'getTestGridSessionResponse' smart constructor.
data GetTestGridSessionResponse = GetTestGridSessionResponse'
  { _gtgsrrsTestGridSession ::
      !( Maybe
           TestGridSession
       ),
    _gtgsrrsResponseStatus ::
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

-- | Creates a value of 'GetTestGridSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgsrrsTestGridSession' - The 'TestGridSession' that was requested.
--
-- * 'gtgsrrsResponseStatus' - -- | The response status code.
getTestGridSessionResponse ::
  -- | 'gtgsrrsResponseStatus'
  Int ->
  GetTestGridSessionResponse
getTestGridSessionResponse pResponseStatus_ =
  GetTestGridSessionResponse'
    { _gtgsrrsTestGridSession =
        Nothing,
      _gtgsrrsResponseStatus = pResponseStatus_
    }

-- | The 'TestGridSession' that was requested.
gtgsrrsTestGridSession :: Lens' GetTestGridSessionResponse (Maybe TestGridSession)
gtgsrrsTestGridSession = lens _gtgsrrsTestGridSession (\s a -> s {_gtgsrrsTestGridSession = a})

-- | -- | The response status code.
gtgsrrsResponseStatus :: Lens' GetTestGridSessionResponse Int
gtgsrrsResponseStatus = lens _gtgsrrsResponseStatus (\s a -> s {_gtgsrrsResponseStatus = a})

instance NFData GetTestGridSessionResponse
