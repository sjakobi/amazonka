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
-- Module      : Network.AWS.GameLift.DescribeGameServerGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __This operation is used with the Amazon GameLift FleetIQ solution and game server groups.__
--
--
-- Retrieves information on a game server group. This operation returns only properties related to GameLift FleetIQ. To view or update properties for the corresponding Auto Scaling group, such as launch template, auto scaling policies, and maximum/minimum group size, access the Auto Scaling group directly.
--
-- To get attributes for a game server group, provide a group name or ARN value. If successful, a 'GameServerGroup' object is returned.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html GameLift FleetIQ Guide>
--
-- __Related operations__
--
--     * 'CreateGameServerGroup'
--
--     * 'ListGameServerGroups'
--
--     * 'DescribeGameServerGroup'
--
--     * 'UpdateGameServerGroup'
--
--     * 'DeleteGameServerGroup'
--
--     * 'ResumeGameServerGroup'
--
--     * 'SuspendGameServerGroup'
--
--     * 'DescribeGameServerInstances'
module Network.AWS.GameLift.DescribeGameServerGroup
  ( -- * Creating a Request
    describeGameServerGroup,
    DescribeGameServerGroup,

    -- * Request Lenses
    dgsgGameServerGroupName,

    -- * Destructuring the Response
    describeGameServerGroupResponse,
    DescribeGameServerGroupResponse,

    -- * Response Lenses
    dgsgrgrsGameServerGroup,
    dgsgrgrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeGameServerGroup' smart constructor.
newtype DescribeGameServerGroup = DescribeGameServerGroup'
  { _dgsgGameServerGroupName ::
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

-- | Creates a value of 'DescribeGameServerGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsgGameServerGroupName' - A unique identifier for the game server group. Use either the 'GameServerGroup' name or ARN value.
describeGameServerGroup ::
  -- | 'dgsgGameServerGroupName'
  Text ->
  DescribeGameServerGroup
describeGameServerGroup pGameServerGroupName_ =
  DescribeGameServerGroup'
    { _dgsgGameServerGroupName =
        pGameServerGroupName_
    }

-- | A unique identifier for the game server group. Use either the 'GameServerGroup' name or ARN value.
dgsgGameServerGroupName :: Lens' DescribeGameServerGroup Text
dgsgGameServerGroupName = lens _dgsgGameServerGroupName (\s a -> s {_dgsgGameServerGroupName = a})

instance AWSRequest DescribeGameServerGroup where
  type
    Rs DescribeGameServerGroup =
      DescribeGameServerGroupResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeGameServerGroupResponse'
            <$> (x .?> "GameServerGroup") <*> (pure (fromEnum s))
      )

instance Hashable DescribeGameServerGroup

instance NFData DescribeGameServerGroup

instance ToHeaders DescribeGameServerGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DescribeGameServerGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeGameServerGroup where
  toJSON DescribeGameServerGroup' {..} =
    object
      ( catMaybes
          [ Just
              ("GameServerGroupName" .= _dgsgGameServerGroupName)
          ]
      )

instance ToPath DescribeGameServerGroup where
  toPath = const "/"

instance ToQuery DescribeGameServerGroup where
  toQuery = const mempty

-- | /See:/ 'describeGameServerGroupResponse' smart constructor.
data DescribeGameServerGroupResponse = DescribeGameServerGroupResponse'
  { _dgsgrgrsGameServerGroup ::
      !( Maybe
           GameServerGroup
       ),
    _dgsgrgrsResponseStatus ::
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

-- | Creates a value of 'DescribeGameServerGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsgrgrsGameServerGroup' - An object with the property settings for the requested game server group resource.
--
-- * 'dgsgrgrsResponseStatus' - -- | The response status code.
describeGameServerGroupResponse ::
  -- | 'dgsgrgrsResponseStatus'
  Int ->
  DescribeGameServerGroupResponse
describeGameServerGroupResponse pResponseStatus_ =
  DescribeGameServerGroupResponse'
    { _dgsgrgrsGameServerGroup =
        Nothing,
      _dgsgrgrsResponseStatus = pResponseStatus_
    }

-- | An object with the property settings for the requested game server group resource.
dgsgrgrsGameServerGroup :: Lens' DescribeGameServerGroupResponse (Maybe GameServerGroup)
dgsgrgrsGameServerGroup = lens _dgsgrgrsGameServerGroup (\s a -> s {_dgsgrgrsGameServerGroup = a})

-- | -- | The response status code.
dgsgrgrsResponseStatus :: Lens' DescribeGameServerGroupResponse Int
dgsgrgrsResponseStatus = lens _dgsgrgrsResponseStatus (\s a -> s {_dgsgrgrsResponseStatus = a})

instance NFData DescribeGameServerGroupResponse
