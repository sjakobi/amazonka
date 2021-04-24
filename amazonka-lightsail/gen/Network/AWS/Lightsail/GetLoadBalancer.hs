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
-- Module      : Network.AWS.Lightsail.GetLoadBalancer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified Lightsail load balancer.
module Network.AWS.Lightsail.GetLoadBalancer
  ( -- * Creating a Request
    getLoadBalancer,
    GetLoadBalancer,

    -- * Request Lenses
    glbLoadBalancerName,

    -- * Destructuring the Response
    getLoadBalancerResponse,
    GetLoadBalancerResponse,

    -- * Response Lenses
    glbrrsLoadBalancer,
    glbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLoadBalancer' smart constructor.
newtype GetLoadBalancer = GetLoadBalancer'
  { _glbLoadBalancerName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetLoadBalancer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glbLoadBalancerName' - The name of the load balancer.
getLoadBalancer ::
  -- | 'glbLoadBalancerName'
  Text ->
  GetLoadBalancer
getLoadBalancer pLoadBalancerName_ =
  GetLoadBalancer'
    { _glbLoadBalancerName =
        pLoadBalancerName_
    }

-- | The name of the load balancer.
glbLoadBalancerName :: Lens' GetLoadBalancer Text
glbLoadBalancerName = lens _glbLoadBalancerName (\s a -> s {_glbLoadBalancerName = a})

instance AWSRequest GetLoadBalancer where
  type Rs GetLoadBalancer = GetLoadBalancerResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetLoadBalancerResponse'
            <$> (x .?> "loadBalancer") <*> (pure (fromEnum s))
      )

instance Hashable GetLoadBalancer

instance NFData GetLoadBalancer

instance ToHeaders GetLoadBalancer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetLoadBalancer" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetLoadBalancer where
  toJSON GetLoadBalancer' {..} =
    object
      ( catMaybes
          [Just ("loadBalancerName" .= _glbLoadBalancerName)]
      )

instance ToPath GetLoadBalancer where
  toPath = const "/"

instance ToQuery GetLoadBalancer where
  toQuery = const mempty

-- | /See:/ 'getLoadBalancerResponse' smart constructor.
data GetLoadBalancerResponse = GetLoadBalancerResponse'
  { _glbrrsLoadBalancer ::
      !(Maybe LoadBalancer),
    _glbrrsResponseStatus ::
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

-- | Creates a value of 'GetLoadBalancerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glbrrsLoadBalancer' - An object containing information about your load balancer.
--
-- * 'glbrrsResponseStatus' - -- | The response status code.
getLoadBalancerResponse ::
  -- | 'glbrrsResponseStatus'
  Int ->
  GetLoadBalancerResponse
getLoadBalancerResponse pResponseStatus_ =
  GetLoadBalancerResponse'
    { _glbrrsLoadBalancer =
        Nothing,
      _glbrrsResponseStatus = pResponseStatus_
    }

-- | An object containing information about your load balancer.
glbrrsLoadBalancer :: Lens' GetLoadBalancerResponse (Maybe LoadBalancer)
glbrrsLoadBalancer = lens _glbrrsLoadBalancer (\s a -> s {_glbrrsLoadBalancer = a})

-- | -- | The response status code.
glbrrsResponseStatus :: Lens' GetLoadBalancerResponse Int
glbrrsResponseStatus = lens _glbrrsResponseStatus (\s a -> s {_glbrrsResponseStatus = a})

instance NFData GetLoadBalancerResponse
