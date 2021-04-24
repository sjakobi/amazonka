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
-- Module      : Network.AWS.ELB.DeleteLoadBalancerListeners
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified listeners from the specified load balancer.
module Network.AWS.ELB.DeleteLoadBalancerListeners
  ( -- * Creating a Request
    deleteLoadBalancerListeners,
    DeleteLoadBalancerListeners,

    -- * Request Lenses
    dlblLoadBalancerName,
    dlblLoadBalancerPorts,

    -- * Destructuring the Response
    deleteLoadBalancerListenersResponse,
    DeleteLoadBalancerListenersResponse,

    -- * Response Lenses
    dlblrrsResponseStatus,
  )
where

import Network.AWS.ELB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DeleteLoadBalancerListeners.
--
--
--
-- /See:/ 'deleteLoadBalancerListeners' smart constructor.
data DeleteLoadBalancerListeners = DeleteLoadBalancerListeners'
  { _dlblLoadBalancerName ::
      !Text,
    _dlblLoadBalancerPorts ::
      ![Int]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteLoadBalancerListeners' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlblLoadBalancerName' - The name of the load balancer.
--
-- * 'dlblLoadBalancerPorts' - The client port numbers of the listeners.
deleteLoadBalancerListeners ::
  -- | 'dlblLoadBalancerName'
  Text ->
  DeleteLoadBalancerListeners
deleteLoadBalancerListeners pLoadBalancerName_ =
  DeleteLoadBalancerListeners'
    { _dlblLoadBalancerName =
        pLoadBalancerName_,
      _dlblLoadBalancerPorts = mempty
    }

-- | The name of the load balancer.
dlblLoadBalancerName :: Lens' DeleteLoadBalancerListeners Text
dlblLoadBalancerName = lens _dlblLoadBalancerName (\s a -> s {_dlblLoadBalancerName = a})

-- | The client port numbers of the listeners.
dlblLoadBalancerPorts :: Lens' DeleteLoadBalancerListeners [Int]
dlblLoadBalancerPorts = lens _dlblLoadBalancerPorts (\s a -> s {_dlblLoadBalancerPorts = a}) . _Coerce

instance AWSRequest DeleteLoadBalancerListeners where
  type
    Rs DeleteLoadBalancerListeners =
      DeleteLoadBalancerListenersResponse
  request = postQuery elb
  response =
    receiveXMLWrapper
      "DeleteLoadBalancerListenersResult"
      ( \s h x ->
          DeleteLoadBalancerListenersResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteLoadBalancerListeners

instance NFData DeleteLoadBalancerListeners

instance ToHeaders DeleteLoadBalancerListeners where
  toHeaders = const mempty

instance ToPath DeleteLoadBalancerListeners where
  toPath = const "/"

instance ToQuery DeleteLoadBalancerListeners where
  toQuery DeleteLoadBalancerListeners' {..} =
    mconcat
      [ "Action"
          =: ("DeleteLoadBalancerListeners" :: ByteString),
        "Version" =: ("2012-06-01" :: ByteString),
        "LoadBalancerName" =: _dlblLoadBalancerName,
        "LoadBalancerPorts"
          =: toQueryList "member" _dlblLoadBalancerPorts
      ]

-- | Contains the output of DeleteLoadBalancerListeners.
--
--
--
-- /See:/ 'deleteLoadBalancerListenersResponse' smart constructor.
newtype DeleteLoadBalancerListenersResponse = DeleteLoadBalancerListenersResponse'
  { _dlblrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteLoadBalancerListenersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlblrrsResponseStatus' - -- | The response status code.
deleteLoadBalancerListenersResponse ::
  -- | 'dlblrrsResponseStatus'
  Int ->
  DeleteLoadBalancerListenersResponse
deleteLoadBalancerListenersResponse pResponseStatus_ =
  DeleteLoadBalancerListenersResponse'
    { _dlblrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dlblrrsResponseStatus :: Lens' DeleteLoadBalancerListenersResponse Int
dlblrrsResponseStatus = lens _dlblrrsResponseStatus (\s a -> s {_dlblrrsResponseStatus = a})

instance NFData DeleteLoadBalancerListenersResponse
