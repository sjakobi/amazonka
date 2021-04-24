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
-- Module      : Network.AWS.Pinpoint.GetApplicationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the settings for an application.
module Network.AWS.Pinpoint.GetApplicationSettings
  ( -- * Creating a Request
    getApplicationSettings,
    GetApplicationSettings,

    -- * Request Lenses
    gasApplicationId,

    -- * Destructuring the Response
    getApplicationSettingsResponse,
    GetApplicationSettingsResponse,

    -- * Response Lenses
    gasrrsResponseStatus,
    gasrrsApplicationSettingsResource,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getApplicationSettings' smart constructor.
newtype GetApplicationSettings = GetApplicationSettings'
  { _gasApplicationId ::
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

-- | Creates a value of 'GetApplicationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getApplicationSettings ::
  -- | 'gasApplicationId'
  Text ->
  GetApplicationSettings
getApplicationSettings pApplicationId_ =
  GetApplicationSettings'
    { _gasApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gasApplicationId :: Lens' GetApplicationSettings Text
gasApplicationId = lens _gasApplicationId (\s a -> s {_gasApplicationId = a})

instance AWSRequest GetApplicationSettings where
  type
    Rs GetApplicationSettings =
      GetApplicationSettingsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetApplicationSettingsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetApplicationSettings

instance NFData GetApplicationSettings

instance ToHeaders GetApplicationSettings where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetApplicationSettings where
  toPath GetApplicationSettings' {..} =
    mconcat
      ["/v1/apps/", toBS _gasApplicationId, "/settings"]

instance ToQuery GetApplicationSettings where
  toQuery = const mempty

-- | /See:/ 'getApplicationSettingsResponse' smart constructor.
data GetApplicationSettingsResponse = GetApplicationSettingsResponse'
  { _gasrrsResponseStatus ::
      !Int,
    _gasrrsApplicationSettingsResource ::
      !ApplicationSettingsResource
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetApplicationSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasrrsResponseStatus' - -- | The response status code.
--
-- * 'gasrrsApplicationSettingsResource' - Undocumented member.
getApplicationSettingsResponse ::
  -- | 'gasrrsResponseStatus'
  Int ->
  -- | 'gasrrsApplicationSettingsResource'
  ApplicationSettingsResource ->
  GetApplicationSettingsResponse
getApplicationSettingsResponse
  pResponseStatus_
  pApplicationSettingsResource_ =
    GetApplicationSettingsResponse'
      { _gasrrsResponseStatus =
          pResponseStatus_,
        _gasrrsApplicationSettingsResource =
          pApplicationSettingsResource_
      }

-- | -- | The response status code.
gasrrsResponseStatus :: Lens' GetApplicationSettingsResponse Int
gasrrsResponseStatus = lens _gasrrsResponseStatus (\s a -> s {_gasrrsResponseStatus = a})

-- | Undocumented member.
gasrrsApplicationSettingsResource :: Lens' GetApplicationSettingsResponse ApplicationSettingsResource
gasrrsApplicationSettingsResource = lens _gasrrsApplicationSettingsResource (\s a -> s {_gasrrsApplicationSettingsResource = a})

instance NFData GetApplicationSettingsResponse
