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
-- Module      : Network.AWS.GameLift.UpdateFleetCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates capacity settings for a fleet. Use this operation to specify the number of EC2 instances (hosts) that you want this fleet to contain. Before calling this operation, you may want to call 'DescribeEC2InstanceLimits' to get the maximum capacity based on the fleet's EC2 instance type.
--
--
-- Specify minimum and maximum number of instances. Amazon GameLift will not change fleet capacity to values fall outside of this range. This is particularly important when using auto-scaling (see 'PutScalingPolicy' ) to allow capacity to adjust based on player demand while imposing limits on automatic adjustments.
--
-- To update fleet capacity, specify the fleet ID and the number of instances you want the fleet to host. If successful, Amazon GameLift starts or terminates instances so that the fleet's active instance count matches the desired instance count. You can view a fleet's current capacity information by calling 'DescribeFleetCapacity' . If the desired instance count is higher than the instance type's limit, the "Limit Exceeded" exception occurs.
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
module Network.AWS.GameLift.UpdateFleetCapacity
  ( -- * Creating a Request
    updateFleetCapacity,
    UpdateFleetCapacity,

    -- * Request Lenses
    ufcMinSize,
    ufcMaxSize,
    ufcDesiredInstances,
    ufcFleetId,

    -- * Destructuring the Response
    updateFleetCapacityResponse,
    UpdateFleetCapacityResponse,

    -- * Response Lenses
    ufcrrsFleetId,
    ufcrrsResponseStatus,
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
-- /See:/ 'updateFleetCapacity' smart constructor.
data UpdateFleetCapacity = UpdateFleetCapacity'
  { _ufcMinSize ::
      !(Maybe Nat),
    _ufcMaxSize :: !(Maybe Nat),
    _ufcDesiredInstances ::
      !(Maybe Nat),
    _ufcFleetId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateFleetCapacity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufcMinSize' - The minimum value allowed for the fleet's instance count. Default if not set is 0.
--
-- * 'ufcMaxSize' - The maximum value allowed for the fleet's instance count. Default if not set is 1.
--
-- * 'ufcDesiredInstances' - Number of EC2 instances you want this fleet to host.
--
-- * 'ufcFleetId' - A unique identifier for a fleet to update capacity for. You can use either the fleet ID or ARN value.
updateFleetCapacity ::
  -- | 'ufcFleetId'
  Text ->
  UpdateFleetCapacity
updateFleetCapacity pFleetId_ =
  UpdateFleetCapacity'
    { _ufcMinSize = Nothing,
      _ufcMaxSize = Nothing,
      _ufcDesiredInstances = Nothing,
      _ufcFleetId = pFleetId_
    }

-- | The minimum value allowed for the fleet's instance count. Default if not set is 0.
ufcMinSize :: Lens' UpdateFleetCapacity (Maybe Natural)
ufcMinSize = lens _ufcMinSize (\s a -> s {_ufcMinSize = a}) . mapping _Nat

-- | The maximum value allowed for the fleet's instance count. Default if not set is 1.
ufcMaxSize :: Lens' UpdateFleetCapacity (Maybe Natural)
ufcMaxSize = lens _ufcMaxSize (\s a -> s {_ufcMaxSize = a}) . mapping _Nat

-- | Number of EC2 instances you want this fleet to host.
ufcDesiredInstances :: Lens' UpdateFleetCapacity (Maybe Natural)
ufcDesiredInstances = lens _ufcDesiredInstances (\s a -> s {_ufcDesiredInstances = a}) . mapping _Nat

-- | A unique identifier for a fleet to update capacity for. You can use either the fleet ID or ARN value.
ufcFleetId :: Lens' UpdateFleetCapacity Text
ufcFleetId = lens _ufcFleetId (\s a -> s {_ufcFleetId = a})

instance AWSRequest UpdateFleetCapacity where
  type
    Rs UpdateFleetCapacity =
      UpdateFleetCapacityResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          UpdateFleetCapacityResponse'
            <$> (x .?> "FleetId") <*> (pure (fromEnum s))
      )

instance Hashable UpdateFleetCapacity

instance NFData UpdateFleetCapacity

instance ToHeaders UpdateFleetCapacity where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.UpdateFleetCapacity" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateFleetCapacity where
  toJSON UpdateFleetCapacity' {..} =
    object
      ( catMaybes
          [ ("MinSize" .=) <$> _ufcMinSize,
            ("MaxSize" .=) <$> _ufcMaxSize,
            ("DesiredInstances" .=) <$> _ufcDesiredInstances,
            Just ("FleetId" .= _ufcFleetId)
          ]
      )

instance ToPath UpdateFleetCapacity where
  toPath = const "/"

instance ToQuery UpdateFleetCapacity where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'updateFleetCapacityResponse' smart constructor.
data UpdateFleetCapacityResponse = UpdateFleetCapacityResponse'
  { _ufcrrsFleetId ::
      !(Maybe Text),
    _ufcrrsResponseStatus ::
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

-- | Creates a value of 'UpdateFleetCapacityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufcrrsFleetId' - A unique identifier for a fleet that was updated.
--
-- * 'ufcrrsResponseStatus' - -- | The response status code.
updateFleetCapacityResponse ::
  -- | 'ufcrrsResponseStatus'
  Int ->
  UpdateFleetCapacityResponse
updateFleetCapacityResponse pResponseStatus_ =
  UpdateFleetCapacityResponse'
    { _ufcrrsFleetId =
        Nothing,
      _ufcrrsResponseStatus = pResponseStatus_
    }

-- | A unique identifier for a fleet that was updated.
ufcrrsFleetId :: Lens' UpdateFleetCapacityResponse (Maybe Text)
ufcrrsFleetId = lens _ufcrrsFleetId (\s a -> s {_ufcrrsFleetId = a})

-- | -- | The response status code.
ufcrrsResponseStatus :: Lens' UpdateFleetCapacityResponse Int
ufcrrsResponseStatus = lens _ufcrrsResponseStatus (\s a -> s {_ufcrrsResponseStatus = a})

instance NFData UpdateFleetCapacityResponse
