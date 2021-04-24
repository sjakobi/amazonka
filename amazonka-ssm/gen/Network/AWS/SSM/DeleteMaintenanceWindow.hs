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
-- Module      : Network.AWS.SSM.DeleteMaintenanceWindow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a maintenance window.
module Network.AWS.SSM.DeleteMaintenanceWindow
  ( -- * Creating a Request
    deleteMaintenanceWindow,
    DeleteMaintenanceWindow,

    -- * Request Lenses
    dmwWindowId,

    -- * Destructuring the Response
    deleteMaintenanceWindowResponse,
    DeleteMaintenanceWindowResponse,

    -- * Response Lenses
    dmwrmrsWindowId,
    dmwrmrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deleteMaintenanceWindow' smart constructor.
newtype DeleteMaintenanceWindow = DeleteMaintenanceWindow'
  { _dmwWindowId ::
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

-- | Creates a value of 'DeleteMaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwWindowId' - The ID of the maintenance window to delete.
deleteMaintenanceWindow ::
  -- | 'dmwWindowId'
  Text ->
  DeleteMaintenanceWindow
deleteMaintenanceWindow pWindowId_ =
  DeleteMaintenanceWindow' {_dmwWindowId = pWindowId_}

-- | The ID of the maintenance window to delete.
dmwWindowId :: Lens' DeleteMaintenanceWindow Text
dmwWindowId = lens _dmwWindowId (\s a -> s {_dmwWindowId = a})

instance AWSRequest DeleteMaintenanceWindow where
  type
    Rs DeleteMaintenanceWindow =
      DeleteMaintenanceWindowResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DeleteMaintenanceWindowResponse'
            <$> (x .?> "WindowId") <*> (pure (fromEnum s))
      )

instance Hashable DeleteMaintenanceWindow

instance NFData DeleteMaintenanceWindow

instance ToHeaders DeleteMaintenanceWindow where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DeleteMaintenanceWindow" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteMaintenanceWindow where
  toJSON DeleteMaintenanceWindow' {..} =
    object
      (catMaybes [Just ("WindowId" .= _dmwWindowId)])

instance ToPath DeleteMaintenanceWindow where
  toPath = const "/"

instance ToQuery DeleteMaintenanceWindow where
  toQuery = const mempty

-- | /See:/ 'deleteMaintenanceWindowResponse' smart constructor.
data DeleteMaintenanceWindowResponse = DeleteMaintenanceWindowResponse'
  { _dmwrmrsWindowId ::
      !( Maybe
           Text
       ),
    _dmwrmrsResponseStatus ::
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

-- | Creates a value of 'DeleteMaintenanceWindowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwrmrsWindowId' - The ID of the deleted maintenance window.
--
-- * 'dmwrmrsResponseStatus' - -- | The response status code.
deleteMaintenanceWindowResponse ::
  -- | 'dmwrmrsResponseStatus'
  Int ->
  DeleteMaintenanceWindowResponse
deleteMaintenanceWindowResponse pResponseStatus_ =
  DeleteMaintenanceWindowResponse'
    { _dmwrmrsWindowId =
        Nothing,
      _dmwrmrsResponseStatus = pResponseStatus_
    }

-- | The ID of the deleted maintenance window.
dmwrmrsWindowId :: Lens' DeleteMaintenanceWindowResponse (Maybe Text)
dmwrmrsWindowId = lens _dmwrmrsWindowId (\s a -> s {_dmwrmrsWindowId = a})

-- | -- | The response status code.
dmwrmrsResponseStatus :: Lens' DeleteMaintenanceWindowResponse Int
dmwrmrsResponseStatus = lens _dmwrmrsResponseStatus (\s a -> s {_dmwrmrsResponseStatus = a})

instance NFData DeleteMaintenanceWindowResponse
