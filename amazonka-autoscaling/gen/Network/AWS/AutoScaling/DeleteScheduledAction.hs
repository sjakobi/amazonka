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
-- Module      : Network.AWS.AutoScaling.DeleteScheduledAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified scheduled action.
module Network.AWS.AutoScaling.DeleteScheduledAction
  ( -- * Creating a Request
    deleteScheduledAction,
    DeleteScheduledAction,

    -- * Request Lenses
    dAutoScalingGroupName,
    dScheduledActionName,

    -- * Destructuring the Response
    deleteScheduledActionResponse,
    DeleteScheduledActionResponse,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteScheduledAction' smart constructor.
data DeleteScheduledAction = DeleteScheduledAction'
  { _dAutoScalingGroupName ::
      !Text,
    _dScheduledActionName ::
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

-- | Creates a value of 'DeleteScheduledAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAutoScalingGroupName' - The name of the Auto Scaling group.
--
-- * 'dScheduledActionName' - The name of the action to delete.
deleteScheduledAction ::
  -- | 'dAutoScalingGroupName'
  Text ->
  -- | 'dScheduledActionName'
  Text ->
  DeleteScheduledAction
deleteScheduledAction
  pAutoScalingGroupName_
  pScheduledActionName_ =
    DeleteScheduledAction'
      { _dAutoScalingGroupName =
          pAutoScalingGroupName_,
        _dScheduledActionName = pScheduledActionName_
      }

-- | The name of the Auto Scaling group.
dAutoScalingGroupName :: Lens' DeleteScheduledAction Text
dAutoScalingGroupName = lens _dAutoScalingGroupName (\s a -> s {_dAutoScalingGroupName = a})

-- | The name of the action to delete.
dScheduledActionName :: Lens' DeleteScheduledAction Text
dScheduledActionName = lens _dScheduledActionName (\s a -> s {_dScheduledActionName = a})

instance AWSRequest DeleteScheduledAction where
  type
    Rs DeleteScheduledAction =
      DeleteScheduledActionResponse
  request = postQuery autoScaling
  response = receiveNull DeleteScheduledActionResponse'

instance Hashable DeleteScheduledAction

instance NFData DeleteScheduledAction

instance ToHeaders DeleteScheduledAction where
  toHeaders = const mempty

instance ToPath DeleteScheduledAction where
  toPath = const "/"

instance ToQuery DeleteScheduledAction where
  toQuery DeleteScheduledAction' {..} =
    mconcat
      [ "Action" =: ("DeleteScheduledAction" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "AutoScalingGroupName" =: _dAutoScalingGroupName,
        "ScheduledActionName" =: _dScheduledActionName
      ]

-- | /See:/ 'deleteScheduledActionResponse' smart constructor.
data DeleteScheduledActionResponse = DeleteScheduledActionResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteScheduledActionResponse' with the minimum fields required to make a request.
deleteScheduledActionResponse ::
  DeleteScheduledActionResponse
deleteScheduledActionResponse =
  DeleteScheduledActionResponse'

instance NFData DeleteScheduledActionResponse
