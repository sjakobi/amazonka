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
-- Module      : Network.AWS.GameLift.GetGameSessionLogURL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the location of stored game session logs for a specified game session. When a game session is terminated, Amazon GameLift automatically stores the logs in Amazon S3 and retains them for 14 days. Use this URL to download the logs.
--
--
--     * 'CreateGameSession'
--
--     * 'DescribeGameSessions'
--
--     * 'DescribeGameSessionDetails'
--
--     * 'SearchGameSessions'
--
--     * 'UpdateGameSession'
--
--     * 'GetGameSessionLogUrl'
--
--     * Game session placements
--
--     * 'StartGameSessionPlacement'
--
--     * 'DescribeGameSessionPlacement'
--
--     * 'StopGameSessionPlacement'
module Network.AWS.GameLift.GetGameSessionLogURL
  ( -- * Creating a Request
    getGameSessionLogURL,
    GetGameSessionLogURL,

    -- * Request Lenses
    ggsluGameSessionId,

    -- * Destructuring the Response
    getGameSessionLogURLResponse,
    GetGameSessionLogURLResponse,

    -- * Response Lenses
    ggslurrsPreSignedURL,
    ggslurrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'getGameSessionLogURL' smart constructor.
newtype GetGameSessionLogURL = GetGameSessionLogURL'
  { _ggsluGameSessionId ::
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

-- | Creates a value of 'GetGameSessionLogURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggsluGameSessionId' - A unique identifier for the game session to get logs for.
getGameSessionLogURL ::
  -- | 'ggsluGameSessionId'
  Text ->
  GetGameSessionLogURL
getGameSessionLogURL pGameSessionId_ =
  GetGameSessionLogURL'
    { _ggsluGameSessionId =
        pGameSessionId_
    }

-- | A unique identifier for the game session to get logs for.
ggsluGameSessionId :: Lens' GetGameSessionLogURL Text
ggsluGameSessionId = lens _ggsluGameSessionId (\s a -> s {_ggsluGameSessionId = a})

instance AWSRequest GetGameSessionLogURL where
  type
    Rs GetGameSessionLogURL =
      GetGameSessionLogURLResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          GetGameSessionLogURLResponse'
            <$> (x .?> "PreSignedUrl") <*> (pure (fromEnum s))
      )

instance Hashable GetGameSessionLogURL

instance NFData GetGameSessionLogURL

instance ToHeaders GetGameSessionLogURL where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.GetGameSessionLogUrl" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetGameSessionLogURL where
  toJSON GetGameSessionLogURL' {..} =
    object
      ( catMaybes
          [Just ("GameSessionId" .= _ggsluGameSessionId)]
      )

instance ToPath GetGameSessionLogURL where
  toPath = const "/"

instance ToQuery GetGameSessionLogURL where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'getGameSessionLogURLResponse' smart constructor.
data GetGameSessionLogURLResponse = GetGameSessionLogURLResponse'
  { _ggslurrsPreSignedURL ::
      !(Maybe Text),
    _ggslurrsResponseStatus ::
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

-- | Creates a value of 'GetGameSessionLogURLResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggslurrsPreSignedURL' - Location of the requested game session logs, available for download. This URL is valid for 15 minutes, after which S3 will reject any download request using this URL. You can request a new URL any time within the 14-day period that the logs are retained.
--
-- * 'ggslurrsResponseStatus' - -- | The response status code.
getGameSessionLogURLResponse ::
  -- | 'ggslurrsResponseStatus'
  Int ->
  GetGameSessionLogURLResponse
getGameSessionLogURLResponse pResponseStatus_ =
  GetGameSessionLogURLResponse'
    { _ggslurrsPreSignedURL =
        Nothing,
      _ggslurrsResponseStatus = pResponseStatus_
    }

-- | Location of the requested game session logs, available for download. This URL is valid for 15 minutes, after which S3 will reject any download request using this URL. You can request a new URL any time within the 14-day period that the logs are retained.
ggslurrsPreSignedURL :: Lens' GetGameSessionLogURLResponse (Maybe Text)
ggslurrsPreSignedURL = lens _ggslurrsPreSignedURL (\s a -> s {_ggslurrsPreSignedURL = a})

-- | -- | The response status code.
ggslurrsResponseStatus :: Lens' GetGameSessionLogURLResponse Int
ggslurrsResponseStatus = lens _ggslurrsResponseStatus (\s a -> s {_ggslurrsResponseStatus = a})

instance NFData GetGameSessionLogURLResponse
