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
-- Module      : Network.AWS.OpsWorks.DescribeElasticLoadBalancers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a stack's Elastic Load Balancing instances.
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.DescribeElasticLoadBalancers
  ( -- * Creating a Request
    describeElasticLoadBalancers,
    DescribeElasticLoadBalancers,

    -- * Request Lenses
    delbStackId,
    delbLayerIds,

    -- * Destructuring the Response
    describeElasticLoadBalancersResponse,
    DescribeElasticLoadBalancersResponse,

    -- * Response Lenses
    delbrrsElasticLoadBalancers,
    delbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeElasticLoadBalancers' smart constructor.
data DescribeElasticLoadBalancers = DescribeElasticLoadBalancers'
  { _delbStackId ::
      !(Maybe Text),
    _delbLayerIds ::
      !( Maybe
           [Text]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeElasticLoadBalancers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delbStackId' - A stack ID. The action describes the stack's Elastic Load Balancing instances.
--
-- * 'delbLayerIds' - A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.
describeElasticLoadBalancers ::
  DescribeElasticLoadBalancers
describeElasticLoadBalancers =
  DescribeElasticLoadBalancers'
    { _delbStackId =
        Nothing,
      _delbLayerIds = Nothing
    }

-- | A stack ID. The action describes the stack's Elastic Load Balancing instances.
delbStackId :: Lens' DescribeElasticLoadBalancers (Maybe Text)
delbStackId = lens _delbStackId (\s a -> s {_delbStackId = a})

-- | A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.
delbLayerIds :: Lens' DescribeElasticLoadBalancers [Text]
delbLayerIds = lens _delbLayerIds (\s a -> s {_delbLayerIds = a}) . _Default . _Coerce

instance AWSRequest DescribeElasticLoadBalancers where
  type
    Rs DescribeElasticLoadBalancers =
      DescribeElasticLoadBalancersResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          DescribeElasticLoadBalancersResponse'
            <$> (x .?> "ElasticLoadBalancers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeElasticLoadBalancers

instance NFData DescribeElasticLoadBalancers

instance ToHeaders DescribeElasticLoadBalancers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorks_20130218.DescribeElasticLoadBalancers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeElasticLoadBalancers where
  toJSON DescribeElasticLoadBalancers' {..} =
    object
      ( catMaybes
          [ ("StackId" .=) <$> _delbStackId,
            ("LayerIds" .=) <$> _delbLayerIds
          ]
      )

instance ToPath DescribeElasticLoadBalancers where
  toPath = const "/"

instance ToQuery DescribeElasticLoadBalancers where
  toQuery = const mempty

-- | Contains the response to a @DescribeElasticLoadBalancers@ request.
--
--
--
-- /See:/ 'describeElasticLoadBalancersResponse' smart constructor.
data DescribeElasticLoadBalancersResponse = DescribeElasticLoadBalancersResponse'
  { _delbrrsElasticLoadBalancers ::
      !( Maybe
           [ElasticLoadBalancer]
       ),
    _delbrrsResponseStatus ::
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

-- | Creates a value of 'DescribeElasticLoadBalancersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delbrrsElasticLoadBalancers' - A list of @ElasticLoadBalancer@ objects that describe the specified Elastic Load Balancing instances.
--
-- * 'delbrrsResponseStatus' - -- | The response status code.
describeElasticLoadBalancersResponse ::
  -- | 'delbrrsResponseStatus'
  Int ->
  DescribeElasticLoadBalancersResponse
describeElasticLoadBalancersResponse pResponseStatus_ =
  DescribeElasticLoadBalancersResponse'
    { _delbrrsElasticLoadBalancers =
        Nothing,
      _delbrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of @ElasticLoadBalancer@ objects that describe the specified Elastic Load Balancing instances.
delbrrsElasticLoadBalancers :: Lens' DescribeElasticLoadBalancersResponse [ElasticLoadBalancer]
delbrrsElasticLoadBalancers = lens _delbrrsElasticLoadBalancers (\s a -> s {_delbrrsElasticLoadBalancers = a}) . _Default . _Coerce

-- | -- | The response status code.
delbrrsResponseStatus :: Lens' DescribeElasticLoadBalancersResponse Int
delbrrsResponseStatus = lens _delbrrsResponseStatus (\s a -> s {_delbrrsResponseStatus = a})

instance NFData DescribeElasticLoadBalancersResponse
