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
-- Module      : Network.AWS.CloudDirectory.ListPublishedSchemaARNs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the major version families of each published schema. If a major version ARN is provided as @SchemaArn@ , the minor version revisions in that family are listed instead.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListPublishedSchemaARNs
  ( -- * Creating a Request
    listPublishedSchemaARNs,
    ListPublishedSchemaARNs,

    -- * Request Lenses
    lpsaSchemaARN,
    lpsaNextToken,
    lpsaMaxResults,

    -- * Destructuring the Response
    listPublishedSchemaARNsResponse,
    ListPublishedSchemaARNsResponse,

    -- * Response Lenses
    lpsarrsSchemaARNs,
    lpsarrsNextToken,
    lpsarrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPublishedSchemaARNs' smart constructor.
data ListPublishedSchemaARNs = ListPublishedSchemaARNs'
  { _lpsaSchemaARN ::
      !(Maybe Text),
    _lpsaNextToken ::
      !(Maybe Text),
    _lpsaMaxResults ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPublishedSchemaARNs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpsaSchemaARN' - The response for @ListPublishedSchemaArns@ when this parameter is used will list all minor version ARNs for a major version.
--
-- * 'lpsaNextToken' - The pagination token.
--
-- * 'lpsaMaxResults' - The maximum number of results to retrieve.
listPublishedSchemaARNs ::
  ListPublishedSchemaARNs
listPublishedSchemaARNs =
  ListPublishedSchemaARNs'
    { _lpsaSchemaARN = Nothing,
      _lpsaNextToken = Nothing,
      _lpsaMaxResults = Nothing
    }

-- | The response for @ListPublishedSchemaArns@ when this parameter is used will list all minor version ARNs for a major version.
lpsaSchemaARN :: Lens' ListPublishedSchemaARNs (Maybe Text)
lpsaSchemaARN = lens _lpsaSchemaARN (\s a -> s {_lpsaSchemaARN = a})

-- | The pagination token.
lpsaNextToken :: Lens' ListPublishedSchemaARNs (Maybe Text)
lpsaNextToken = lens _lpsaNextToken (\s a -> s {_lpsaNextToken = a})

-- | The maximum number of results to retrieve.
lpsaMaxResults :: Lens' ListPublishedSchemaARNs (Maybe Natural)
lpsaMaxResults = lens _lpsaMaxResults (\s a -> s {_lpsaMaxResults = a}) . mapping _Nat

instance AWSPager ListPublishedSchemaARNs where
  page rq rs
    | stop (rs ^. lpsarrsNextToken) = Nothing
    | stop (rs ^. lpsarrsSchemaARNs) = Nothing
    | otherwise =
      Just $ rq & lpsaNextToken .~ rs ^. lpsarrsNextToken

instance AWSRequest ListPublishedSchemaARNs where
  type
    Rs ListPublishedSchemaARNs =
      ListPublishedSchemaARNsResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListPublishedSchemaARNsResponse'
            <$> (x .?> "SchemaArns" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListPublishedSchemaARNs

instance NFData ListPublishedSchemaARNs

instance ToHeaders ListPublishedSchemaARNs where
  toHeaders = const mempty

instance ToJSON ListPublishedSchemaARNs where
  toJSON ListPublishedSchemaARNs' {..} =
    object
      ( catMaybes
          [ ("SchemaArn" .=) <$> _lpsaSchemaARN,
            ("NextToken" .=) <$> _lpsaNextToken,
            ("MaxResults" .=) <$> _lpsaMaxResults
          ]
      )

instance ToPath ListPublishedSchemaARNs where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/published"

instance ToQuery ListPublishedSchemaARNs where
  toQuery = const mempty

-- | /See:/ 'listPublishedSchemaARNsResponse' smart constructor.
data ListPublishedSchemaARNsResponse = ListPublishedSchemaARNsResponse'
  { _lpsarrsSchemaARNs ::
      !( Maybe
           [Text]
       ),
    _lpsarrsNextToken ::
      !( Maybe
           Text
       ),
    _lpsarrsResponseStatus ::
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

-- | Creates a value of 'ListPublishedSchemaARNsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpsarrsSchemaARNs' - The ARNs of published schemas.
--
-- * 'lpsarrsNextToken' - The pagination token.
--
-- * 'lpsarrsResponseStatus' - -- | The response status code.
listPublishedSchemaARNsResponse ::
  -- | 'lpsarrsResponseStatus'
  Int ->
  ListPublishedSchemaARNsResponse
listPublishedSchemaARNsResponse pResponseStatus_ =
  ListPublishedSchemaARNsResponse'
    { _lpsarrsSchemaARNs =
        Nothing,
      _lpsarrsNextToken = Nothing,
      _lpsarrsResponseStatus = pResponseStatus_
    }

-- | The ARNs of published schemas.
lpsarrsSchemaARNs :: Lens' ListPublishedSchemaARNsResponse [Text]
lpsarrsSchemaARNs = lens _lpsarrsSchemaARNs (\s a -> s {_lpsarrsSchemaARNs = a}) . _Default . _Coerce

-- | The pagination token.
lpsarrsNextToken :: Lens' ListPublishedSchemaARNsResponse (Maybe Text)
lpsarrsNextToken = lens _lpsarrsNextToken (\s a -> s {_lpsarrsNextToken = a})

-- | -- | The response status code.
lpsarrsResponseStatus :: Lens' ListPublishedSchemaARNsResponse Int
lpsarrsResponseStatus = lens _lpsarrsResponseStatus (\s a -> s {_lpsarrsResponseStatus = a})

instance NFData ListPublishedSchemaARNsResponse
