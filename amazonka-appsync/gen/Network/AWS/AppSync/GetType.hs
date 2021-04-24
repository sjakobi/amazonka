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
-- Module      : Network.AWS.AppSync.GetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a @Type@ object.
module Network.AWS.AppSync.GetType
  ( -- * Creating a Request
    getType,
    GetType,

    -- * Request Lenses
    gtApiId,
    gtTypeName,
    gtFormat,

    -- * Destructuring the Response
    getTypeResponse,
    GetTypeResponse,

    -- * Response Lenses
    gtrrsType,
    gtrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getType' smart constructor.
data GetType = GetType'
  { _gtApiId :: !Text,
    _gtTypeName :: !Text,
    _gtFormat :: !TypeDefinitionFormat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtApiId' - The API ID.
--
-- * 'gtTypeName' - The type name.
--
-- * 'gtFormat' - The type format: SDL or JSON.
getType ::
  -- | 'gtApiId'
  Text ->
  -- | 'gtTypeName'
  Text ->
  -- | 'gtFormat'
  TypeDefinitionFormat ->
  GetType
getType pApiId_ pTypeName_ pFormat_ =
  GetType'
    { _gtApiId = pApiId_,
      _gtTypeName = pTypeName_,
      _gtFormat = pFormat_
    }

-- | The API ID.
gtApiId :: Lens' GetType Text
gtApiId = lens _gtApiId (\s a -> s {_gtApiId = a})

-- | The type name.
gtTypeName :: Lens' GetType Text
gtTypeName = lens _gtTypeName (\s a -> s {_gtTypeName = a})

-- | The type format: SDL or JSON.
gtFormat :: Lens' GetType TypeDefinitionFormat
gtFormat = lens _gtFormat (\s a -> s {_gtFormat = a})

instance AWSRequest GetType where
  type Rs GetType = GetTypeResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          GetTypeResponse'
            <$> (x .?> "type") <*> (pure (fromEnum s))
      )

instance Hashable GetType

instance NFData GetType

instance ToHeaders GetType where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetType where
  toPath GetType' {..} =
    mconcat
      [ "/v1/apis/",
        toBS _gtApiId,
        "/types/",
        toBS _gtTypeName
      ]

instance ToQuery GetType where
  toQuery GetType' {..} =
    mconcat ["format" =: _gtFormat]

-- | /See:/ 'getTypeResponse' smart constructor.
data GetTypeResponse = GetTypeResponse'
  { _gtrrsType ::
      !(Maybe Type),
    _gtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtrrsType' - The @Type@ object.
--
-- * 'gtrrsResponseStatus' - -- | The response status code.
getTypeResponse ::
  -- | 'gtrrsResponseStatus'
  Int ->
  GetTypeResponse
getTypeResponse pResponseStatus_ =
  GetTypeResponse'
    { _gtrrsType = Nothing,
      _gtrrsResponseStatus = pResponseStatus_
    }

-- | The @Type@ object.
gtrrsType :: Lens' GetTypeResponse (Maybe Type)
gtrrsType = lens _gtrrsType (\s a -> s {_gtrrsType = a})

-- | -- | The response status code.
gtrrsResponseStatus :: Lens' GetTypeResponse Int
gtrrsResponseStatus = lens _gtrrsResponseStatus (\s a -> s {_gtrrsResponseStatus = a})

instance NFData GetTypeResponse
