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
-- Module      : Network.AWS.AppSync.CreateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @Type@ object.
module Network.AWS.AppSync.CreateType
  ( -- * Creating a Request
    createType,
    CreateType,

    -- * Request Lenses
    ctApiId,
    ctDefinition,
    ctFormat,

    -- * Destructuring the Response
    createTypeResponse,
    CreateTypeResponse,

    -- * Response Lenses
    ctrrsType,
    ctrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createType' smart constructor.
data CreateType = CreateType'
  { _ctApiId :: !Text,
    _ctDefinition :: !Text,
    _ctFormat :: !TypeDefinitionFormat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctApiId' - The API ID.
--
-- * 'ctDefinition' - The type definition, in GraphQL Schema Definition Language (SDL) format. For more information, see the <http://graphql.org/learn/schema/ GraphQL SDL documentation> .
--
-- * 'ctFormat' - The type format: SDL or JSON.
createType ::
  -- | 'ctApiId'
  Text ->
  -- | 'ctDefinition'
  Text ->
  -- | 'ctFormat'
  TypeDefinitionFormat ->
  CreateType
createType pApiId_ pDefinition_ pFormat_ =
  CreateType'
    { _ctApiId = pApiId_,
      _ctDefinition = pDefinition_,
      _ctFormat = pFormat_
    }

-- | The API ID.
ctApiId :: Lens' CreateType Text
ctApiId = lens _ctApiId (\s a -> s {_ctApiId = a})

-- | The type definition, in GraphQL Schema Definition Language (SDL) format. For more information, see the <http://graphql.org/learn/schema/ GraphQL SDL documentation> .
ctDefinition :: Lens' CreateType Text
ctDefinition = lens _ctDefinition (\s a -> s {_ctDefinition = a})

-- | The type format: SDL or JSON.
ctFormat :: Lens' CreateType TypeDefinitionFormat
ctFormat = lens _ctFormat (\s a -> s {_ctFormat = a})

instance AWSRequest CreateType where
  type Rs CreateType = CreateTypeResponse
  request = postJSON appSync
  response =
    receiveJSON
      ( \s h x ->
          CreateTypeResponse'
            <$> (x .?> "type") <*> (pure (fromEnum s))
      )

instance Hashable CreateType

instance NFData CreateType

instance ToHeaders CreateType where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateType where
  toJSON CreateType' {..} =
    object
      ( catMaybes
          [ Just ("definition" .= _ctDefinition),
            Just ("format" .= _ctFormat)
          ]
      )

instance ToPath CreateType where
  toPath CreateType' {..} =
    mconcat ["/v1/apis/", toBS _ctApiId, "/types"]

instance ToQuery CreateType where
  toQuery = const mempty

-- | /See:/ 'createTypeResponse' smart constructor.
data CreateTypeResponse = CreateTypeResponse'
  { _ctrrsType ::
      !(Maybe Type),
    _ctrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrrsType' - The @Type@ object.
--
-- * 'ctrrsResponseStatus' - -- | The response status code.
createTypeResponse ::
  -- | 'ctrrsResponseStatus'
  Int ->
  CreateTypeResponse
createTypeResponse pResponseStatus_ =
  CreateTypeResponse'
    { _ctrrsType = Nothing,
      _ctrrsResponseStatus = pResponseStatus_
    }

-- | The @Type@ object.
ctrrsType :: Lens' CreateTypeResponse (Maybe Type)
ctrrsType = lens _ctrrsType (\s a -> s {_ctrrsType = a})

-- | -- | The response status code.
ctrrsResponseStatus :: Lens' CreateTypeResponse Int
ctrrsResponseStatus = lens _ctrrsResponseStatus (\s a -> s {_ctrrsResponseStatus = a})

instance NFData CreateTypeResponse
