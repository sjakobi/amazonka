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
-- Module      : Network.AWS.Route53AutoNaming.GetService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the settings for a specified service.
module Network.AWS.Route53AutoNaming.GetService
  ( -- * Creating a Request
    getService,
    GetService,

    -- * Request Lenses
    gsId,

    -- * Destructuring the Response
    getServiceResponse,
    GetServiceResponse,

    -- * Response Lenses
    gsrrsService,
    gsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53AutoNaming.Types

-- | /See:/ 'getService' smart constructor.
newtype GetService = GetService' {_gsId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsId' - The ID of the service that you want to get settings for.
getService ::
  -- | 'gsId'
  Text ->
  GetService
getService pId_ = GetService' {_gsId = pId_}

-- | The ID of the service that you want to get settings for.
gsId :: Lens' GetService Text
gsId = lens _gsId (\s a -> s {_gsId = a})

instance AWSRequest GetService where
  type Rs GetService = GetServiceResponse
  request = postJSON route53AutoNaming
  response =
    receiveJSON
      ( \s h x ->
          GetServiceResponse'
            <$> (x .?> "Service") <*> (pure (fromEnum s))
      )

instance Hashable GetService

instance NFData GetService

instance ToHeaders GetService where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53AutoNaming_v20170314.GetService" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetService where
  toJSON GetService' {..} =
    object (catMaybes [Just ("Id" .= _gsId)])

instance ToPath GetService where
  toPath = const "/"

instance ToQuery GetService where
  toQuery = const mempty

-- | /See:/ 'getServiceResponse' smart constructor.
data GetServiceResponse = GetServiceResponse'
  { _gsrrsService ::
      !(Maybe ServiceInfo),
    _gsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrrsService' - A complex type that contains information about the service.
--
-- * 'gsrrsResponseStatus' - -- | The response status code.
getServiceResponse ::
  -- | 'gsrrsResponseStatus'
  Int ->
  GetServiceResponse
getServiceResponse pResponseStatus_ =
  GetServiceResponse'
    { _gsrrsService = Nothing,
      _gsrrsResponseStatus = pResponseStatus_
    }

-- | A complex type that contains information about the service.
gsrrsService :: Lens' GetServiceResponse (Maybe ServiceInfo)
gsrrsService = lens _gsrrsService (\s a -> s {_gsrrsService = a})

-- | -- | The response status code.
gsrrsResponseStatus :: Lens' GetServiceResponse Int
gsrrsResponseStatus = lens _gsrrsResponseStatus (\s a -> s {_gsrrsResponseStatus = a})

instance NFData GetServiceResponse
