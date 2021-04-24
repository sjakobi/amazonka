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
-- Module      : Network.AWS.Pinpoint.GetApps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about all the applications that are associated with your Amazon Pinpoint account.
module Network.AWS.Pinpoint.GetApps
  ( -- * Creating a Request
    getApps,
    GetApps,

    -- * Request Lenses
    gaPageSize,
    gaToken,

    -- * Destructuring the Response
    getAppsResponse,
    GetAppsResponse,

    -- * Response Lenses
    garrsResponseStatus,
    garrsApplicationsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getApps' smart constructor.
data GetApps = GetApps'
  { _gaPageSize :: !(Maybe Text),
    _gaToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetApps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gaToken' - The NextToken string that specifies which page of results to return in a paginated response.
getApps ::
  GetApps
getApps =
  GetApps' {_gaPageSize = Nothing, _gaToken = Nothing}

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gaPageSize :: Lens' GetApps (Maybe Text)
gaPageSize = lens _gaPageSize (\s a -> s {_gaPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
gaToken :: Lens' GetApps (Maybe Text)
gaToken = lens _gaToken (\s a -> s {_gaToken = a})

instance AWSRequest GetApps where
  type Rs GetApps = GetAppsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetAppsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetApps

instance NFData GetApps

instance ToHeaders GetApps where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetApps where
  toPath = const "/v1/apps"

instance ToQuery GetApps where
  toQuery GetApps' {..} =
    mconcat
      ["page-size" =: _gaPageSize, "token" =: _gaToken]

-- | /See:/ 'getAppsResponse' smart constructor.
data GetAppsResponse = GetAppsResponse'
  { _garrsResponseStatus ::
      !Int,
    _garrsApplicationsResponse ::
      !ApplicationsResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAppsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garrsResponseStatus' - -- | The response status code.
--
-- * 'garrsApplicationsResponse' - Undocumented member.
getAppsResponse ::
  -- | 'garrsResponseStatus'
  Int ->
  -- | 'garrsApplicationsResponse'
  ApplicationsResponse ->
  GetAppsResponse
getAppsResponse
  pResponseStatus_
  pApplicationsResponse_ =
    GetAppsResponse'
      { _garrsResponseStatus =
          pResponseStatus_,
        _garrsApplicationsResponse = pApplicationsResponse_
      }

-- | -- | The response status code.
garrsResponseStatus :: Lens' GetAppsResponse Int
garrsResponseStatus = lens _garrsResponseStatus (\s a -> s {_garrsResponseStatus = a})

-- | Undocumented member.
garrsApplicationsResponse :: Lens' GetAppsResponse ApplicationsResponse
garrsApplicationsResponse = lens _garrsApplicationsResponse (\s a -> s {_garrsApplicationsResponse = a})

instance NFData GetAppsResponse
