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
-- Module      : Network.AWS.Greengrass.DeleteDeviceDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a device definition.
module Network.AWS.Greengrass.DeleteDeviceDefinition
  ( -- * Creating a Request
    deleteDeviceDefinition,
    DeleteDeviceDefinition,

    -- * Request Lenses
    dddDeviceDefinitionId,

    -- * Destructuring the Response
    deleteDeviceDefinitionResponse,
    DeleteDeviceDefinitionResponse,

    -- * Response Lenses
    dddrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDeviceDefinition' smart constructor.
newtype DeleteDeviceDefinition = DeleteDeviceDefinition'
  { _dddDeviceDefinitionId ::
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

-- | Creates a value of 'DeleteDeviceDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddDeviceDefinitionId' - The ID of the device definition.
deleteDeviceDefinition ::
  -- | 'dddDeviceDefinitionId'
  Text ->
  DeleteDeviceDefinition
deleteDeviceDefinition pDeviceDefinitionId_ =
  DeleteDeviceDefinition'
    { _dddDeviceDefinitionId =
        pDeviceDefinitionId_
    }

-- | The ID of the device definition.
dddDeviceDefinitionId :: Lens' DeleteDeviceDefinition Text
dddDeviceDefinitionId = lens _dddDeviceDefinitionId (\s a -> s {_dddDeviceDefinitionId = a})

instance AWSRequest DeleteDeviceDefinition where
  type
    Rs DeleteDeviceDefinition =
      DeleteDeviceDefinitionResponse
  request = delete greengrass
  response =
    receiveEmpty
      ( \s h x ->
          DeleteDeviceDefinitionResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteDeviceDefinition

instance NFData DeleteDeviceDefinition

instance ToHeaders DeleteDeviceDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteDeviceDefinition where
  toPath DeleteDeviceDefinition' {..} =
    mconcat
      [ "/greengrass/definition/devices/",
        toBS _dddDeviceDefinitionId
      ]

instance ToQuery DeleteDeviceDefinition where
  toQuery = const mempty

-- | /See:/ 'deleteDeviceDefinitionResponse' smart constructor.
newtype DeleteDeviceDefinitionResponse = DeleteDeviceDefinitionResponse'
  { _dddrrsResponseStatus ::
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

-- | Creates a value of 'DeleteDeviceDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dddrrsResponseStatus' - -- | The response status code.
deleteDeviceDefinitionResponse ::
  -- | 'dddrrsResponseStatus'
  Int ->
  DeleteDeviceDefinitionResponse
deleteDeviceDefinitionResponse pResponseStatus_ =
  DeleteDeviceDefinitionResponse'
    { _dddrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dddrrsResponseStatus :: Lens' DeleteDeviceDefinitionResponse Int
dddrrsResponseStatus = lens _dddrrsResponseStatus (\s a -> s {_dddrrsResponseStatus = a})

instance NFData DeleteDeviceDefinitionResponse
