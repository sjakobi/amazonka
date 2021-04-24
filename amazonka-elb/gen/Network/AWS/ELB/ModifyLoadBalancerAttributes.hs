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
-- Module      : Network.AWS.ELB.ModifyLoadBalancerAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the attributes of the specified load balancer.
--
--
-- You can modify the load balancer attributes, such as @AccessLogs@ , @ConnectionDraining@ , and @CrossZoneLoadBalancing@ by either enabling or disabling them. Or, you can modify the load balancer attribute @ConnectionSettings@ by specifying an idle connection timeout value for your load balancer.
--
-- For more information, see the following in the /Classic Load Balancers Guide/ :
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html Cross-Zone Load Balancing>
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html Connection Draining>
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html Access Logs>
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html Idle Connection Timeout>
module Network.AWS.ELB.ModifyLoadBalancerAttributes
  ( -- * Creating a Request
    modifyLoadBalancerAttributes,
    ModifyLoadBalancerAttributes,

    -- * Request Lenses
    mlbaLoadBalancerName,
    mlbaLoadBalancerAttributes,

    -- * Destructuring the Response
    modifyLoadBalancerAttributesResponse,
    ModifyLoadBalancerAttributesResponse,

    -- * Response Lenses
    mlbarrsLoadBalancerAttributes,
    mlbarrsLoadBalancerName,
    mlbarrsResponseStatus,
  )
where

import Network.AWS.ELB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for ModifyLoadBalancerAttributes.
--
--
--
-- /See:/ 'modifyLoadBalancerAttributes' smart constructor.
data ModifyLoadBalancerAttributes = ModifyLoadBalancerAttributes'
  { _mlbaLoadBalancerName ::
      !Text,
    _mlbaLoadBalancerAttributes ::
      !LoadBalancerAttributes
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyLoadBalancerAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbaLoadBalancerName' - The name of the load balancer.
--
-- * 'mlbaLoadBalancerAttributes' - The attributes for the load balancer.
modifyLoadBalancerAttributes ::
  -- | 'mlbaLoadBalancerName'
  Text ->
  -- | 'mlbaLoadBalancerAttributes'
  LoadBalancerAttributes ->
  ModifyLoadBalancerAttributes
modifyLoadBalancerAttributes
  pLoadBalancerName_
  pLoadBalancerAttributes_ =
    ModifyLoadBalancerAttributes'
      { _mlbaLoadBalancerName =
          pLoadBalancerName_,
        _mlbaLoadBalancerAttributes =
          pLoadBalancerAttributes_
      }

-- | The name of the load balancer.
mlbaLoadBalancerName :: Lens' ModifyLoadBalancerAttributes Text
mlbaLoadBalancerName = lens _mlbaLoadBalancerName (\s a -> s {_mlbaLoadBalancerName = a})

-- | The attributes for the load balancer.
mlbaLoadBalancerAttributes :: Lens' ModifyLoadBalancerAttributes LoadBalancerAttributes
mlbaLoadBalancerAttributes = lens _mlbaLoadBalancerAttributes (\s a -> s {_mlbaLoadBalancerAttributes = a})

instance AWSRequest ModifyLoadBalancerAttributes where
  type
    Rs ModifyLoadBalancerAttributes =
      ModifyLoadBalancerAttributesResponse
  request = postQuery elb
  response =
    receiveXMLWrapper
      "ModifyLoadBalancerAttributesResult"
      ( \s h x ->
          ModifyLoadBalancerAttributesResponse'
            <$> (x .@? "LoadBalancerAttributes")
            <*> (x .@? "LoadBalancerName")
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyLoadBalancerAttributes

instance NFData ModifyLoadBalancerAttributes

instance ToHeaders ModifyLoadBalancerAttributes where
  toHeaders = const mempty

instance ToPath ModifyLoadBalancerAttributes where
  toPath = const "/"

instance ToQuery ModifyLoadBalancerAttributes where
  toQuery ModifyLoadBalancerAttributes' {..} =
    mconcat
      [ "Action"
          =: ("ModifyLoadBalancerAttributes" :: ByteString),
        "Version" =: ("2012-06-01" :: ByteString),
        "LoadBalancerName" =: _mlbaLoadBalancerName,
        "LoadBalancerAttributes"
          =: _mlbaLoadBalancerAttributes
      ]

-- | Contains the output of ModifyLoadBalancerAttributes.
--
--
--
-- /See:/ 'modifyLoadBalancerAttributesResponse' smart constructor.
data ModifyLoadBalancerAttributesResponse = ModifyLoadBalancerAttributesResponse'
  { _mlbarrsLoadBalancerAttributes ::
      !( Maybe
           LoadBalancerAttributes
       ),
    _mlbarrsLoadBalancerName ::
      !( Maybe
           Text
       ),
    _mlbarrsResponseStatus ::
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

-- | Creates a value of 'ModifyLoadBalancerAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbarrsLoadBalancerAttributes' - Information about the load balancer attributes.
--
-- * 'mlbarrsLoadBalancerName' - The name of the load balancer.
--
-- * 'mlbarrsResponseStatus' - -- | The response status code.
modifyLoadBalancerAttributesResponse ::
  -- | 'mlbarrsResponseStatus'
  Int ->
  ModifyLoadBalancerAttributesResponse
modifyLoadBalancerAttributesResponse pResponseStatus_ =
  ModifyLoadBalancerAttributesResponse'
    { _mlbarrsLoadBalancerAttributes =
        Nothing,
      _mlbarrsLoadBalancerName = Nothing,
      _mlbarrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the load balancer attributes.
mlbarrsLoadBalancerAttributes :: Lens' ModifyLoadBalancerAttributesResponse (Maybe LoadBalancerAttributes)
mlbarrsLoadBalancerAttributes = lens _mlbarrsLoadBalancerAttributes (\s a -> s {_mlbarrsLoadBalancerAttributes = a})

-- | The name of the load balancer.
mlbarrsLoadBalancerName :: Lens' ModifyLoadBalancerAttributesResponse (Maybe Text)
mlbarrsLoadBalancerName = lens _mlbarrsLoadBalancerName (\s a -> s {_mlbarrsLoadBalancerName = a})

-- | -- | The response status code.
mlbarrsResponseStatus :: Lens' ModifyLoadBalancerAttributesResponse Int
mlbarrsResponseStatus = lens _mlbarrsResponseStatus (\s a -> s {_mlbarrsResponseStatus = a})

instance NFData ModifyLoadBalancerAttributesResponse
