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
-- Module      : Network.AWS.CloudDirectory.ListManagedSchemaARNs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListManagedSchemaARNs
  ( -- * Creating a Request
    listManagedSchemaARNs,
    ListManagedSchemaARNs,

    -- * Request Lenses
    lmsaSchemaARN,
    lmsaNextToken,
    lmsaMaxResults,

    -- * Destructuring the Response
    listManagedSchemaARNsResponse,
    ListManagedSchemaARNsResponse,

    -- * Response Lenses
    lmsarrsSchemaARNs,
    lmsarrsNextToken,
    lmsarrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listManagedSchemaARNs' smart constructor.
data ListManagedSchemaARNs = ListManagedSchemaARNs'
  { _lmsaSchemaARN ::
      !(Maybe Text),
    _lmsaNextToken ::
      !(Maybe Text),
    _lmsaMaxResults ::
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

-- | Creates a value of 'ListManagedSchemaARNs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmsaSchemaARN' - The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.
--
-- * 'lmsaNextToken' - The pagination token.
--
-- * 'lmsaMaxResults' - The maximum number of results to retrieve.
listManagedSchemaARNs ::
  ListManagedSchemaARNs
listManagedSchemaARNs =
  ListManagedSchemaARNs'
    { _lmsaSchemaARN = Nothing,
      _lmsaNextToken = Nothing,
      _lmsaMaxResults = Nothing
    }

-- | The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.
lmsaSchemaARN :: Lens' ListManagedSchemaARNs (Maybe Text)
lmsaSchemaARN = lens _lmsaSchemaARN (\s a -> s {_lmsaSchemaARN = a})

-- | The pagination token.
lmsaNextToken :: Lens' ListManagedSchemaARNs (Maybe Text)
lmsaNextToken = lens _lmsaNextToken (\s a -> s {_lmsaNextToken = a})

-- | The maximum number of results to retrieve.
lmsaMaxResults :: Lens' ListManagedSchemaARNs (Maybe Natural)
lmsaMaxResults = lens _lmsaMaxResults (\s a -> s {_lmsaMaxResults = a}) . mapping _Nat

instance AWSPager ListManagedSchemaARNs where
  page rq rs
    | stop (rs ^. lmsarrsNextToken) = Nothing
    | stop (rs ^. lmsarrsSchemaARNs) = Nothing
    | otherwise =
      Just $ rq & lmsaNextToken .~ rs ^. lmsarrsNextToken

instance AWSRequest ListManagedSchemaARNs where
  type
    Rs ListManagedSchemaARNs =
      ListManagedSchemaARNsResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListManagedSchemaARNsResponse'
            <$> (x .?> "SchemaArns" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListManagedSchemaARNs

instance NFData ListManagedSchemaARNs

instance ToHeaders ListManagedSchemaARNs where
  toHeaders = const mempty

instance ToJSON ListManagedSchemaARNs where
  toJSON ListManagedSchemaARNs' {..} =
    object
      ( catMaybes
          [ ("SchemaArn" .=) <$> _lmsaSchemaARN,
            ("NextToken" .=) <$> _lmsaNextToken,
            ("MaxResults" .=) <$> _lmsaMaxResults
          ]
      )

instance ToPath ListManagedSchemaARNs where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/managed"

instance ToQuery ListManagedSchemaARNs where
  toQuery = const mempty

-- | /See:/ 'listManagedSchemaARNsResponse' smart constructor.
data ListManagedSchemaARNsResponse = ListManagedSchemaARNsResponse'
  { _lmsarrsSchemaARNs ::
      !( Maybe
           [Text]
       ),
    _lmsarrsNextToken ::
      !( Maybe
           Text
       ),
    _lmsarrsResponseStatus ::
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

-- | Creates a value of 'ListManagedSchemaARNsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmsarrsSchemaARNs' - The ARNs for all AWS managed schemas.
--
-- * 'lmsarrsNextToken' - The pagination token.
--
-- * 'lmsarrsResponseStatus' - -- | The response status code.
listManagedSchemaARNsResponse ::
  -- | 'lmsarrsResponseStatus'
  Int ->
  ListManagedSchemaARNsResponse
listManagedSchemaARNsResponse pResponseStatus_ =
  ListManagedSchemaARNsResponse'
    { _lmsarrsSchemaARNs =
        Nothing,
      _lmsarrsNextToken = Nothing,
      _lmsarrsResponseStatus = pResponseStatus_
    }

-- | The ARNs for all AWS managed schemas.
lmsarrsSchemaARNs :: Lens' ListManagedSchemaARNsResponse [Text]
lmsarrsSchemaARNs = lens _lmsarrsSchemaARNs (\s a -> s {_lmsarrsSchemaARNs = a}) . _Default . _Coerce

-- | The pagination token.
lmsarrsNextToken :: Lens' ListManagedSchemaARNsResponse (Maybe Text)
lmsarrsNextToken = lens _lmsarrsNextToken (\s a -> s {_lmsarrsNextToken = a})

-- | -- | The response status code.
lmsarrsResponseStatus :: Lens' ListManagedSchemaARNsResponse Int
lmsarrsResponseStatus = lens _lmsarrsResponseStatus (\s a -> s {_lmsarrsResponseStatus = a})

instance NFData ListManagedSchemaARNsResponse
