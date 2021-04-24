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
-- Module      : Network.AWS.AppSync.GetIntrospectionSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the introspection schema for a GraphQL API.
module Network.AWS.AppSync.GetIntrospectionSchema
  ( -- * Creating a Request
    getIntrospectionSchema,
    GetIntrospectionSchema,

    -- * Request Lenses
    gisIncludeDirectives,
    gisApiId,
    gisFormat,

    -- * Destructuring the Response
    getIntrospectionSchemaResponse,
    GetIntrospectionSchemaResponse,

    -- * Response Lenses
    gisrrsSchema,
    gisrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getIntrospectionSchema' smart constructor.
data GetIntrospectionSchema = GetIntrospectionSchema'
  { _gisIncludeDirectives ::
      !(Maybe Bool),
    _gisApiId :: !Text,
    _gisFormat :: !OutputType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetIntrospectionSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisIncludeDirectives' - A flag that specifies whether the schema introspection should contain directives.
--
-- * 'gisApiId' - The API ID.
--
-- * 'gisFormat' - The schema format: SDL or JSON.
getIntrospectionSchema ::
  -- | 'gisApiId'
  Text ->
  -- | 'gisFormat'
  OutputType ->
  GetIntrospectionSchema
getIntrospectionSchema pApiId_ pFormat_ =
  GetIntrospectionSchema'
    { _gisIncludeDirectives =
        Nothing,
      _gisApiId = pApiId_,
      _gisFormat = pFormat_
    }

-- | A flag that specifies whether the schema introspection should contain directives.
gisIncludeDirectives :: Lens' GetIntrospectionSchema (Maybe Bool)
gisIncludeDirectives = lens _gisIncludeDirectives (\s a -> s {_gisIncludeDirectives = a})

-- | The API ID.
gisApiId :: Lens' GetIntrospectionSchema Text
gisApiId = lens _gisApiId (\s a -> s {_gisApiId = a})

-- | The schema format: SDL or JSON.
gisFormat :: Lens' GetIntrospectionSchema OutputType
gisFormat = lens _gisFormat (\s a -> s {_gisFormat = a})

instance AWSRequest GetIntrospectionSchema where
  type
    Rs GetIntrospectionSchema =
      GetIntrospectionSchemaResponse
  request = get appSync
  response =
    receiveBytes
      ( \s h x ->
          GetIntrospectionSchemaResponse'
            <$> (pure (Just x)) <*> (pure (fromEnum s))
      )

instance Hashable GetIntrospectionSchema

instance NFData GetIntrospectionSchema

instance ToHeaders GetIntrospectionSchema where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetIntrospectionSchema where
  toPath GetIntrospectionSchema' {..} =
    mconcat ["/v1/apis/", toBS _gisApiId, "/schema"]

instance ToQuery GetIntrospectionSchema where
  toQuery GetIntrospectionSchema' {..} =
    mconcat
      [ "includeDirectives" =: _gisIncludeDirectives,
        "format" =: _gisFormat
      ]

-- | /See:/ 'getIntrospectionSchemaResponse' smart constructor.
data GetIntrospectionSchemaResponse = GetIntrospectionSchemaResponse'
  { _gisrrsSchema ::
      !( Maybe
           ByteString
       ),
    _gisrrsResponseStatus ::
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

-- | Creates a value of 'GetIntrospectionSchemaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisrrsSchema' - The schema, in GraphQL Schema Definition Language (SDL) format. For more information, see the <http://graphql.org/learn/schema/ GraphQL SDL documentation> .
--
-- * 'gisrrsResponseStatus' - -- | The response status code.
getIntrospectionSchemaResponse ::
  -- | 'gisrrsResponseStatus'
  Int ->
  GetIntrospectionSchemaResponse
getIntrospectionSchemaResponse pResponseStatus_ =
  GetIntrospectionSchemaResponse'
    { _gisrrsSchema =
        Nothing,
      _gisrrsResponseStatus = pResponseStatus_
    }

-- | The schema, in GraphQL Schema Definition Language (SDL) format. For more information, see the <http://graphql.org/learn/schema/ GraphQL SDL documentation> .
gisrrsSchema :: Lens' GetIntrospectionSchemaResponse (Maybe ByteString)
gisrrsSchema = lens _gisrrsSchema (\s a -> s {_gisrrsSchema = a})

-- | -- | The response status code.
gisrrsResponseStatus :: Lens' GetIntrospectionSchemaResponse Int
gisrrsResponseStatus = lens _gisrrsResponseStatus (\s a -> s {_gisrrsResponseStatus = a})

instance NFData GetIntrospectionSchemaResponse
