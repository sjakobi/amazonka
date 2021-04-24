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
-- Module      : Network.AWS.Greengrass.DeleteResourceDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a resource definition.
module Network.AWS.Greengrass.DeleteResourceDefinition
  ( -- * Creating a Request
    deleteResourceDefinition,
    DeleteResourceDefinition,

    -- * Request Lenses
    drdResourceDefinitionId,

    -- * Destructuring the Response
    deleteResourceDefinitionResponse,
    DeleteResourceDefinitionResponse,

    -- * Response Lenses
    drdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteResourceDefinition' smart constructor.
newtype DeleteResourceDefinition = DeleteResourceDefinition'
  { _drdResourceDefinitionId ::
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

-- | Creates a value of 'DeleteResourceDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drdResourceDefinitionId' - The ID of the resource definition.
deleteResourceDefinition ::
  -- | 'drdResourceDefinitionId'
  Text ->
  DeleteResourceDefinition
deleteResourceDefinition pResourceDefinitionId_ =
  DeleteResourceDefinition'
    { _drdResourceDefinitionId =
        pResourceDefinitionId_
    }

-- | The ID of the resource definition.
drdResourceDefinitionId :: Lens' DeleteResourceDefinition Text
drdResourceDefinitionId = lens _drdResourceDefinitionId (\s a -> s {_drdResourceDefinitionId = a})

instance AWSRequest DeleteResourceDefinition where
  type
    Rs DeleteResourceDefinition =
      DeleteResourceDefinitionResponse
  request = delete greengrass
  response =
    receiveEmpty
      ( \s h x ->
          DeleteResourceDefinitionResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteResourceDefinition

instance NFData DeleteResourceDefinition

instance ToHeaders DeleteResourceDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteResourceDefinition where
  toPath DeleteResourceDefinition' {..} =
    mconcat
      [ "/greengrass/definition/resources/",
        toBS _drdResourceDefinitionId
      ]

instance ToQuery DeleteResourceDefinition where
  toQuery = const mempty

-- | /See:/ 'deleteResourceDefinitionResponse' smart constructor.
newtype DeleteResourceDefinitionResponse = DeleteResourceDefinitionResponse'
  { _drdrrsResponseStatus ::
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

-- | Creates a value of 'DeleteResourceDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drdrrsResponseStatus' - -- | The response status code.
deleteResourceDefinitionResponse ::
  -- | 'drdrrsResponseStatus'
  Int ->
  DeleteResourceDefinitionResponse
deleteResourceDefinitionResponse pResponseStatus_ =
  DeleteResourceDefinitionResponse'
    { _drdrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drdrrsResponseStatus :: Lens' DeleteResourceDefinitionResponse Int
drdrrsResponseStatus = lens _drdrrsResponseStatus (\s a -> s {_drdrrsResponseStatus = a})

instance NFData DeleteResourceDefinitionResponse
