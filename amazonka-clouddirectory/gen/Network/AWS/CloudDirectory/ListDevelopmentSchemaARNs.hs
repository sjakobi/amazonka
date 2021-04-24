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
-- Module      : Network.AWS.CloudDirectory.ListDevelopmentSchemaARNs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves each Amazon Resource Name (ARN) of schemas in the development state.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListDevelopmentSchemaARNs
  ( -- * Creating a Request
    listDevelopmentSchemaARNs,
    ListDevelopmentSchemaARNs,

    -- * Request Lenses
    ldsaNextToken,
    ldsaMaxResults,

    -- * Destructuring the Response
    listDevelopmentSchemaARNsResponse,
    ListDevelopmentSchemaARNsResponse,

    -- * Response Lenses
    ldsarrsSchemaARNs,
    ldsarrsNextToken,
    ldsarrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDevelopmentSchemaARNs' smart constructor.
data ListDevelopmentSchemaARNs = ListDevelopmentSchemaARNs'
  { _ldsaNextToken ::
      !(Maybe Text),
    _ldsaMaxResults ::
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

-- | Creates a value of 'ListDevelopmentSchemaARNs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsaNextToken' - The pagination token.
--
-- * 'ldsaMaxResults' - The maximum number of results to retrieve.
listDevelopmentSchemaARNs ::
  ListDevelopmentSchemaARNs
listDevelopmentSchemaARNs =
  ListDevelopmentSchemaARNs'
    { _ldsaNextToken =
        Nothing,
      _ldsaMaxResults = Nothing
    }

-- | The pagination token.
ldsaNextToken :: Lens' ListDevelopmentSchemaARNs (Maybe Text)
ldsaNextToken = lens _ldsaNextToken (\s a -> s {_ldsaNextToken = a})

-- | The maximum number of results to retrieve.
ldsaMaxResults :: Lens' ListDevelopmentSchemaARNs (Maybe Natural)
ldsaMaxResults = lens _ldsaMaxResults (\s a -> s {_ldsaMaxResults = a}) . mapping _Nat

instance AWSPager ListDevelopmentSchemaARNs where
  page rq rs
    | stop (rs ^. ldsarrsNextToken) = Nothing
    | stop (rs ^. ldsarrsSchemaARNs) = Nothing
    | otherwise =
      Just $ rq & ldsaNextToken .~ rs ^. ldsarrsNextToken

instance AWSRequest ListDevelopmentSchemaARNs where
  type
    Rs ListDevelopmentSchemaARNs =
      ListDevelopmentSchemaARNsResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListDevelopmentSchemaARNsResponse'
            <$> (x .?> "SchemaArns" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListDevelopmentSchemaARNs

instance NFData ListDevelopmentSchemaARNs

instance ToHeaders ListDevelopmentSchemaARNs where
  toHeaders = const mempty

instance ToJSON ListDevelopmentSchemaARNs where
  toJSON ListDevelopmentSchemaARNs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ldsaNextToken,
            ("MaxResults" .=) <$> _ldsaMaxResults
          ]
      )

instance ToPath ListDevelopmentSchemaARNs where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/development"

instance ToQuery ListDevelopmentSchemaARNs where
  toQuery = const mempty

-- | /See:/ 'listDevelopmentSchemaARNsResponse' smart constructor.
data ListDevelopmentSchemaARNsResponse = ListDevelopmentSchemaARNsResponse'
  { _ldsarrsSchemaARNs ::
      !( Maybe
           [Text]
       ),
    _ldsarrsNextToken ::
      !( Maybe
           Text
       ),
    _ldsarrsResponseStatus ::
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

-- | Creates a value of 'ListDevelopmentSchemaARNsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsarrsSchemaARNs' - The ARNs of retrieved development schemas.
--
-- * 'ldsarrsNextToken' - The pagination token.
--
-- * 'ldsarrsResponseStatus' - -- | The response status code.
listDevelopmentSchemaARNsResponse ::
  -- | 'ldsarrsResponseStatus'
  Int ->
  ListDevelopmentSchemaARNsResponse
listDevelopmentSchemaARNsResponse pResponseStatus_ =
  ListDevelopmentSchemaARNsResponse'
    { _ldsarrsSchemaARNs =
        Nothing,
      _ldsarrsNextToken = Nothing,
      _ldsarrsResponseStatus =
        pResponseStatus_
    }

-- | The ARNs of retrieved development schemas.
ldsarrsSchemaARNs :: Lens' ListDevelopmentSchemaARNsResponse [Text]
ldsarrsSchemaARNs = lens _ldsarrsSchemaARNs (\s a -> s {_ldsarrsSchemaARNs = a}) . _Default . _Coerce

-- | The pagination token.
ldsarrsNextToken :: Lens' ListDevelopmentSchemaARNsResponse (Maybe Text)
ldsarrsNextToken = lens _ldsarrsNextToken (\s a -> s {_ldsarrsNextToken = a})

-- | -- | The response status code.
ldsarrsResponseStatus :: Lens' ListDevelopmentSchemaARNsResponse Int
ldsarrsResponseStatus = lens _ldsarrsResponseStatus (\s a -> s {_ldsarrsResponseStatus = a})

instance NFData ListDevelopmentSchemaARNsResponse
