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
-- Module      : Network.AWS.Lightsail.DetachInstancesFromLoadBalancer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches the specified instances from a Lightsail load balancer.
--
--
-- This operation waits until the instances are no longer needed before they are detached from the load balancer.
--
-- The @detach instances from load balancer@ operation supports tag-based access control via resource tags applied to the resource identified by @load balancer name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.DetachInstancesFromLoadBalancer
  ( -- * Creating a Request
    detachInstancesFromLoadBalancer,
    DetachInstancesFromLoadBalancer,

    -- * Request Lenses
    diflbLoadBalancerName,
    diflbInstanceNames,

    -- * Destructuring the Response
    detachInstancesFromLoadBalancerResponse,
    DetachInstancesFromLoadBalancerResponse,

    -- * Response Lenses
    diflbrrsOperations,
    diflbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detachInstancesFromLoadBalancer' smart constructor.
data DetachInstancesFromLoadBalancer = DetachInstancesFromLoadBalancer'
  { _diflbLoadBalancerName ::
      !Text,
    _diflbInstanceNames ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetachInstancesFromLoadBalancer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diflbLoadBalancerName' - The name of the Lightsail load balancer.
--
-- * 'diflbInstanceNames' - An array of strings containing the names of the instances you want to detach from the load balancer.
detachInstancesFromLoadBalancer ::
  -- | 'diflbLoadBalancerName'
  Text ->
  DetachInstancesFromLoadBalancer
detachInstancesFromLoadBalancer pLoadBalancerName_ =
  DetachInstancesFromLoadBalancer'
    { _diflbLoadBalancerName =
        pLoadBalancerName_,
      _diflbInstanceNames = mempty
    }

-- | The name of the Lightsail load balancer.
diflbLoadBalancerName :: Lens' DetachInstancesFromLoadBalancer Text
diflbLoadBalancerName = lens _diflbLoadBalancerName (\s a -> s {_diflbLoadBalancerName = a})

-- | An array of strings containing the names of the instances you want to detach from the load balancer.
diflbInstanceNames :: Lens' DetachInstancesFromLoadBalancer [Text]
diflbInstanceNames = lens _diflbInstanceNames (\s a -> s {_diflbInstanceNames = a}) . _Coerce

instance AWSRequest DetachInstancesFromLoadBalancer where
  type
    Rs DetachInstancesFromLoadBalancer =
      DetachInstancesFromLoadBalancerResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DetachInstancesFromLoadBalancerResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DetachInstancesFromLoadBalancer

instance NFData DetachInstancesFromLoadBalancer

instance ToHeaders DetachInstancesFromLoadBalancer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.DetachInstancesFromLoadBalancer" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DetachInstancesFromLoadBalancer where
  toJSON DetachInstancesFromLoadBalancer' {..} =
    object
      ( catMaybes
          [ Just ("loadBalancerName" .= _diflbLoadBalancerName),
            Just ("instanceNames" .= _diflbInstanceNames)
          ]
      )

instance ToPath DetachInstancesFromLoadBalancer where
  toPath = const "/"

instance ToQuery DetachInstancesFromLoadBalancer where
  toQuery = const mempty

-- | /See:/ 'detachInstancesFromLoadBalancerResponse' smart constructor.
data DetachInstancesFromLoadBalancerResponse = DetachInstancesFromLoadBalancerResponse'
  { _diflbrrsOperations ::
      !( Maybe
           [Operation]
       ),
    _diflbrrsResponseStatus ::
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

-- | Creates a value of 'DetachInstancesFromLoadBalancerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diflbrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'diflbrrsResponseStatus' - -- | The response status code.
detachInstancesFromLoadBalancerResponse ::
  -- | 'diflbrrsResponseStatus'
  Int ->
  DetachInstancesFromLoadBalancerResponse
detachInstancesFromLoadBalancerResponse
  pResponseStatus_ =
    DetachInstancesFromLoadBalancerResponse'
      { _diflbrrsOperations =
          Nothing,
        _diflbrrsResponseStatus =
          pResponseStatus_
      }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
diflbrrsOperations :: Lens' DetachInstancesFromLoadBalancerResponse [Operation]
diflbrrsOperations = lens _diflbrrsOperations (\s a -> s {_diflbrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
diflbrrsResponseStatus :: Lens' DetachInstancesFromLoadBalancerResponse Int
diflbrrsResponseStatus = lens _diflbrrsResponseStatus (\s a -> s {_diflbrrsResponseStatus = a})

instance
  NFData
    DetachInstancesFromLoadBalancerResponse
