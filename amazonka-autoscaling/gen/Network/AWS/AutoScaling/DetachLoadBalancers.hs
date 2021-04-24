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
-- Module      : Network.AWS.AutoScaling.DetachLoadBalancers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches one or more Classic Load Balancers from the specified Auto Scaling group.
--
--
-- This operation detaches only Classic Load Balancers. If you have Application Load Balancers, Network Load Balancers, or Gateway Load Balancers, use the 'DetachLoadBalancerTargetGroups' API instead.
--
-- When you detach a load balancer, it enters the @Removing@ state while deregistering the instances in the group. When all instances are deregistered, then you can no longer describe the load balancer using the 'DescribeLoadBalancers' API call. The instances remain running.
module Network.AWS.AutoScaling.DetachLoadBalancers
  ( -- * Creating a Request
    detachLoadBalancers,
    DetachLoadBalancers,

    -- * Request Lenses
    dlbAutoScalingGroupName,
    dlbLoadBalancerNames,

    -- * Destructuring the Response
    detachLoadBalancersResponse,
    DetachLoadBalancersResponse,

    -- * Response Lenses
    detrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detachLoadBalancers' smart constructor.
data DetachLoadBalancers = DetachLoadBalancers'
  { _dlbAutoScalingGroupName ::
      !Text,
    _dlbLoadBalancerNames ::
      ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetachLoadBalancers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlbAutoScalingGroupName' - The name of the Auto Scaling group.
--
-- * 'dlbLoadBalancerNames' - The names of the load balancers. You can specify up to 10 load balancers.
detachLoadBalancers ::
  -- | 'dlbAutoScalingGroupName'
  Text ->
  DetachLoadBalancers
detachLoadBalancers pAutoScalingGroupName_ =
  DetachLoadBalancers'
    { _dlbAutoScalingGroupName =
        pAutoScalingGroupName_,
      _dlbLoadBalancerNames = mempty
    }

-- | The name of the Auto Scaling group.
dlbAutoScalingGroupName :: Lens' DetachLoadBalancers Text
dlbAutoScalingGroupName = lens _dlbAutoScalingGroupName (\s a -> s {_dlbAutoScalingGroupName = a})

-- | The names of the load balancers. You can specify up to 10 load balancers.
dlbLoadBalancerNames :: Lens' DetachLoadBalancers [Text]
dlbLoadBalancerNames = lens _dlbLoadBalancerNames (\s a -> s {_dlbLoadBalancerNames = a}) . _Coerce

instance AWSRequest DetachLoadBalancers where
  type
    Rs DetachLoadBalancers =
      DetachLoadBalancersResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DetachLoadBalancersResult"
      ( \s h x ->
          DetachLoadBalancersResponse' <$> (pure (fromEnum s))
      )

instance Hashable DetachLoadBalancers

instance NFData DetachLoadBalancers

instance ToHeaders DetachLoadBalancers where
  toHeaders = const mempty

instance ToPath DetachLoadBalancers where
  toPath = const "/"

instance ToQuery DetachLoadBalancers where
  toQuery DetachLoadBalancers' {..} =
    mconcat
      [ "Action" =: ("DetachLoadBalancers" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "AutoScalingGroupName" =: _dlbAutoScalingGroupName,
        "LoadBalancerNames"
          =: toQueryList "member" _dlbLoadBalancerNames
      ]

-- | /See:/ 'detachLoadBalancersResponse' smart constructor.
newtype DetachLoadBalancersResponse = DetachLoadBalancersResponse'
  { _detrsResponseStatus ::
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

-- | Creates a value of 'DetachLoadBalancersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detrsResponseStatus' - -- | The response status code.
detachLoadBalancersResponse ::
  -- | 'detrsResponseStatus'
  Int ->
  DetachLoadBalancersResponse
detachLoadBalancersResponse pResponseStatus_ =
  DetachLoadBalancersResponse'
    { _detrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
detrsResponseStatus :: Lens' DetachLoadBalancersResponse Int
detrsResponseStatus = lens _detrsResponseStatus (\s a -> s {_detrsResponseStatus = a})

instance NFData DetachLoadBalancersResponse
