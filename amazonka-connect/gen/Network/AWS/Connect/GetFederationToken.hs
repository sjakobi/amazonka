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
-- Module      : Network.AWS.Connect.GetFederationToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a token for federation.
module Network.AWS.Connect.GetFederationToken
  ( -- * Creating a Request
    getFederationToken,
    GetFederationToken,

    -- * Request Lenses
    gftInstanceId,

    -- * Destructuring the Response
    getFederationTokenResponse,
    GetFederationTokenResponse,

    -- * Response Lenses
    gftrrsCredentials,
    gftrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFederationToken' smart constructor.
newtype GetFederationToken = GetFederationToken'
  { _gftInstanceId ::
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

-- | Creates a value of 'GetFederationToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gftInstanceId' - The identifier of the Amazon Connect instance.
getFederationToken ::
  -- | 'gftInstanceId'
  Text ->
  GetFederationToken
getFederationToken pInstanceId_ =
  GetFederationToken' {_gftInstanceId = pInstanceId_}

-- | The identifier of the Amazon Connect instance.
gftInstanceId :: Lens' GetFederationToken Text
gftInstanceId = lens _gftInstanceId (\s a -> s {_gftInstanceId = a})

instance AWSRequest GetFederationToken where
  type
    Rs GetFederationToken =
      GetFederationTokenResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          GetFederationTokenResponse'
            <$> (x .?> "Credentials") <*> (pure (fromEnum s))
      )

instance Hashable GetFederationToken

instance NFData GetFederationToken

instance ToHeaders GetFederationToken where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetFederationToken where
  toPath GetFederationToken' {..} =
    mconcat ["/user/federate/", toBS _gftInstanceId]

instance ToQuery GetFederationToken where
  toQuery = const mempty

-- | /See:/ 'getFederationTokenResponse' smart constructor.
data GetFederationTokenResponse = GetFederationTokenResponse'
  { _gftrrsCredentials ::
      !( Maybe
           Credentials
       ),
    _gftrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetFederationTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gftrrsCredentials' - The credentials to use for federation.
--
-- * 'gftrrsResponseStatus' - -- | The response status code.
getFederationTokenResponse ::
  -- | 'gftrrsResponseStatus'
  Int ->
  GetFederationTokenResponse
getFederationTokenResponse pResponseStatus_ =
  GetFederationTokenResponse'
    { _gftrrsCredentials =
        Nothing,
      _gftrrsResponseStatus = pResponseStatus_
    }

-- | The credentials to use for federation.
gftrrsCredentials :: Lens' GetFederationTokenResponse (Maybe Credentials)
gftrrsCredentials = lens _gftrrsCredentials (\s a -> s {_gftrrsCredentials = a})

-- | -- | The response status code.
gftrrsResponseStatus :: Lens' GetFederationTokenResponse Int
gftrrsResponseStatus = lens _gftrrsResponseStatus (\s a -> s {_gftrrsResponseStatus = a})

instance NFData GetFederationTokenResponse
