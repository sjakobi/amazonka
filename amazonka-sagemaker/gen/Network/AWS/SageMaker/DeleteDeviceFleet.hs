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
-- Module      : Network.AWS.SageMaker.DeleteDeviceFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a fleet.
module Network.AWS.SageMaker.DeleteDeviceFleet
  ( -- * Creating a Request
    deleteDeviceFleet,
    DeleteDeviceFleet,

    -- * Request Lenses
    ddfDeviceFleetName,

    -- * Destructuring the Response
    deleteDeviceFleetResponse,
    DeleteDeviceFleetResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteDeviceFleet' smart constructor.
newtype DeleteDeviceFleet = DeleteDeviceFleet'
  { _ddfDeviceFleetName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDeviceFleet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddfDeviceFleetName' - The name of the fleet to delete.
deleteDeviceFleet ::
  -- | 'ddfDeviceFleetName'
  Text ->
  DeleteDeviceFleet
deleteDeviceFleet pDeviceFleetName_ =
  DeleteDeviceFleet'
    { _ddfDeviceFleetName =
        pDeviceFleetName_
    }

-- | The name of the fleet to delete.
ddfDeviceFleetName :: Lens' DeleteDeviceFleet Text
ddfDeviceFleetName = lens _ddfDeviceFleetName (\s a -> s {_ddfDeviceFleetName = a})

instance AWSRequest DeleteDeviceFleet where
  type Rs DeleteDeviceFleet = DeleteDeviceFleetResponse
  request = postJSON sageMaker
  response = receiveNull DeleteDeviceFleetResponse'

instance Hashable DeleteDeviceFleet

instance NFData DeleteDeviceFleet

instance ToHeaders DeleteDeviceFleet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteDeviceFleet" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteDeviceFleet where
  toJSON DeleteDeviceFleet' {..} =
    object
      ( catMaybes
          [Just ("DeviceFleetName" .= _ddfDeviceFleetName)]
      )

instance ToPath DeleteDeviceFleet where
  toPath = const "/"

instance ToQuery DeleteDeviceFleet where
  toQuery = const mempty

-- | /See:/ 'deleteDeviceFleetResponse' smart constructor.
data DeleteDeviceFleetResponse = DeleteDeviceFleetResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteDeviceFleetResponse' with the minimum fields required to make a request.
deleteDeviceFleetResponse ::
  DeleteDeviceFleetResponse
deleteDeviceFleetResponse =
  DeleteDeviceFleetResponse'

instance NFData DeleteDeviceFleetResponse
