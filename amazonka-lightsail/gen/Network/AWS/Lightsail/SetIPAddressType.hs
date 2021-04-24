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
-- Module      : Network.AWS.Lightsail.SetIPAddressType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IP address type for an Amazon Lightsail resource.
--
--
-- Use this action to enable dual-stack for a resource, which enables IPv4 and IPv6 for the specified resource. Alternately, you can use this action to disable dual-stack, and enable IPv4 only.
module Network.AWS.Lightsail.SetIPAddressType
  ( -- * Creating a Request
    setIPAddressType,
    SetIPAddressType,

    -- * Request Lenses
    siatResourceType,
    siatResourceName,
    siatIpAddressType,

    -- * Destructuring the Response
    setIPAddressTypeResponse,
    SetIPAddressTypeResponse,

    -- * Response Lenses
    siatrrsOperations,
    siatrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setIPAddressType' smart constructor.
data SetIPAddressType = SetIPAddressType'
  { _siatResourceType ::
      !ResourceType,
    _siatResourceName :: !Text,
    _siatIpAddressType :: !IPAddressType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetIPAddressType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siatResourceType' - The resource type. The possible values are @Distribution@ , @Instance@ , and @LoadBalancer@ .
--
-- * 'siatResourceName' - The name of the resource for which to set the IP address type.
--
-- * 'siatIpAddressType' - The IP address type to set for the specified resource. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6.
setIPAddressType ::
  -- | 'siatResourceType'
  ResourceType ->
  -- | 'siatResourceName'
  Text ->
  -- | 'siatIpAddressType'
  IPAddressType ->
  SetIPAddressType
setIPAddressType
  pResourceType_
  pResourceName_
  pIpAddressType_ =
    SetIPAddressType'
      { _siatResourceType =
          pResourceType_,
        _siatResourceName = pResourceName_,
        _siatIpAddressType = pIpAddressType_
      }

-- | The resource type. The possible values are @Distribution@ , @Instance@ , and @LoadBalancer@ .
siatResourceType :: Lens' SetIPAddressType ResourceType
siatResourceType = lens _siatResourceType (\s a -> s {_siatResourceType = a})

-- | The name of the resource for which to set the IP address type.
siatResourceName :: Lens' SetIPAddressType Text
siatResourceName = lens _siatResourceName (\s a -> s {_siatResourceName = a})

-- | The IP address type to set for the specified resource. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6.
siatIpAddressType :: Lens' SetIPAddressType IPAddressType
siatIpAddressType = lens _siatIpAddressType (\s a -> s {_siatIpAddressType = a})

instance AWSRequest SetIPAddressType where
  type Rs SetIPAddressType = SetIPAddressTypeResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          SetIPAddressTypeResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SetIPAddressType

instance NFData SetIPAddressType

instance ToHeaders SetIPAddressType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.SetIpAddressType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetIPAddressType where
  toJSON SetIPAddressType' {..} =
    object
      ( catMaybes
          [ Just ("resourceType" .= _siatResourceType),
            Just ("resourceName" .= _siatResourceName),
            Just ("ipAddressType" .= _siatIpAddressType)
          ]
      )

instance ToPath SetIPAddressType where
  toPath = const "/"

instance ToQuery SetIPAddressType where
  toQuery = const mempty

-- | /See:/ 'setIPAddressTypeResponse' smart constructor.
data SetIPAddressTypeResponse = SetIPAddressTypeResponse'
  { _siatrrsOperations ::
      !(Maybe [Operation]),
    _siatrrsResponseStatus ::
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

-- | Creates a value of 'SetIPAddressTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siatrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'siatrrsResponseStatus' - -- | The response status code.
setIPAddressTypeResponse ::
  -- | 'siatrrsResponseStatus'
  Int ->
  SetIPAddressTypeResponse
setIPAddressTypeResponse pResponseStatus_ =
  SetIPAddressTypeResponse'
    { _siatrrsOperations =
        Nothing,
      _siatrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
siatrrsOperations :: Lens' SetIPAddressTypeResponse [Operation]
siatrrsOperations = lens _siatrrsOperations (\s a -> s {_siatrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
siatrrsResponseStatus :: Lens' SetIPAddressTypeResponse Int
siatrrsResponseStatus = lens _siatrrsResponseStatus (\s a -> s {_siatrrsResponseStatus = a})

instance NFData SetIPAddressTypeResponse
