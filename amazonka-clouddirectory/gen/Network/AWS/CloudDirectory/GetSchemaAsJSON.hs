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
-- Module      : Network.AWS.CloudDirectory.GetSchemaAsJSON
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a JSON representation of the schema. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json JSON Schema Format> for more information.
module Network.AWS.CloudDirectory.GetSchemaAsJSON
  ( -- * Creating a Request
    getSchemaAsJSON,
    GetSchemaAsJSON,

    -- * Request Lenses
    gsajSchemaARN,

    -- * Destructuring the Response
    getSchemaAsJSONResponse,
    GetSchemaAsJSONResponse,

    -- * Response Lenses
    gsajrrsName,
    gsajrrsDocument,
    gsajrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSchemaAsJSON' smart constructor.
newtype GetSchemaAsJSON = GetSchemaAsJSON'
  { _gsajSchemaARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSchemaAsJSON' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsajSchemaARN' - The ARN of the schema to retrieve.
getSchemaAsJSON ::
  -- | 'gsajSchemaARN'
  Text ->
  GetSchemaAsJSON
getSchemaAsJSON pSchemaARN_ =
  GetSchemaAsJSON' {_gsajSchemaARN = pSchemaARN_}

-- | The ARN of the schema to retrieve.
gsajSchemaARN :: Lens' GetSchemaAsJSON Text
gsajSchemaARN = lens _gsajSchemaARN (\s a -> s {_gsajSchemaARN = a})

instance AWSRequest GetSchemaAsJSON where
  type Rs GetSchemaAsJSON = GetSchemaAsJSONResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          GetSchemaAsJSONResponse'
            <$> (x .?> "Name")
            <*> (x .?> "Document")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSchemaAsJSON

instance NFData GetSchemaAsJSON

instance ToHeaders GetSchemaAsJSON where
  toHeaders GetSchemaAsJSON' {..} =
    mconcat ["x-amz-data-partition" =# _gsajSchemaARN]

instance ToJSON GetSchemaAsJSON where
  toJSON = const (Object mempty)

instance ToPath GetSchemaAsJSON where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/json"

instance ToQuery GetSchemaAsJSON where
  toQuery = const mempty

-- | /See:/ 'getSchemaAsJSONResponse' smart constructor.
data GetSchemaAsJSONResponse = GetSchemaAsJSONResponse'
  { _gsajrrsName ::
      !(Maybe Text),
    _gsajrrsDocument ::
      !(Maybe Text),
    _gsajrrsResponseStatus ::
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

-- | Creates a value of 'GetSchemaAsJSONResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsajrrsName' - The name of the retrieved schema.
--
-- * 'gsajrrsDocument' - The JSON representation of the schema document.
--
-- * 'gsajrrsResponseStatus' - -- | The response status code.
getSchemaAsJSONResponse ::
  -- | 'gsajrrsResponseStatus'
  Int ->
  GetSchemaAsJSONResponse
getSchemaAsJSONResponse pResponseStatus_ =
  GetSchemaAsJSONResponse'
    { _gsajrrsName = Nothing,
      _gsajrrsDocument = Nothing,
      _gsajrrsResponseStatus = pResponseStatus_
    }

-- | The name of the retrieved schema.
gsajrrsName :: Lens' GetSchemaAsJSONResponse (Maybe Text)
gsajrrsName = lens _gsajrrsName (\s a -> s {_gsajrrsName = a})

-- | The JSON representation of the schema document.
gsajrrsDocument :: Lens' GetSchemaAsJSONResponse (Maybe Text)
gsajrrsDocument = lens _gsajrrsDocument (\s a -> s {_gsajrrsDocument = a})

-- | -- | The response status code.
gsajrrsResponseStatus :: Lens' GetSchemaAsJSONResponse Int
gsajrrsResponseStatus = lens _gsajrrsResponseStatus (\s a -> s {_gsajrrsResponseStatus = a})

instance NFData GetSchemaAsJSONResponse
