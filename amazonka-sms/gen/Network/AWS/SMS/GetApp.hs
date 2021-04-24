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
-- Module      : Network.AWS.SMS.GetApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve information about the specified application.
module Network.AWS.SMS.GetApp
  ( -- * Creating a Request
    getApp,
    GetApp,

    -- * Request Lenses
    gaAppId,

    -- * Destructuring the Response
    getAppResponse,
    GetAppResponse,

    -- * Response Lenses
    garrsAppSummary,
    garrsServerGroups,
    garrsTags,
    garrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'getApp' smart constructor.
newtype GetApp = GetApp' {_gaAppId :: Maybe Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaAppId' - The ID of the application.
getApp ::
  GetApp
getApp = GetApp' {_gaAppId = Nothing}

-- | The ID of the application.
gaAppId :: Lens' GetApp (Maybe Text)
gaAppId = lens _gaAppId (\s a -> s {_gaAppId = a})

instance AWSRequest GetApp where
  type Rs GetApp = GetAppResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          GetAppResponse'
            <$> (x .?> "appSummary")
            <*> (x .?> "serverGroups" .!@ mempty)
            <*> (x .?> "tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetApp

instance NFData GetApp

instance ToHeaders GetApp where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.GetApp" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetApp where
  toJSON GetApp' {..} =
    object (catMaybes [("appId" .=) <$> _gaAppId])

instance ToPath GetApp where
  toPath = const "/"

instance ToQuery GetApp where
  toQuery = const mempty

-- | /See:/ 'getAppResponse' smart constructor.
data GetAppResponse = GetAppResponse'
  { _garrsAppSummary ::
      !(Maybe AppSummary),
    _garrsServerGroups ::
      !(Maybe [ServerGroup]),
    _garrsTags :: !(Maybe [Tag]),
    _garrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAppResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garrsAppSummary' - Information about the application.
--
-- * 'garrsServerGroups' - The server groups that belong to the application.
--
-- * 'garrsTags' - The tags associated with the application.
--
-- * 'garrsResponseStatus' - -- | The response status code.
getAppResponse ::
  -- | 'garrsResponseStatus'
  Int ->
  GetAppResponse
getAppResponse pResponseStatus_ =
  GetAppResponse'
    { _garrsAppSummary = Nothing,
      _garrsServerGroups = Nothing,
      _garrsTags = Nothing,
      _garrsResponseStatus = pResponseStatus_
    }

-- | Information about the application.
garrsAppSummary :: Lens' GetAppResponse (Maybe AppSummary)
garrsAppSummary = lens _garrsAppSummary (\s a -> s {_garrsAppSummary = a})

-- | The server groups that belong to the application.
garrsServerGroups :: Lens' GetAppResponse [ServerGroup]
garrsServerGroups = lens _garrsServerGroups (\s a -> s {_garrsServerGroups = a}) . _Default . _Coerce

-- | The tags associated with the application.
garrsTags :: Lens' GetAppResponse [Tag]
garrsTags = lens _garrsTags (\s a -> s {_garrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
garrsResponseStatus :: Lens' GetAppResponse Int
garrsResponseStatus = lens _garrsResponseStatus (\s a -> s {_garrsResponseStatus = a})

instance NFData GetAppResponse
