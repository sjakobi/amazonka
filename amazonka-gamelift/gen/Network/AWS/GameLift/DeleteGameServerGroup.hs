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
-- Module      : Network.AWS.GameLift.DeleteGameServerGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __This operation is used with the Amazon GameLift FleetIQ solution and game server groups.__
--
--
-- Terminates a game server group and permanently deletes the game server group record. You have several options for how these resources are impacted when deleting the game server group. Depending on the type of delete operation selected, this operation might affect these resources:
--
--     * The game server group
--
--     * The corresponding Auto Scaling group
--
--     * All game servers that are currently running in the group
--
--
--
-- To delete a game server group, identify the game server group to delete and specify the type of delete operation to initiate. Game server groups can only be deleted if they are in @ACTIVE@ or @ERROR@ status.
--
-- If the delete request is successful, a series of operations are kicked off. The game server group status is changed to @DELETE_SCHEDULED@ , which prevents new game servers from being registered and stops automatic scaling activity. Once all game servers in the game server group are deregistered, GameLift FleetIQ can begin deleting resources. If any of the delete operations fail, the game server group is placed in @ERROR@ status.
--
-- GameLift FleetIQ emits delete events to Amazon CloudWatch.
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
module Network.AWS.GameLift.DeleteGameServerGroup
  ( -- * Creating a Request
    deleteGameServerGroup,
    DeleteGameServerGroup,

    -- * Request Lenses
    delDeleteOption,
    delGameServerGroupName,

    -- * Destructuring the Response
    deleteGameServerGroupResponse,
    DeleteGameServerGroupResponse,

    -- * Response Lenses
    dgsgrrsGameServerGroup,
    dgsgrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteGameServerGroup' smart constructor.
data DeleteGameServerGroup = DeleteGameServerGroup'
  { _delDeleteOption ::
      !( Maybe
           GameServerGroupDeleteOption
       ),
    _delGameServerGroupName ::
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

-- | Creates a value of 'DeleteGameServerGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delDeleteOption' - The type of delete to perform. Options include the following:     * @SAFE_DELETE@ – (default) Terminates the game server group and EC2 Auto Scaling group only when it has no game servers that are in @UTILIZED@ status.     * @FORCE_DELETE@ – Terminates the game server group, including all active game servers regardless of their utilization status, and the EC2 Auto Scaling group.      * @RETAIN@ – Does a safe delete of the game server group but retains the EC2 Auto Scaling group as is.
--
-- * 'delGameServerGroupName' - A unique identifier for the game server group. Use either the 'GameServerGroup' name or ARN value.
deleteGameServerGroup ::
  -- | 'delGameServerGroupName'
  Text ->
  DeleteGameServerGroup
deleteGameServerGroup pGameServerGroupName_ =
  DeleteGameServerGroup'
    { _delDeleteOption = Nothing,
      _delGameServerGroupName = pGameServerGroupName_
    }

-- | The type of delete to perform. Options include the following:     * @SAFE_DELETE@ – (default) Terminates the game server group and EC2 Auto Scaling group only when it has no game servers that are in @UTILIZED@ status.     * @FORCE_DELETE@ – Terminates the game server group, including all active game servers regardless of their utilization status, and the EC2 Auto Scaling group.      * @RETAIN@ – Does a safe delete of the game server group but retains the EC2 Auto Scaling group as is.
delDeleteOption :: Lens' DeleteGameServerGroup (Maybe GameServerGroupDeleteOption)
delDeleteOption = lens _delDeleteOption (\s a -> s {_delDeleteOption = a})

-- | A unique identifier for the game server group. Use either the 'GameServerGroup' name or ARN value.
delGameServerGroupName :: Lens' DeleteGameServerGroup Text
delGameServerGroupName = lens _delGameServerGroupName (\s a -> s {_delGameServerGroupName = a})

instance AWSRequest DeleteGameServerGroup where
  type
    Rs DeleteGameServerGroup =
      DeleteGameServerGroupResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DeleteGameServerGroupResponse'
            <$> (x .?> "GameServerGroup") <*> (pure (fromEnum s))
      )

instance Hashable DeleteGameServerGroup

instance NFData DeleteGameServerGroup

instance ToHeaders DeleteGameServerGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DeleteGameServerGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteGameServerGroup where
  toJSON DeleteGameServerGroup' {..} =
    object
      ( catMaybes
          [ ("DeleteOption" .=) <$> _delDeleteOption,
            Just
              ("GameServerGroupName" .= _delGameServerGroupName)
          ]
      )

instance ToPath DeleteGameServerGroup where
  toPath = const "/"

instance ToQuery DeleteGameServerGroup where
  toQuery = const mempty

-- | /See:/ 'deleteGameServerGroupResponse' smart constructor.
data DeleteGameServerGroupResponse = DeleteGameServerGroupResponse'
  { _dgsgrrsGameServerGroup ::
      !( Maybe
           GameServerGroup
       ),
    _dgsgrrsResponseStatus ::
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

-- | Creates a value of 'DeleteGameServerGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsgrrsGameServerGroup' - An object that describes the deleted game server group resource, with status updated to @DELETE_SCHEDULED@ .
--
-- * 'dgsgrrsResponseStatus' - -- | The response status code.
deleteGameServerGroupResponse ::
  -- | 'dgsgrrsResponseStatus'
  Int ->
  DeleteGameServerGroupResponse
deleteGameServerGroupResponse pResponseStatus_ =
  DeleteGameServerGroupResponse'
    { _dgsgrrsGameServerGroup =
        Nothing,
      _dgsgrrsResponseStatus = pResponseStatus_
    }

-- | An object that describes the deleted game server group resource, with status updated to @DELETE_SCHEDULED@ .
dgsgrrsGameServerGroup :: Lens' DeleteGameServerGroupResponse (Maybe GameServerGroup)
dgsgrrsGameServerGroup = lens _dgsgrrsGameServerGroup (\s a -> s {_dgsgrrsGameServerGroup = a})

-- | -- | The response status code.
dgsgrrsResponseStatus :: Lens' DeleteGameServerGroupResponse Int
dgsgrrsResponseStatus = lens _dgsgrrsResponseStatus (\s a -> s {_dgsgrrsResponseStatus = a})

instance NFData DeleteGameServerGroupResponse
