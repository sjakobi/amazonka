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
-- Module      : Network.AWS.GameLift.DescribeRuntimeConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a fleet's runtime configuration settings. The runtime configuration tells Amazon GameLift which server processes to run (and how) on each instance in the fleet.
--
--
-- To get a runtime configuration, specify the fleet's unique identifier. If successful, a 'RuntimeConfiguration' object is returned for the requested fleet. If the requested fleet has been deleted, the result set is empty.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html Setting up GameLift Fleets>
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html Running Multiple Processes on a Fleet>
--
-- __Related operations__
--
--     * 'CreateFleet'
--
--     * 'ListFleets'
--
--     * 'DeleteFleet'
--
--     * Describe fleets:
--
--     * 'DescribeFleetAttributes'
--
--     * 'DescribeFleetCapacity'
--
--     * 'DescribeFleetPortSettings'
--
--     * 'DescribeFleetUtilization'
--
--     * 'DescribeRuntimeConfiguration'
--
--     * 'DescribeEC2InstanceLimits'
--
--     * 'DescribeFleetEvents'
--
--
--
--     * 'UpdateFleetAttributes'
--
--     * 'StartFleetActions' or 'StopFleetActions'
module Network.AWS.GameLift.DescribeRuntimeConfiguration
  ( -- * Creating a Request
    describeRuntimeConfiguration,
    DescribeRuntimeConfiguration,

    -- * Request Lenses
    drcFleetId,

    -- * Destructuring the Response
    describeRuntimeConfigurationResponse,
    DescribeRuntimeConfigurationResponse,

    -- * Response Lenses
    drcrrsRuntimeConfiguration,
    drcrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'describeRuntimeConfiguration' smart constructor.
newtype DescribeRuntimeConfiguration = DescribeRuntimeConfiguration'
  { _drcFleetId ::
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

-- | Creates a value of 'DescribeRuntimeConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drcFleetId' - A unique identifier for a fleet to get the runtime configuration for. You can use either the fleet ID or ARN value.
describeRuntimeConfiguration ::
  -- | 'drcFleetId'
  Text ->
  DescribeRuntimeConfiguration
describeRuntimeConfiguration pFleetId_ =
  DescribeRuntimeConfiguration'
    { _drcFleetId =
        pFleetId_
    }

-- | A unique identifier for a fleet to get the runtime configuration for. You can use either the fleet ID or ARN value.
drcFleetId :: Lens' DescribeRuntimeConfiguration Text
drcFleetId = lens _drcFleetId (\s a -> s {_drcFleetId = a})

instance AWSRequest DescribeRuntimeConfiguration where
  type
    Rs DescribeRuntimeConfiguration =
      DescribeRuntimeConfigurationResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeRuntimeConfigurationResponse'
            <$> (x .?> "RuntimeConfiguration")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRuntimeConfiguration

instance NFData DescribeRuntimeConfiguration

instance ToHeaders DescribeRuntimeConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "GameLift.DescribeRuntimeConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeRuntimeConfiguration where
  toJSON DescribeRuntimeConfiguration' {..} =
    object
      (catMaybes [Just ("FleetId" .= _drcFleetId)])

instance ToPath DescribeRuntimeConfiguration where
  toPath = const "/"

instance ToQuery DescribeRuntimeConfiguration where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeRuntimeConfigurationResponse' smart constructor.
data DescribeRuntimeConfigurationResponse = DescribeRuntimeConfigurationResponse'
  { _drcrrsRuntimeConfiguration ::
      !( Maybe
           RuntimeConfiguration
       ),
    _drcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeRuntimeConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drcrrsRuntimeConfiguration' - Instructions describing how server processes should be launched and maintained on each instance in the fleet.
--
-- * 'drcrrsResponseStatus' - -- | The response status code.
describeRuntimeConfigurationResponse ::
  -- | 'drcrrsResponseStatus'
  Int ->
  DescribeRuntimeConfigurationResponse
describeRuntimeConfigurationResponse pResponseStatus_ =
  DescribeRuntimeConfigurationResponse'
    { _drcrrsRuntimeConfiguration =
        Nothing,
      _drcrrsResponseStatus =
        pResponseStatus_
    }

-- | Instructions describing how server processes should be launched and maintained on each instance in the fleet.
drcrrsRuntimeConfiguration :: Lens' DescribeRuntimeConfigurationResponse (Maybe RuntimeConfiguration)
drcrrsRuntimeConfiguration = lens _drcrrsRuntimeConfiguration (\s a -> s {_drcrrsRuntimeConfiguration = a})

-- | -- | The response status code.
drcrrsResponseStatus :: Lens' DescribeRuntimeConfigurationResponse Int
drcrrsResponseStatus = lens _drcrrsResponseStatus (\s a -> s {_drcrrsResponseStatus = a})

instance NFData DescribeRuntimeConfigurationResponse
