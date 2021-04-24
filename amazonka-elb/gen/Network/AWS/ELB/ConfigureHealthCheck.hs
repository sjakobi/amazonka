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
-- Module      : Network.AWS.ELB.ConfigureHealthCheck
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Specifies the health check settings to use when evaluating the health state of your EC2 instances.
--
--
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html Configure Health Checks for Your Load Balancer> in the /Classic Load Balancers Guide/ .
module Network.AWS.ELB.ConfigureHealthCheck
  ( -- * Creating a Request
    configureHealthCheck,
    ConfigureHealthCheck,

    -- * Request Lenses
    chcLoadBalancerName,
    chcHealthCheck,

    -- * Destructuring the Response
    configureHealthCheckResponse,
    ConfigureHealthCheckResponse,

    -- * Response Lenses
    chcrrsHealthCheck,
    chcrrsResponseStatus,
  )
where

import Network.AWS.ELB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for ConfigureHealthCheck.
--
--
--
-- /See:/ 'configureHealthCheck' smart constructor.
data ConfigureHealthCheck = ConfigureHealthCheck'
  { _chcLoadBalancerName ::
      !Text,
    _chcHealthCheck ::
      !HealthCheck
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConfigureHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chcLoadBalancerName' - The name of the load balancer.
--
-- * 'chcHealthCheck' - The configuration information.
configureHealthCheck ::
  -- | 'chcLoadBalancerName'
  Text ->
  -- | 'chcHealthCheck'
  HealthCheck ->
  ConfigureHealthCheck
configureHealthCheck pLoadBalancerName_ pHealthCheck_ =
  ConfigureHealthCheck'
    { _chcLoadBalancerName =
        pLoadBalancerName_,
      _chcHealthCheck = pHealthCheck_
    }

-- | The name of the load balancer.
chcLoadBalancerName :: Lens' ConfigureHealthCheck Text
chcLoadBalancerName = lens _chcLoadBalancerName (\s a -> s {_chcLoadBalancerName = a})

-- | The configuration information.
chcHealthCheck :: Lens' ConfigureHealthCheck HealthCheck
chcHealthCheck = lens _chcHealthCheck (\s a -> s {_chcHealthCheck = a})

instance AWSRequest ConfigureHealthCheck where
  type
    Rs ConfigureHealthCheck =
      ConfigureHealthCheckResponse
  request = postQuery elb
  response =
    receiveXMLWrapper
      "ConfigureHealthCheckResult"
      ( \s h x ->
          ConfigureHealthCheckResponse'
            <$> (x .@? "HealthCheck") <*> (pure (fromEnum s))
      )

instance Hashable ConfigureHealthCheck

instance NFData ConfigureHealthCheck

instance ToHeaders ConfigureHealthCheck where
  toHeaders = const mempty

instance ToPath ConfigureHealthCheck where
  toPath = const "/"

instance ToQuery ConfigureHealthCheck where
  toQuery ConfigureHealthCheck' {..} =
    mconcat
      [ "Action" =: ("ConfigureHealthCheck" :: ByteString),
        "Version" =: ("2012-06-01" :: ByteString),
        "LoadBalancerName" =: _chcLoadBalancerName,
        "HealthCheck" =: _chcHealthCheck
      ]

-- | Contains the output of ConfigureHealthCheck.
--
--
--
-- /See:/ 'configureHealthCheckResponse' smart constructor.
data ConfigureHealthCheckResponse = ConfigureHealthCheckResponse'
  { _chcrrsHealthCheck ::
      !( Maybe
           HealthCheck
       ),
    _chcrrsResponseStatus ::
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

-- | Creates a value of 'ConfigureHealthCheckResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chcrrsHealthCheck' - The updated health check.
--
-- * 'chcrrsResponseStatus' - -- | The response status code.
configureHealthCheckResponse ::
  -- | 'chcrrsResponseStatus'
  Int ->
  ConfigureHealthCheckResponse
configureHealthCheckResponse pResponseStatus_ =
  ConfigureHealthCheckResponse'
    { _chcrrsHealthCheck =
        Nothing,
      _chcrrsResponseStatus = pResponseStatus_
    }

-- | The updated health check.
chcrrsHealthCheck :: Lens' ConfigureHealthCheckResponse (Maybe HealthCheck)
chcrrsHealthCheck = lens _chcrrsHealthCheck (\s a -> s {_chcrrsHealthCheck = a})

-- | -- | The response status code.
chcrrsResponseStatus :: Lens' ConfigureHealthCheckResponse Int
chcrrsResponseStatus = lens _chcrrsResponseStatus (\s a -> s {_chcrrsResponseStatus = a})

instance NFData ConfigureHealthCheckResponse
