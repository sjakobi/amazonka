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
-- Module      : Network.AWS.Glue.ListSchemas
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of schemas with minimal details. Schemas in Deleting status will not be included in the results. Empty results will be returned if there are no schemas available.
--
--
-- When the @RegistryId@ is not provided, all the schemas across registries will be part of the API response.
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.ListSchemas
  ( -- * Creating a Request
    listSchemas,
    ListSchemas,

    -- * Request Lenses
    lsNextToken,
    lsMaxResults,
    lsRegistryId,

    -- * Destructuring the Response
    listSchemasResponse,
    ListSchemasResponse,

    -- * Response Lenses
    lsrrsNextToken,
    lsrrsSchemas,
    lsrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSchemas' smart constructor.
data ListSchemas = ListSchemas'
  { _lsNextToken ::
      !(Maybe Text),
    _lsMaxResults :: !(Maybe Nat),
    _lsRegistryId :: !(Maybe RegistryId)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSchemas' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsNextToken' - A continuation token, if this is a continuation call.
--
-- * 'lsMaxResults' - Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.
--
-- * 'lsRegistryId' - A wrapper structure that may contain the registry name and Amazon Resource Name (ARN).
listSchemas ::
  ListSchemas
listSchemas =
  ListSchemas'
    { _lsNextToken = Nothing,
      _lsMaxResults = Nothing,
      _lsRegistryId = Nothing
    }

-- | A continuation token, if this is a continuation call.
lsNextToken :: Lens' ListSchemas (Maybe Text)
lsNextToken = lens _lsNextToken (\s a -> s {_lsNextToken = a})

-- | Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.
lsMaxResults :: Lens' ListSchemas (Maybe Natural)
lsMaxResults = lens _lsMaxResults (\s a -> s {_lsMaxResults = a}) . mapping _Nat

-- | A wrapper structure that may contain the registry name and Amazon Resource Name (ARN).
lsRegistryId :: Lens' ListSchemas (Maybe RegistryId)
lsRegistryId = lens _lsRegistryId (\s a -> s {_lsRegistryId = a})

instance AWSPager ListSchemas where
  page rq rs
    | stop (rs ^. lsrrsNextToken) = Nothing
    | stop (rs ^. lsrrsSchemas) = Nothing
    | otherwise =
      Just $ rq & lsNextToken .~ rs ^. lsrrsNextToken

instance AWSRequest ListSchemas where
  type Rs ListSchemas = ListSchemasResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          ListSchemasResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Schemas" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSchemas

instance NFData ListSchemas

instance ToHeaders ListSchemas where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.ListSchemas" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSchemas where
  toJSON ListSchemas' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lsNextToken,
            ("MaxResults" .=) <$> _lsMaxResults,
            ("RegistryId" .=) <$> _lsRegistryId
          ]
      )

instance ToPath ListSchemas where
  toPath = const "/"

instance ToQuery ListSchemas where
  toQuery = const mempty

-- | /See:/ 'listSchemasResponse' smart constructor.
data ListSchemasResponse = ListSchemasResponse'
  { _lsrrsNextToken ::
      !(Maybe Text),
    _lsrrsSchemas ::
      !(Maybe [SchemaListItem]),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSchemasResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsNextToken' - A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.
--
-- * 'lsrrsSchemas' - An array of @SchemaListItem@ objects containing details of each schema.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listSchemasResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListSchemasResponse
listSchemasResponse pResponseStatus_ =
  ListSchemasResponse'
    { _lsrrsNextToken = Nothing,
      _lsrrsSchemas = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.
lsrrsNextToken :: Lens' ListSchemasResponse (Maybe Text)
lsrrsNextToken = lens _lsrrsNextToken (\s a -> s {_lsrrsNextToken = a})

-- | An array of @SchemaListItem@ objects containing details of each schema.
lsrrsSchemas :: Lens' ListSchemasResponse [SchemaListItem]
lsrrsSchemas = lens _lsrrsSchemas (\s a -> s {_lsrrsSchemas = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListSchemasResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListSchemasResponse
