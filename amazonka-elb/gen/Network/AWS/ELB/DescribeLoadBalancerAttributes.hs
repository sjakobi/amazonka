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
-- Module      : Network.AWS.ELB.DescribeLoadBalancerAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the attributes for the specified load balancer.
module Network.AWS.ELB.DescribeLoadBalancerAttributes
  ( -- * Creating a Request
    describeLoadBalancerAttributes,
    DescribeLoadBalancerAttributes,

    -- * Request Lenses
    dlbaLoadBalancerName,

    -- * Destructuring the Response
    describeLoadBalancerAttributesResponse,
    DescribeLoadBalancerAttributesResponse,

    -- * Response Lenses
    dlbarrsLoadBalancerAttributes,
    dlbarrsResponseStatus,
  )
where

import Network.AWS.ELB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeLoadBalancerAttributes.
--
--
--
-- /See:/ 'describeLoadBalancerAttributes' smart constructor.
newtype DescribeLoadBalancerAttributes = DescribeLoadBalancerAttributes'
  { _dlbaLoadBalancerName ::
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

-- | Creates a value of 'DescribeLoadBalancerAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlbaLoadBalancerName' - The name of the load balancer.
describeLoadBalancerAttributes ::
  -- | 'dlbaLoadBalancerName'
  Text ->
  DescribeLoadBalancerAttributes
describeLoadBalancerAttributes pLoadBalancerName_ =
  DescribeLoadBalancerAttributes'
    { _dlbaLoadBalancerName =
        pLoadBalancerName_
    }

-- | The name of the load balancer.
dlbaLoadBalancerName :: Lens' DescribeLoadBalancerAttributes Text
dlbaLoadBalancerName = lens _dlbaLoadBalancerName (\s a -> s {_dlbaLoadBalancerName = a})

instance AWSRequest DescribeLoadBalancerAttributes where
  type
    Rs DescribeLoadBalancerAttributes =
      DescribeLoadBalancerAttributesResponse
  request = postQuery elb
  response =
    receiveXMLWrapper
      "DescribeLoadBalancerAttributesResult"
      ( \s h x ->
          DescribeLoadBalancerAttributesResponse'
            <$> (x .@? "LoadBalancerAttributes")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLoadBalancerAttributes

instance NFData DescribeLoadBalancerAttributes

instance ToHeaders DescribeLoadBalancerAttributes where
  toHeaders = const mempty

instance ToPath DescribeLoadBalancerAttributes where
  toPath = const "/"

instance ToQuery DescribeLoadBalancerAttributes where
  toQuery DescribeLoadBalancerAttributes' {..} =
    mconcat
      [ "Action"
          =: ("DescribeLoadBalancerAttributes" :: ByteString),
        "Version" =: ("2012-06-01" :: ByteString),
        "LoadBalancerName" =: _dlbaLoadBalancerName
      ]

-- | Contains the output of DescribeLoadBalancerAttributes.
--
--
--
-- /See:/ 'describeLoadBalancerAttributesResponse' smart constructor.
data DescribeLoadBalancerAttributesResponse = DescribeLoadBalancerAttributesResponse'
  { _dlbarrsLoadBalancerAttributes ::
      !( Maybe
           LoadBalancerAttributes
       ),
    _dlbarrsResponseStatus ::
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

-- | Creates a value of 'DescribeLoadBalancerAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlbarrsLoadBalancerAttributes' - Information about the load balancer attributes.
--
-- * 'dlbarrsResponseStatus' - -- | The response status code.
describeLoadBalancerAttributesResponse ::
  -- | 'dlbarrsResponseStatus'
  Int ->
  DescribeLoadBalancerAttributesResponse
describeLoadBalancerAttributesResponse
  pResponseStatus_ =
    DescribeLoadBalancerAttributesResponse'
      { _dlbarrsLoadBalancerAttributes =
          Nothing,
        _dlbarrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the load balancer attributes.
dlbarrsLoadBalancerAttributes :: Lens' DescribeLoadBalancerAttributesResponse (Maybe LoadBalancerAttributes)
dlbarrsLoadBalancerAttributes = lens _dlbarrsLoadBalancerAttributes (\s a -> s {_dlbarrsLoadBalancerAttributes = a})

-- | -- | The response status code.
dlbarrsResponseStatus :: Lens' DescribeLoadBalancerAttributesResponse Int
dlbarrsResponseStatus = lens _dlbarrsResponseStatus (\s a -> s {_dlbarrsResponseStatus = a})

instance
  NFData
    DescribeLoadBalancerAttributesResponse
