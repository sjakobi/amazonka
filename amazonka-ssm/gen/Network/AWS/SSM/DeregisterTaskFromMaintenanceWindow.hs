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
-- Module      : Network.AWS.SSM.DeregisterTaskFromMaintenanceWindow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a task from a maintenance window.
module Network.AWS.SSM.DeregisterTaskFromMaintenanceWindow
  ( -- * Creating a Request
    deregisterTaskFromMaintenanceWindow,
    DeregisterTaskFromMaintenanceWindow,

    -- * Request Lenses
    dWindowId,
    dWindowTaskId,

    -- * Destructuring the Response
    deregisterTaskFromMaintenanceWindowResponse,
    DeregisterTaskFromMaintenanceWindowResponse,

    -- * Response Lenses
    dtfmwrrsWindowTaskId,
    dtfmwrrsWindowId,
    dtfmwrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deregisterTaskFromMaintenanceWindow' smart constructor.
data DeregisterTaskFromMaintenanceWindow = DeregisterTaskFromMaintenanceWindow'
  { _dWindowId ::
      !Text,
    _dWindowTaskId ::
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

-- | Creates a value of 'DeregisterTaskFromMaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dWindowId' - The ID of the maintenance window the task should be removed from.
--
-- * 'dWindowTaskId' - The ID of the task to remove from the maintenance window.
deregisterTaskFromMaintenanceWindow ::
  -- | 'dWindowId'
  Text ->
  -- | 'dWindowTaskId'
  Text ->
  DeregisterTaskFromMaintenanceWindow
deregisterTaskFromMaintenanceWindow
  pWindowId_
  pWindowTaskId_ =
    DeregisterTaskFromMaintenanceWindow'
      { _dWindowId =
          pWindowId_,
        _dWindowTaskId = pWindowTaskId_
      }

-- | The ID of the maintenance window the task should be removed from.
dWindowId :: Lens' DeregisterTaskFromMaintenanceWindow Text
dWindowId = lens _dWindowId (\s a -> s {_dWindowId = a})

-- | The ID of the task to remove from the maintenance window.
dWindowTaskId :: Lens' DeregisterTaskFromMaintenanceWindow Text
dWindowTaskId = lens _dWindowTaskId (\s a -> s {_dWindowTaskId = a})

instance
  AWSRequest
    DeregisterTaskFromMaintenanceWindow
  where
  type
    Rs DeregisterTaskFromMaintenanceWindow =
      DeregisterTaskFromMaintenanceWindowResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DeregisterTaskFromMaintenanceWindowResponse'
            <$> (x .?> "WindowTaskId")
            <*> (x .?> "WindowId")
            <*> (pure (fromEnum s))
      )

instance Hashable DeregisterTaskFromMaintenanceWindow

instance NFData DeregisterTaskFromMaintenanceWindow

instance
  ToHeaders
    DeregisterTaskFromMaintenanceWindow
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DeregisterTaskFromMaintenanceWindow" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeregisterTaskFromMaintenanceWindow where
  toJSON DeregisterTaskFromMaintenanceWindow' {..} =
    object
      ( catMaybes
          [ Just ("WindowId" .= _dWindowId),
            Just ("WindowTaskId" .= _dWindowTaskId)
          ]
      )

instance ToPath DeregisterTaskFromMaintenanceWindow where
  toPath = const "/"

instance ToQuery DeregisterTaskFromMaintenanceWindow where
  toQuery = const mempty

-- | /See:/ 'deregisterTaskFromMaintenanceWindowResponse' smart constructor.
data DeregisterTaskFromMaintenanceWindowResponse = DeregisterTaskFromMaintenanceWindowResponse'
  { _dtfmwrrsWindowTaskId ::
      !( Maybe
           Text
       ),
    _dtfmwrrsWindowId ::
      !( Maybe
           Text
       ),
    _dtfmwrrsResponseStatus ::
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

-- | Creates a value of 'DeregisterTaskFromMaintenanceWindowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtfmwrrsWindowTaskId' - The ID of the task removed from the maintenance window.
--
-- * 'dtfmwrrsWindowId' - The ID of the maintenance window the task was removed from.
--
-- * 'dtfmwrrsResponseStatus' - -- | The response status code.
deregisterTaskFromMaintenanceWindowResponse ::
  -- | 'dtfmwrrsResponseStatus'
  Int ->
  DeregisterTaskFromMaintenanceWindowResponse
deregisterTaskFromMaintenanceWindowResponse
  pResponseStatus_ =
    DeregisterTaskFromMaintenanceWindowResponse'
      { _dtfmwrrsWindowTaskId =
          Nothing,
        _dtfmwrrsWindowId = Nothing,
        _dtfmwrrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the task removed from the maintenance window.
dtfmwrrsWindowTaskId :: Lens' DeregisterTaskFromMaintenanceWindowResponse (Maybe Text)
dtfmwrrsWindowTaskId = lens _dtfmwrrsWindowTaskId (\s a -> s {_dtfmwrrsWindowTaskId = a})

-- | The ID of the maintenance window the task was removed from.
dtfmwrrsWindowId :: Lens' DeregisterTaskFromMaintenanceWindowResponse (Maybe Text)
dtfmwrrsWindowId = lens _dtfmwrrsWindowId (\s a -> s {_dtfmwrrsWindowId = a})

-- | -- | The response status code.
dtfmwrrsResponseStatus :: Lens' DeregisterTaskFromMaintenanceWindowResponse Int
dtfmwrrsResponseStatus = lens _dtfmwrrsResponseStatus (\s a -> s {_dtfmwrrsResponseStatus = a})

instance
  NFData
    DeregisterTaskFromMaintenanceWindowResponse
