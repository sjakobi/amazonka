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
-- Module      : Network.AWS.ECS.DiscoverPollEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an endpoint for the Amazon ECS agent to poll for updates.
module Network.AWS.ECS.DiscoverPollEndpoint
  ( -- * Creating a Request
    discoverPollEndpoint,
    DiscoverPollEndpoint,

    -- * Request Lenses
    dpeContainerInstance,
    dpeCluster,

    -- * Destructuring the Response
    discoverPollEndpointResponse,
    DiscoverPollEndpointResponse,

    -- * Response Lenses
    dperrsTelemetryEndpoint,
    dperrsEndpoint,
    dperrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'discoverPollEndpoint' smart constructor.
data DiscoverPollEndpoint = DiscoverPollEndpoint'
  { _dpeContainerInstance ::
      !(Maybe Text),
    _dpeCluster :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DiscoverPollEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpeContainerInstance' - The container instance ID or full ARN of the container instance. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the @container-instance@ namespace, and then the container instance ID. For example, @arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID@ .
--
-- * 'dpeCluster' - The short name or full Amazon Resource Name (ARN) of the cluster to which the container instance belongs.
discoverPollEndpoint ::
  DiscoverPollEndpoint
discoverPollEndpoint =
  DiscoverPollEndpoint'
    { _dpeContainerInstance =
        Nothing,
      _dpeCluster = Nothing
    }

-- | The container instance ID or full ARN of the container instance. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the @container-instance@ namespace, and then the container instance ID. For example, @arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID@ .
dpeContainerInstance :: Lens' DiscoverPollEndpoint (Maybe Text)
dpeContainerInstance = lens _dpeContainerInstance (\s a -> s {_dpeContainerInstance = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster to which the container instance belongs.
dpeCluster :: Lens' DiscoverPollEndpoint (Maybe Text)
dpeCluster = lens _dpeCluster (\s a -> s {_dpeCluster = a})

instance AWSRequest DiscoverPollEndpoint where
  type
    Rs DiscoverPollEndpoint =
      DiscoverPollEndpointResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DiscoverPollEndpointResponse'
            <$> (x .?> "telemetryEndpoint")
            <*> (x .?> "endpoint")
            <*> (pure (fromEnum s))
      )

instance Hashable DiscoverPollEndpoint

instance NFData DiscoverPollEndpoint

instance ToHeaders DiscoverPollEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.DiscoverPollEndpoint" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DiscoverPollEndpoint where
  toJSON DiscoverPollEndpoint' {..} =
    object
      ( catMaybes
          [ ("containerInstance" .=) <$> _dpeContainerInstance,
            ("cluster" .=) <$> _dpeCluster
          ]
      )

instance ToPath DiscoverPollEndpoint where
  toPath = const "/"

instance ToQuery DiscoverPollEndpoint where
  toQuery = const mempty

-- | /See:/ 'discoverPollEndpointResponse' smart constructor.
data DiscoverPollEndpointResponse = DiscoverPollEndpointResponse'
  { _dperrsTelemetryEndpoint ::
      !(Maybe Text),
    _dperrsEndpoint ::
      !(Maybe Text),
    _dperrsResponseStatus ::
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

-- | Creates a value of 'DiscoverPollEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dperrsTelemetryEndpoint' - The telemetry endpoint for the Amazon ECS agent.
--
-- * 'dperrsEndpoint' - The endpoint for the Amazon ECS agent to poll.
--
-- * 'dperrsResponseStatus' - -- | The response status code.
discoverPollEndpointResponse ::
  -- | 'dperrsResponseStatus'
  Int ->
  DiscoverPollEndpointResponse
discoverPollEndpointResponse pResponseStatus_ =
  DiscoverPollEndpointResponse'
    { _dperrsTelemetryEndpoint =
        Nothing,
      _dperrsEndpoint = Nothing,
      _dperrsResponseStatus = pResponseStatus_
    }

-- | The telemetry endpoint for the Amazon ECS agent.
dperrsTelemetryEndpoint :: Lens' DiscoverPollEndpointResponse (Maybe Text)
dperrsTelemetryEndpoint = lens _dperrsTelemetryEndpoint (\s a -> s {_dperrsTelemetryEndpoint = a})

-- | The endpoint for the Amazon ECS agent to poll.
dperrsEndpoint :: Lens' DiscoverPollEndpointResponse (Maybe Text)
dperrsEndpoint = lens _dperrsEndpoint (\s a -> s {_dperrsEndpoint = a})

-- | -- | The response status code.
dperrsResponseStatus :: Lens' DiscoverPollEndpointResponse Int
dperrsResponseStatus = lens _dperrsResponseStatus (\s a -> s {_dperrsResponseStatus = a})

instance NFData DiscoverPollEndpointResponse
