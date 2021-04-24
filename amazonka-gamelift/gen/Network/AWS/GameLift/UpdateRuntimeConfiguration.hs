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
-- Module      : Network.AWS.GameLift.UpdateRuntimeConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the current runtime configuration for the specified fleet, which tells Amazon GameLift how to launch server processes on instances in the fleet. You can update a fleet's runtime configuration at any time after the fleet is created; it does not need to be in an @ACTIVE@ status.
--
--
-- To update runtime configuration, specify the fleet ID and provide a @RuntimeConfiguration@ object with an updated set of server process configurations.
--
-- Each instance in a Amazon GameLift fleet checks regularly for an updated runtime configuration and changes how it launches server processes to comply with the latest version. Existing server processes are not affected by the update; runtime configuration changes are applied gradually as existing processes shut down and new processes are launched during Amazon GameLift's normal process recycling activity.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html Setting up GameLift Fleets>
--
-- __Related operations__
--
--     * 'CreateFleet'
--
--     * 'ListFleets'
--
--     * 'DeleteFleet'
--
--     * 'DescribeFleetAttributes'
--
--     * Update fleets:
--
--     * 'UpdateFleetAttributes'
--
--     * 'UpdateFleetCapacity'
--
--     * 'UpdateFleetPortSettings'
--
--     * 'UpdateRuntimeConfiguration'
--
--
--
--     * 'StartFleetActions' or 'StopFleetActions'
module Network.AWS.GameLift.UpdateRuntimeConfiguration
  ( -- * Creating a Request
    updateRuntimeConfiguration,
    UpdateRuntimeConfiguration,

    -- * Request Lenses
    urcFleetId,
    urcRuntimeConfiguration,

    -- * Destructuring the Response
    updateRuntimeConfigurationResponse,
    UpdateRuntimeConfigurationResponse,

    -- * Response Lenses
    urcrrsRuntimeConfiguration,
    urcrrsResponseStatus,
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
-- /See:/ 'updateRuntimeConfiguration' smart constructor.
data UpdateRuntimeConfiguration = UpdateRuntimeConfiguration'
  { _urcFleetId ::
      !Text,
    _urcRuntimeConfiguration ::
      !RuntimeConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateRuntimeConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urcFleetId' - A unique identifier for a fleet to update runtime configuration for. You can use either the fleet ID or ARN value.
--
-- * 'urcRuntimeConfiguration' - Instructions for launching server processes on each instance in the fleet. Server processes run either a custom game build executable or a Realtime Servers script. The runtime configuration lists the types of server processes to run on an instance and includes the following configuration settings: the server executable or launch script file, launch parameters, and the number of processes to run concurrently on each instance. A CreateFleet request must include a runtime configuration with at least one server process configuration.
updateRuntimeConfiguration ::
  -- | 'urcFleetId'
  Text ->
  -- | 'urcRuntimeConfiguration'
  RuntimeConfiguration ->
  UpdateRuntimeConfiguration
updateRuntimeConfiguration
  pFleetId_
  pRuntimeConfiguration_ =
    UpdateRuntimeConfiguration'
      { _urcFleetId =
          pFleetId_,
        _urcRuntimeConfiguration =
          pRuntimeConfiguration_
      }

-- | A unique identifier for a fleet to update runtime configuration for. You can use either the fleet ID or ARN value.
urcFleetId :: Lens' UpdateRuntimeConfiguration Text
urcFleetId = lens _urcFleetId (\s a -> s {_urcFleetId = a})

-- | Instructions for launching server processes on each instance in the fleet. Server processes run either a custom game build executable or a Realtime Servers script. The runtime configuration lists the types of server processes to run on an instance and includes the following configuration settings: the server executable or launch script file, launch parameters, and the number of processes to run concurrently on each instance. A CreateFleet request must include a runtime configuration with at least one server process configuration.
urcRuntimeConfiguration :: Lens' UpdateRuntimeConfiguration RuntimeConfiguration
urcRuntimeConfiguration = lens _urcRuntimeConfiguration (\s a -> s {_urcRuntimeConfiguration = a})

instance AWSRequest UpdateRuntimeConfiguration where
  type
    Rs UpdateRuntimeConfiguration =
      UpdateRuntimeConfigurationResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          UpdateRuntimeConfigurationResponse'
            <$> (x .?> "RuntimeConfiguration")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateRuntimeConfiguration

instance NFData UpdateRuntimeConfiguration

instance ToHeaders UpdateRuntimeConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "GameLift.UpdateRuntimeConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateRuntimeConfiguration where
  toJSON UpdateRuntimeConfiguration' {..} =
    object
      ( catMaybes
          [ Just ("FleetId" .= _urcFleetId),
            Just
              ( "RuntimeConfiguration"
                  .= _urcRuntimeConfiguration
              )
          ]
      )

instance ToPath UpdateRuntimeConfiguration where
  toPath = const "/"

instance ToQuery UpdateRuntimeConfiguration where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'updateRuntimeConfigurationResponse' smart constructor.
data UpdateRuntimeConfigurationResponse = UpdateRuntimeConfigurationResponse'
  { _urcrrsRuntimeConfiguration ::
      !( Maybe
           RuntimeConfiguration
       ),
    _urcrrsResponseStatus ::
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

-- | Creates a value of 'UpdateRuntimeConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urcrrsRuntimeConfiguration' - The runtime configuration currently in force. If the update was successful, this object matches the one in the request.
--
-- * 'urcrrsResponseStatus' - -- | The response status code.
updateRuntimeConfigurationResponse ::
  -- | 'urcrrsResponseStatus'
  Int ->
  UpdateRuntimeConfigurationResponse
updateRuntimeConfigurationResponse pResponseStatus_ =
  UpdateRuntimeConfigurationResponse'
    { _urcrrsRuntimeConfiguration =
        Nothing,
      _urcrrsResponseStatus =
        pResponseStatus_
    }

-- | The runtime configuration currently in force. If the update was successful, this object matches the one in the request.
urcrrsRuntimeConfiguration :: Lens' UpdateRuntimeConfigurationResponse (Maybe RuntimeConfiguration)
urcrrsRuntimeConfiguration = lens _urcrrsRuntimeConfiguration (\s a -> s {_urcrrsRuntimeConfiguration = a})

-- | -- | The response status code.
urcrrsResponseStatus :: Lens' UpdateRuntimeConfigurationResponse Int
urcrrsResponseStatus = lens _urcrrsResponseStatus (\s a -> s {_urcrrsResponseStatus = a})

instance NFData UpdateRuntimeConfigurationResponse
