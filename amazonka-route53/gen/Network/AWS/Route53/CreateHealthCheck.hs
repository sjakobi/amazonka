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
-- Module      : Network.AWS.Route53.CreateHealthCheck
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new health check.
--
--
-- For information about adding health checks to resource record sets, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId HealthCheckId> in <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html ChangeResourceRecordSets> .
--
-- __ELB Load Balancers__
--
-- If you're registering EC2 instances with an Elastic Load Balancing (ELB) load balancer, do not create Amazon Route 53 health checks for the EC2 instances. When you register an EC2 instance with a load balancer, you configure settings for an ELB health check, which performs a similar function to a Route 53 health check.
--
-- __Private Hosted Zones__
--
-- You can associate health checks with failover resource record sets in a private hosted zone. Note the following:
--
--     * Route 53 health checkers are outside the VPC. To check the health of an endpoint within a VPC by IP address, you must assign a public IP address to the instance in the VPC.
--
--     * You can configure a health checker to check the health of an external resource that the instance relies on, such as a database server.
--
--     * You can create a CloudWatch metric, associate an alarm with the metric, and then create a health check that is based on the state of the alarm. For example, you might create a CloudWatch metric that checks the status of the Amazon EC2 @StatusCheckFailed@ metric, add an alarm to the metric, and then create a health check that is based on the state of the alarm. For information about creating CloudWatch metrics and alarms by using the CloudWatch console, see the <https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html Amazon CloudWatch User Guide> .
module Network.AWS.Route53.CreateHealthCheck
  ( -- * Creating a Request
    createHealthCheck,
    CreateHealthCheck,

    -- * Request Lenses
    chcCallerReference,
    chcHealthCheckConfig,

    -- * Destructuring the Response
    createHealthCheckResponse,
    CreateHealthCheckResponse,

    -- * Response Lenses
    chcrrsResponseStatus,
    chcrrsHealthCheck,
    chcrrsLocation,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type that contains the health check request information.
--
--
--
-- /See:/ 'createHealthCheck' smart constructor.
data CreateHealthCheck = CreateHealthCheck'
  { _chcCallerReference ::
      !Text,
    _chcHealthCheckConfig ::
      !HealthCheckConfig
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chcCallerReference' - A unique string that identifies the request and that allows you to retry a failed @CreateHealthCheck@ request without the risk of creating two identical health checks:     * If you send a @CreateHealthCheck@ request with the same @CallerReference@ and settings as a previous request, and if the health check doesn't exist, Amazon Route 53 creates the health check. If the health check does exist, Route 53 returns the settings for the existing health check.     * If you send a @CreateHealthCheck@ request with the same @CallerReference@ as a deleted health check, regardless of the settings, Route 53 returns a @HealthCheckAlreadyExists@ error.     * If you send a @CreateHealthCheck@ request with the same @CallerReference@ as an existing health check but with different settings, Route 53 returns a @HealthCheckAlreadyExists@ error.     * If you send a @CreateHealthCheck@ request with a unique @CallerReference@ but settings identical to an existing health check, Route 53 creates the health check.
--
-- * 'chcHealthCheckConfig' - A complex type that contains settings for a new health check.
createHealthCheck ::
  -- | 'chcCallerReference'
  Text ->
  -- | 'chcHealthCheckConfig'
  HealthCheckConfig ->
  CreateHealthCheck
createHealthCheck
  pCallerReference_
  pHealthCheckConfig_ =
    CreateHealthCheck'
      { _chcCallerReference =
          pCallerReference_,
        _chcHealthCheckConfig = pHealthCheckConfig_
      }

-- | A unique string that identifies the request and that allows you to retry a failed @CreateHealthCheck@ request without the risk of creating two identical health checks:     * If you send a @CreateHealthCheck@ request with the same @CallerReference@ and settings as a previous request, and if the health check doesn't exist, Amazon Route 53 creates the health check. If the health check does exist, Route 53 returns the settings for the existing health check.     * If you send a @CreateHealthCheck@ request with the same @CallerReference@ as a deleted health check, regardless of the settings, Route 53 returns a @HealthCheckAlreadyExists@ error.     * If you send a @CreateHealthCheck@ request with the same @CallerReference@ as an existing health check but with different settings, Route 53 returns a @HealthCheckAlreadyExists@ error.     * If you send a @CreateHealthCheck@ request with a unique @CallerReference@ but settings identical to an existing health check, Route 53 creates the health check.
chcCallerReference :: Lens' CreateHealthCheck Text
chcCallerReference = lens _chcCallerReference (\s a -> s {_chcCallerReference = a})

-- | A complex type that contains settings for a new health check.
chcHealthCheckConfig :: Lens' CreateHealthCheck HealthCheckConfig
chcHealthCheckConfig = lens _chcHealthCheckConfig (\s a -> s {_chcHealthCheckConfig = a})

instance AWSRequest CreateHealthCheck where
  type Rs CreateHealthCheck = CreateHealthCheckResponse
  request = postXML route53
  response =
    receiveXML
      ( \s h x ->
          CreateHealthCheckResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "HealthCheck")
            <*> (h .# "Location")
      )

instance Hashable CreateHealthCheck

instance NFData CreateHealthCheck

instance ToElement CreateHealthCheck where
  toElement =
    mkElement
      "{https://route53.amazonaws.com/doc/2013-04-01/}CreateHealthCheckRequest"

instance ToHeaders CreateHealthCheck where
  toHeaders = const mempty

instance ToPath CreateHealthCheck where
  toPath = const "/2013-04-01/healthcheck"

instance ToQuery CreateHealthCheck where
  toQuery = const mempty

instance ToXML CreateHealthCheck where
  toXML CreateHealthCheck' {..} =
    mconcat
      [ "CallerReference" @= _chcCallerReference,
        "HealthCheckConfig" @= _chcHealthCheckConfig
      ]

-- | A complex type containing the response information for the new health check.
--
--
--
-- /See:/ 'createHealthCheckResponse' smart constructor.
data CreateHealthCheckResponse = CreateHealthCheckResponse'
  { _chcrrsResponseStatus ::
      !Int,
    _chcrrsHealthCheck ::
      !HealthCheck,
    _chcrrsLocation ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateHealthCheckResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chcrrsResponseStatus' - -- | The response status code.
--
-- * 'chcrrsHealthCheck' - A complex type that contains identifying information about the health check.
--
-- * 'chcrrsLocation' - The unique URL representing the new health check.
createHealthCheckResponse ::
  -- | 'chcrrsResponseStatus'
  Int ->
  -- | 'chcrrsHealthCheck'
  HealthCheck ->
  -- | 'chcrrsLocation'
  Text ->
  CreateHealthCheckResponse
createHealthCheckResponse
  pResponseStatus_
  pHealthCheck_
  pLocation_ =
    CreateHealthCheckResponse'
      { _chcrrsResponseStatus =
          pResponseStatus_,
        _chcrrsHealthCheck = pHealthCheck_,
        _chcrrsLocation = pLocation_
      }

-- | -- | The response status code.
chcrrsResponseStatus :: Lens' CreateHealthCheckResponse Int
chcrrsResponseStatus = lens _chcrrsResponseStatus (\s a -> s {_chcrrsResponseStatus = a})

-- | A complex type that contains identifying information about the health check.
chcrrsHealthCheck :: Lens' CreateHealthCheckResponse HealthCheck
chcrrsHealthCheck = lens _chcrrsHealthCheck (\s a -> s {_chcrrsHealthCheck = a})

-- | The unique URL representing the new health check.
chcrrsLocation :: Lens' CreateHealthCheckResponse Text
chcrrsLocation = lens _chcrrsLocation (\s a -> s {_chcrrsLocation = a})

instance NFData CreateHealthCheckResponse
