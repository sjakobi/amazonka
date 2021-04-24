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
-- Module      : Network.AWS.Shield.GetSubscriptionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the @SubscriptionState@ , either @Active@ or @Inactive@ .
module Network.AWS.Shield.GetSubscriptionState
  ( -- * Creating a Request
    getSubscriptionState,
    GetSubscriptionState,

    -- * Destructuring the Response
    getSubscriptionStateResponse,
    GetSubscriptionStateResponse,

    -- * Response Lenses
    gssrrsResponseStatus,
    gssrrsSubscriptionState,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Shield.Types

-- | /See:/ 'getSubscriptionState' smart constructor.
data GetSubscriptionState = GetSubscriptionState'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSubscriptionState' with the minimum fields required to make a request.
getSubscriptionState ::
  GetSubscriptionState
getSubscriptionState = GetSubscriptionState'

instance AWSRequest GetSubscriptionState where
  type
    Rs GetSubscriptionState =
      GetSubscriptionStateResponse
  request = postJSON shield
  response =
    receiveJSON
      ( \s h x ->
          GetSubscriptionStateResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "SubscriptionState")
      )

instance Hashable GetSubscriptionState

instance NFData GetSubscriptionState

instance ToHeaders GetSubscriptionState where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShield_20160616.GetSubscriptionState" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSubscriptionState where
  toJSON = const (Object mempty)

instance ToPath GetSubscriptionState where
  toPath = const "/"

instance ToQuery GetSubscriptionState where
  toQuery = const mempty

-- | /See:/ 'getSubscriptionStateResponse' smart constructor.
data GetSubscriptionStateResponse = GetSubscriptionStateResponse'
  { _gssrrsResponseStatus ::
      !Int,
    _gssrrsSubscriptionState ::
      !SubscriptionState
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSubscriptionStateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssrrsResponseStatus' - -- | The response status code.
--
-- * 'gssrrsSubscriptionState' - The status of the subscription.
getSubscriptionStateResponse ::
  -- | 'gssrrsResponseStatus'
  Int ->
  -- | 'gssrrsSubscriptionState'
  SubscriptionState ->
  GetSubscriptionStateResponse
getSubscriptionStateResponse
  pResponseStatus_
  pSubscriptionState_ =
    GetSubscriptionStateResponse'
      { _gssrrsResponseStatus =
          pResponseStatus_,
        _gssrrsSubscriptionState =
          pSubscriptionState_
      }

-- | -- | The response status code.
gssrrsResponseStatus :: Lens' GetSubscriptionStateResponse Int
gssrrsResponseStatus = lens _gssrrsResponseStatus (\s a -> s {_gssrrsResponseStatus = a})

-- | The status of the subscription.
gssrrsSubscriptionState :: Lens' GetSubscriptionStateResponse SubscriptionState
gssrrsSubscriptionState = lens _gssrrsSubscriptionState (\s a -> s {_gssrrsSubscriptionState = a})

instance NFData GetSubscriptionStateResponse
