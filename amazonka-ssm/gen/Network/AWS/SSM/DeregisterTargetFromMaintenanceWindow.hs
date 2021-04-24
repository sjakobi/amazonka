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
-- Module      : Network.AWS.SSM.DeregisterTargetFromMaintenanceWindow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a target from a maintenance window.
module Network.AWS.SSM.DeregisterTargetFromMaintenanceWindow
  ( -- * Creating a Request
    deregisterTargetFromMaintenanceWindow,
    DeregisterTargetFromMaintenanceWindow,

    -- * Request Lenses
    dtfmwSafe,
    dtfmwWindowId,
    dtfmwWindowTargetId,

    -- * Destructuring the Response
    deregisterTargetFromMaintenanceWindowResponse,
    DeregisterTargetFromMaintenanceWindowResponse,

    -- * Response Lenses
    derrsWindowTargetId,
    derrsWindowId,
    derrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deregisterTargetFromMaintenanceWindow' smart constructor.
data DeregisterTargetFromMaintenanceWindow = DeregisterTargetFromMaintenanceWindow'
  { _dtfmwSafe ::
      !( Maybe
           Bool
       ),
    _dtfmwWindowId ::
      !Text,
    _dtfmwWindowTargetId ::
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

-- | Creates a value of 'DeregisterTargetFromMaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtfmwSafe' - The system checks if the target is being referenced by a task. If the target is being referenced, the system returns an error and does not deregister the target from the maintenance window.
--
-- * 'dtfmwWindowId' - The ID of the maintenance window the target should be removed from.
--
-- * 'dtfmwWindowTargetId' - The ID of the target definition to remove.
deregisterTargetFromMaintenanceWindow ::
  -- | 'dtfmwWindowId'
  Text ->
  -- | 'dtfmwWindowTargetId'
  Text ->
  DeregisterTargetFromMaintenanceWindow
deregisterTargetFromMaintenanceWindow
  pWindowId_
  pWindowTargetId_ =
    DeregisterTargetFromMaintenanceWindow'
      { _dtfmwSafe =
          Nothing,
        _dtfmwWindowId = pWindowId_,
        _dtfmwWindowTargetId =
          pWindowTargetId_
      }

-- | The system checks if the target is being referenced by a task. If the target is being referenced, the system returns an error and does not deregister the target from the maintenance window.
dtfmwSafe :: Lens' DeregisterTargetFromMaintenanceWindow (Maybe Bool)
dtfmwSafe = lens _dtfmwSafe (\s a -> s {_dtfmwSafe = a})

-- | The ID of the maintenance window the target should be removed from.
dtfmwWindowId :: Lens' DeregisterTargetFromMaintenanceWindow Text
dtfmwWindowId = lens _dtfmwWindowId (\s a -> s {_dtfmwWindowId = a})

-- | The ID of the target definition to remove.
dtfmwWindowTargetId :: Lens' DeregisterTargetFromMaintenanceWindow Text
dtfmwWindowTargetId = lens _dtfmwWindowTargetId (\s a -> s {_dtfmwWindowTargetId = a})

instance
  AWSRequest
    DeregisterTargetFromMaintenanceWindow
  where
  type
    Rs DeregisterTargetFromMaintenanceWindow =
      DeregisterTargetFromMaintenanceWindowResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DeregisterTargetFromMaintenanceWindowResponse'
            <$> (x .?> "WindowTargetId")
            <*> (x .?> "WindowId")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DeregisterTargetFromMaintenanceWindow

instance NFData DeregisterTargetFromMaintenanceWindow

instance
  ToHeaders
    DeregisterTargetFromMaintenanceWindow
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DeregisterTargetFromMaintenanceWindow" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeregisterTargetFromMaintenanceWindow where
  toJSON DeregisterTargetFromMaintenanceWindow' {..} =
    object
      ( catMaybes
          [ ("Safe" .=) <$> _dtfmwSafe,
            Just ("WindowId" .= _dtfmwWindowId),
            Just ("WindowTargetId" .= _dtfmwWindowTargetId)
          ]
      )

instance ToPath DeregisterTargetFromMaintenanceWindow where
  toPath = const "/"

instance
  ToQuery
    DeregisterTargetFromMaintenanceWindow
  where
  toQuery = const mempty

-- | /See:/ 'deregisterTargetFromMaintenanceWindowResponse' smart constructor.
data DeregisterTargetFromMaintenanceWindowResponse = DeregisterTargetFromMaintenanceWindowResponse'
  { _derrsWindowTargetId ::
      !( Maybe
           Text
       ),
    _derrsWindowId ::
      !( Maybe
           Text
       ),
    _derrsResponseStatus ::
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

-- | Creates a value of 'DeregisterTargetFromMaintenanceWindowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsWindowTargetId' - The ID of the removed target definition.
--
-- * 'derrsWindowId' - The ID of the maintenance window the target was removed from.
--
-- * 'derrsResponseStatus' - -- | The response status code.
deregisterTargetFromMaintenanceWindowResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DeregisterTargetFromMaintenanceWindowResponse
deregisterTargetFromMaintenanceWindowResponse
  pResponseStatus_ =
    DeregisterTargetFromMaintenanceWindowResponse'
      { _derrsWindowTargetId =
          Nothing,
        _derrsWindowId = Nothing,
        _derrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the removed target definition.
derrsWindowTargetId :: Lens' DeregisterTargetFromMaintenanceWindowResponse (Maybe Text)
derrsWindowTargetId = lens _derrsWindowTargetId (\s a -> s {_derrsWindowTargetId = a})

-- | The ID of the maintenance window the target was removed from.
derrsWindowId :: Lens' DeregisterTargetFromMaintenanceWindowResponse (Maybe Text)
derrsWindowId = lens _derrsWindowId (\s a -> s {_derrsWindowId = a})

-- | -- | The response status code.
derrsResponseStatus :: Lens' DeregisterTargetFromMaintenanceWindowResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance
  NFData
    DeregisterTargetFromMaintenanceWindowResponse
