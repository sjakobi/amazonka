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
-- Module      : Network.AWS.AutoScaling.DeleteLifecycleHook
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified lifecycle hook.
--
--
-- If there are any outstanding lifecycle actions, they are completed first (@ABANDON@ for launching instances, @CONTINUE@ for terminating instances).
module Network.AWS.AutoScaling.DeleteLifecycleHook
  ( -- * Creating a Request
    deleteLifecycleHook,
    DeleteLifecycleHook,

    -- * Request Lenses
    dlhLifecycleHookName,
    dlhAutoScalingGroupName,

    -- * Destructuring the Response
    deleteLifecycleHookResponse,
    DeleteLifecycleHookResponse,

    -- * Response Lenses
    dlhrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteLifecycleHook' smart constructor.
data DeleteLifecycleHook = DeleteLifecycleHook'
  { _dlhLifecycleHookName ::
      !Text,
    _dlhAutoScalingGroupName ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteLifecycleHook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlhLifecycleHookName' - The name of the lifecycle hook.
--
-- * 'dlhAutoScalingGroupName' - The name of the Auto Scaling group.
deleteLifecycleHook ::
  -- | 'dlhLifecycleHookName'
  Text ->
  -- | 'dlhAutoScalingGroupName'
  Text ->
  DeleteLifecycleHook
deleteLifecycleHook
  pLifecycleHookName_
  pAutoScalingGroupName_ =
    DeleteLifecycleHook'
      { _dlhLifecycleHookName =
          pLifecycleHookName_,
        _dlhAutoScalingGroupName = pAutoScalingGroupName_
      }

-- | The name of the lifecycle hook.
dlhLifecycleHookName :: Lens' DeleteLifecycleHook Text
dlhLifecycleHookName = lens _dlhLifecycleHookName (\s a -> s {_dlhLifecycleHookName = a})

-- | The name of the Auto Scaling group.
dlhAutoScalingGroupName :: Lens' DeleteLifecycleHook Text
dlhAutoScalingGroupName = lens _dlhAutoScalingGroupName (\s a -> s {_dlhAutoScalingGroupName = a})

instance AWSRequest DeleteLifecycleHook where
  type
    Rs DeleteLifecycleHook =
      DeleteLifecycleHookResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DeleteLifecycleHookResult"
      ( \s h x ->
          DeleteLifecycleHookResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteLifecycleHook

instance NFData DeleteLifecycleHook

instance ToHeaders DeleteLifecycleHook where
  toHeaders = const mempty

instance ToPath DeleteLifecycleHook where
  toPath = const "/"

instance ToQuery DeleteLifecycleHook where
  toQuery DeleteLifecycleHook' {..} =
    mconcat
      [ "Action" =: ("DeleteLifecycleHook" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "LifecycleHookName" =: _dlhLifecycleHookName,
        "AutoScalingGroupName" =: _dlhAutoScalingGroupName
      ]

-- | /See:/ 'deleteLifecycleHookResponse' smart constructor.
newtype DeleteLifecycleHookResponse = DeleteLifecycleHookResponse'
  { _dlhrrsResponseStatus ::
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

-- | Creates a value of 'DeleteLifecycleHookResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlhrrsResponseStatus' - -- | The response status code.
deleteLifecycleHookResponse ::
  -- | 'dlhrrsResponseStatus'
  Int ->
  DeleteLifecycleHookResponse
deleteLifecycleHookResponse pResponseStatus_ =
  DeleteLifecycleHookResponse'
    { _dlhrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dlhrrsResponseStatus :: Lens' DeleteLifecycleHookResponse Int
dlhrrsResponseStatus = lens _dlhrrsResponseStatus (\s a -> s {_dlhrrsResponseStatus = a})

instance NFData DeleteLifecycleHookResponse
