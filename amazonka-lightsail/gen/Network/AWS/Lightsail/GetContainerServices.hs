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
-- Module      : Network.AWS.Lightsail.GetContainerServices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about one or more of your Amazon Lightsail container services.
module Network.AWS.Lightsail.GetContainerServices
  ( -- * Creating a Request
    getContainerServices,
    GetContainerServices,

    -- * Request Lenses
    gcsServiceName,

    -- * Destructuring the Response
    getContainerServicesResponse,
    GetContainerServicesResponse,

    -- * Response Lenses
    gcsrrsContainerServices,
    gcsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getContainerServices' smart constructor.
newtype GetContainerServices = GetContainerServices'
  { _gcsServiceName ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetContainerServices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsServiceName' - The name of the container service for which to return information. When omitted, the response includes all of your container services in the AWS Region where the request is made.
getContainerServices ::
  GetContainerServices
getContainerServices =
  GetContainerServices' {_gcsServiceName = Nothing}

-- | The name of the container service for which to return information. When omitted, the response includes all of your container services in the AWS Region where the request is made.
gcsServiceName :: Lens' GetContainerServices (Maybe Text)
gcsServiceName = lens _gcsServiceName (\s a -> s {_gcsServiceName = a})

instance AWSRequest GetContainerServices where
  type
    Rs GetContainerServices =
      GetContainerServicesResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetContainerServicesResponse'
            <$> (x .?> "containerServices" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetContainerServices

instance NFData GetContainerServices

instance ToHeaders GetContainerServices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetContainerServices" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetContainerServices where
  toJSON GetContainerServices' {..} =
    object
      (catMaybes [("serviceName" .=) <$> _gcsServiceName])

instance ToPath GetContainerServices where
  toPath = const "/"

instance ToQuery GetContainerServices where
  toQuery = const mempty

-- | /See:/ 'getContainerServicesResponse' smart constructor.
data GetContainerServicesResponse = GetContainerServicesResponse'
  { _gcsrrsContainerServices ::
      !( Maybe
           [ContainerService]
       ),
    _gcsrrsResponseStatus ::
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

-- | Creates a value of 'GetContainerServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsrrsContainerServices' - An array of objects that describe one or more container services.
--
-- * 'gcsrrsResponseStatus' - -- | The response status code.
getContainerServicesResponse ::
  -- | 'gcsrrsResponseStatus'
  Int ->
  GetContainerServicesResponse
getContainerServicesResponse pResponseStatus_ =
  GetContainerServicesResponse'
    { _gcsrrsContainerServices =
        Nothing,
      _gcsrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe one or more container services.
gcsrrsContainerServices :: Lens' GetContainerServicesResponse [ContainerService]
gcsrrsContainerServices = lens _gcsrrsContainerServices (\s a -> s {_gcsrrsContainerServices = a}) . _Default . _Coerce

-- | -- | The response status code.
gcsrrsResponseStatus :: Lens' GetContainerServicesResponse Int
gcsrrsResponseStatus = lens _gcsrrsResponseStatus (\s a -> s {_gcsrrsResponseStatus = a})

instance NFData GetContainerServicesResponse
