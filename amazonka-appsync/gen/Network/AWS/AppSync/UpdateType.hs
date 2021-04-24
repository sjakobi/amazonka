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
-- Module      : Network.AWS.AppSync.UpdateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a @Type@ object.
module Network.AWS.AppSync.UpdateType
  ( -- * Creating a Request
    updateType,
    UpdateType,

    -- * Request Lenses
    utDefinition,
    utApiId,
    utTypeName,
    utFormat,

    -- * Destructuring the Response
    updateTypeResponse,
    UpdateTypeResponse,

    -- * Response Lenses
    utrrsType,
    utrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateType' smart constructor.
data UpdateType = UpdateType'
  { _utDefinition ::
      !(Maybe Text),
    _utApiId :: !Text,
    _utTypeName :: !Text,
    _utFormat :: !TypeDefinitionFormat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utDefinition' - The new definition.
--
-- * 'utApiId' - The API ID.
--
-- * 'utTypeName' - The new type name.
--
-- * 'utFormat' - The new type format: SDL or JSON.
updateType ::
  -- | 'utApiId'
  Text ->
  -- | 'utTypeName'
  Text ->
  -- | 'utFormat'
  TypeDefinitionFormat ->
  UpdateType
updateType pApiId_ pTypeName_ pFormat_ =
  UpdateType'
    { _utDefinition = Nothing,
      _utApiId = pApiId_,
      _utTypeName = pTypeName_,
      _utFormat = pFormat_
    }

-- | The new definition.
utDefinition :: Lens' UpdateType (Maybe Text)
utDefinition = lens _utDefinition (\s a -> s {_utDefinition = a})

-- | The API ID.
utApiId :: Lens' UpdateType Text
utApiId = lens _utApiId (\s a -> s {_utApiId = a})

-- | The new type name.
utTypeName :: Lens' UpdateType Text
utTypeName = lens _utTypeName (\s a -> s {_utTypeName = a})

-- | The new type format: SDL or JSON.
utFormat :: Lens' UpdateType TypeDefinitionFormat
utFormat = lens _utFormat (\s a -> s {_utFormat = a})

instance AWSRequest UpdateType where
  type Rs UpdateType = UpdateTypeResponse
  request = postJSON appSync
  response =
    receiveJSON
      ( \s h x ->
          UpdateTypeResponse'
            <$> (x .?> "type") <*> (pure (fromEnum s))
      )

instance Hashable UpdateType

instance NFData UpdateType

instance ToHeaders UpdateType where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateType where
  toJSON UpdateType' {..} =
    object
      ( catMaybes
          [ ("definition" .=) <$> _utDefinition,
            Just ("format" .= _utFormat)
          ]
      )

instance ToPath UpdateType where
  toPath UpdateType' {..} =
    mconcat
      [ "/v1/apis/",
        toBS _utApiId,
        "/types/",
        toBS _utTypeName
      ]

instance ToQuery UpdateType where
  toQuery = const mempty

-- | /See:/ 'updateTypeResponse' smart constructor.
data UpdateTypeResponse = UpdateTypeResponse'
  { _utrrsType ::
      !(Maybe Type),
    _utrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utrrsType' - The updated @Type@ object.
--
-- * 'utrrsResponseStatus' - -- | The response status code.
updateTypeResponse ::
  -- | 'utrrsResponseStatus'
  Int ->
  UpdateTypeResponse
updateTypeResponse pResponseStatus_ =
  UpdateTypeResponse'
    { _utrrsType = Nothing,
      _utrrsResponseStatus = pResponseStatus_
    }

-- | The updated @Type@ object.
utrrsType :: Lens' UpdateTypeResponse (Maybe Type)
utrrsType = lens _utrrsType (\s a -> s {_utrrsType = a})

-- | -- | The response status code.
utrrsResponseStatus :: Lens' UpdateTypeResponse Int
utrrsResponseStatus = lens _utrrsResponseStatus (\s a -> s {_utrrsResponseStatus = a})

instance NFData UpdateTypeResponse
