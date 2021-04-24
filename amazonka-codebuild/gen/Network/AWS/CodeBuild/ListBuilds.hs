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
-- Module      : Network.AWS.CodeBuild.ListBuilds
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of build IDs, with each build ID representing a single build.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeBuild.ListBuilds
  ( -- * Creating a Request
    listBuilds,
    ListBuilds,

    -- * Request Lenses
    lbSortOrder,
    lbNextToken,

    -- * Destructuring the Response
    listBuildsResponse,
    ListBuildsResponse,

    -- * Response Lenses
    lbrrsNextToken,
    lbrrsIds,
    lbrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listBuilds' smart constructor.
data ListBuilds = ListBuilds'
  { _lbSortOrder ::
      !(Maybe SortOrderType),
    _lbNextToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBuilds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbSortOrder' - The order to list build IDs. Valid values include:     * @ASCENDING@ : List the build IDs in ascending order by build ID.     * @DESCENDING@ : List the build IDs in descending order by build ID.
--
-- * 'lbNextToken' - During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a /nextToken/ . To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
listBuilds ::
  ListBuilds
listBuilds =
  ListBuilds'
    { _lbSortOrder = Nothing,
      _lbNextToken = Nothing
    }

-- | The order to list build IDs. Valid values include:     * @ASCENDING@ : List the build IDs in ascending order by build ID.     * @DESCENDING@ : List the build IDs in descending order by build ID.
lbSortOrder :: Lens' ListBuilds (Maybe SortOrderType)
lbSortOrder = lens _lbSortOrder (\s a -> s {_lbSortOrder = a})

-- | During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a /nextToken/ . To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
lbNextToken :: Lens' ListBuilds (Maybe Text)
lbNextToken = lens _lbNextToken (\s a -> s {_lbNextToken = a})

instance AWSPager ListBuilds where
  page rq rs
    | stop (rs ^. lbrrsNextToken) = Nothing
    | stop (rs ^. lbrrsIds) = Nothing
    | otherwise =
      Just $ rq & lbNextToken .~ rs ^. lbrrsNextToken

instance AWSRequest ListBuilds where
  type Rs ListBuilds = ListBuildsResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          ListBuildsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "ids")
            <*> (pure (fromEnum s))
      )

instance Hashable ListBuilds

instance NFData ListBuilds

instance ToHeaders ListBuilds where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.ListBuilds" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListBuilds where
  toJSON ListBuilds' {..} =
    object
      ( catMaybes
          [ ("sortOrder" .=) <$> _lbSortOrder,
            ("nextToken" .=) <$> _lbNextToken
          ]
      )

instance ToPath ListBuilds where
  toPath = const "/"

instance ToQuery ListBuilds where
  toQuery = const mempty

-- | /See:/ 'listBuildsResponse' smart constructor.
data ListBuildsResponse = ListBuildsResponse'
  { _lbrrsNextToken ::
      !(Maybe Text),
    _lbrrsIds ::
      !(Maybe (List1 Text)),
    _lbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBuildsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrrsNextToken' - If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a /nextToken/ . To get the next batch of items in the list, call this operation again, adding the next token to the call.
--
-- * 'lbrrsIds' - A list of build IDs, with each build ID representing a single build.
--
-- * 'lbrrsResponseStatus' - -- | The response status code.
listBuildsResponse ::
  -- | 'lbrrsResponseStatus'
  Int ->
  ListBuildsResponse
listBuildsResponse pResponseStatus_ =
  ListBuildsResponse'
    { _lbrrsNextToken = Nothing,
      _lbrrsIds = Nothing,
      _lbrrsResponseStatus = pResponseStatus_
    }

-- | If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a /nextToken/ . To get the next batch of items in the list, call this operation again, adding the next token to the call.
lbrrsNextToken :: Lens' ListBuildsResponse (Maybe Text)
lbrrsNextToken = lens _lbrrsNextToken (\s a -> s {_lbrrsNextToken = a})

-- | A list of build IDs, with each build ID representing a single build.
lbrrsIds :: Lens' ListBuildsResponse (Maybe (NonEmpty Text))
lbrrsIds = lens _lbrrsIds (\s a -> s {_lbrrsIds = a}) . mapping _List1

-- | -- | The response status code.
lbrrsResponseStatus :: Lens' ListBuildsResponse Int
lbrrsResponseStatus = lens _lbrrsResponseStatus (\s a -> s {_lbrrsResponseStatus = a})

instance NFData ListBuildsResponse
