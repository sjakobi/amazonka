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
-- Module      : Network.AWS.Greengrass.UpdateCoreDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a core definition.
module Network.AWS.Greengrass.UpdateCoreDefinition
  ( -- * Creating a Request
    updateCoreDefinition,
    UpdateCoreDefinition,

    -- * Request Lenses
    ucdName,
    ucdCoreDefinitionId,

    -- * Destructuring the Response
    updateCoreDefinitionResponse,
    UpdateCoreDefinitionResponse,

    -- * Response Lenses
    ucdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateCoreDefinition' smart constructor.
data UpdateCoreDefinition = UpdateCoreDefinition'
  { _ucdName ::
      !(Maybe Text),
    _ucdCoreDefinitionId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateCoreDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucdName' - The name of the definition.
--
-- * 'ucdCoreDefinitionId' - The ID of the core definition.
updateCoreDefinition ::
  -- | 'ucdCoreDefinitionId'
  Text ->
  UpdateCoreDefinition
updateCoreDefinition pCoreDefinitionId_ =
  UpdateCoreDefinition'
    { _ucdName = Nothing,
      _ucdCoreDefinitionId = pCoreDefinitionId_
    }

-- | The name of the definition.
ucdName :: Lens' UpdateCoreDefinition (Maybe Text)
ucdName = lens _ucdName (\s a -> s {_ucdName = a})

-- | The ID of the core definition.
ucdCoreDefinitionId :: Lens' UpdateCoreDefinition Text
ucdCoreDefinitionId = lens _ucdCoreDefinitionId (\s a -> s {_ucdCoreDefinitionId = a})

instance AWSRequest UpdateCoreDefinition where
  type
    Rs UpdateCoreDefinition =
      UpdateCoreDefinitionResponse
  request = putJSON greengrass
  response =
    receiveEmpty
      ( \s h x ->
          UpdateCoreDefinitionResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable UpdateCoreDefinition

instance NFData UpdateCoreDefinition

instance ToHeaders UpdateCoreDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateCoreDefinition where
  toJSON UpdateCoreDefinition' {..} =
    object (catMaybes [("Name" .=) <$> _ucdName])

instance ToPath UpdateCoreDefinition where
  toPath UpdateCoreDefinition' {..} =
    mconcat
      [ "/greengrass/definition/cores/",
        toBS _ucdCoreDefinitionId
      ]

instance ToQuery UpdateCoreDefinition where
  toQuery = const mempty

-- | /See:/ 'updateCoreDefinitionResponse' smart constructor.
newtype UpdateCoreDefinitionResponse = UpdateCoreDefinitionResponse'
  { _ucdrrsResponseStatus ::
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

-- | Creates a value of 'UpdateCoreDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucdrrsResponseStatus' - -- | The response status code.
updateCoreDefinitionResponse ::
  -- | 'ucdrrsResponseStatus'
  Int ->
  UpdateCoreDefinitionResponse
updateCoreDefinitionResponse pResponseStatus_ =
  UpdateCoreDefinitionResponse'
    { _ucdrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ucdrrsResponseStatus :: Lens' UpdateCoreDefinitionResponse Int
ucdrrsResponseStatus = lens _ucdrrsResponseStatus (\s a -> s {_ucdrrsResponseStatus = a})

instance NFData UpdateCoreDefinitionResponse
