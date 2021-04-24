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
-- Module      : Network.AWS.GameLift.StartFleetActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resumes activity on a fleet that was suspended with 'StopFleetActions' . Currently, this operation is used to restart a fleet's auto-scaling activity.
--
--
-- To start fleet actions, specify the fleet ID and the type of actions to restart. When auto-scaling fleet actions are restarted, Amazon GameLift once again initiates scaling events as triggered by the fleet's scaling policies. If actions on the fleet were never stopped, this operation will have no effect. You can view a fleet's stopped actions using 'DescribeFleetAttributes' .
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
--     * 'UpdateFleetAttributes'
--
--     * 'StartFleetActions' or 'StopFleetActions'
module Network.AWS.GameLift.StartFleetActions
  ( -- * Creating a Request
    startFleetActions,
    StartFleetActions,

    -- * Request Lenses
    sFleetId,
    sActions,

    -- * Destructuring the Response
    startFleetActionsResponse,
    StartFleetActionsResponse,

    -- * Response Lenses
    sfarrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startFleetActions' smart constructor.
data StartFleetActions = StartFleetActions'
  { _sFleetId ::
      !Text,
    _sActions :: !(List1 FleetAction)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartFleetActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sFleetId' - A unique identifier for a fleet to start actions on. You can use either the fleet ID or ARN value.
--
-- * 'sActions' - List of actions to restart on the fleet.
startFleetActions ::
  -- | 'sFleetId'
  Text ->
  -- | 'sActions'
  NonEmpty FleetAction ->
  StartFleetActions
startFleetActions pFleetId_ pActions_ =
  StartFleetActions'
    { _sFleetId = pFleetId_,
      _sActions = _List1 # pActions_
    }

-- | A unique identifier for a fleet to start actions on. You can use either the fleet ID or ARN value.
sFleetId :: Lens' StartFleetActions Text
sFleetId = lens _sFleetId (\s a -> s {_sFleetId = a})

-- | List of actions to restart on the fleet.
sActions :: Lens' StartFleetActions (NonEmpty FleetAction)
sActions = lens _sActions (\s a -> s {_sActions = a}) . _List1

instance AWSRequest StartFleetActions where
  type Rs StartFleetActions = StartFleetActionsResponse
  request = postJSON gameLift
  response =
    receiveEmpty
      ( \s h x ->
          StartFleetActionsResponse' <$> (pure (fromEnum s))
      )

instance Hashable StartFleetActions

instance NFData StartFleetActions

instance ToHeaders StartFleetActions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.StartFleetActions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartFleetActions where
  toJSON StartFleetActions' {..} =
    object
      ( catMaybes
          [ Just ("FleetId" .= _sFleetId),
            Just ("Actions" .= _sActions)
          ]
      )

instance ToPath StartFleetActions where
  toPath = const "/"

instance ToQuery StartFleetActions where
  toQuery = const mempty

-- | /See:/ 'startFleetActionsResponse' smart constructor.
newtype StartFleetActionsResponse = StartFleetActionsResponse'
  { _sfarrsResponseStatus ::
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

-- | Creates a value of 'StartFleetActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfarrsResponseStatus' - -- | The response status code.
startFleetActionsResponse ::
  -- | 'sfarrsResponseStatus'
  Int ->
  StartFleetActionsResponse
startFleetActionsResponse pResponseStatus_ =
  StartFleetActionsResponse'
    { _sfarrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
sfarrsResponseStatus :: Lens' StartFleetActionsResponse Int
sfarrsResponseStatus = lens _sfarrsResponseStatus (\s a -> s {_sfarrsResponseStatus = a})

instance NFData StartFleetActionsResponse
