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
-- Module      : Network.AWS.CodeBuild.ListBuildBatches
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the identifiers of your build batches in the current region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeBuild.ListBuildBatches
  ( -- * Creating a Request
    listBuildBatches,
    ListBuildBatches,

    -- * Request Lenses
    lbbSortOrder,
    lbbNextToken,
    lbbMaxResults,
    lbbFilter,

    -- * Destructuring the Response
    listBuildBatchesResponse,
    ListBuildBatchesResponse,

    -- * Response Lenses
    lbbrrsNextToken,
    lbbrrsIds,
    lbbrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listBuildBatches' smart constructor.
data ListBuildBatches = ListBuildBatches'
  { _lbbSortOrder ::
      !(Maybe SortOrderType),
    _lbbNextToken :: !(Maybe Text),
    _lbbMaxResults :: !(Maybe Nat),
    _lbbFilter ::
      !(Maybe BuildBatchFilter)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBuildBatches' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbbSortOrder' - Specifies the sort order of the returned items. Valid values include:     * @ASCENDING@ : List the batch build identifiers in ascending order by identifier.     * @DESCENDING@ : List the batch build identifiers in descending order by identifier.
--
-- * 'lbbNextToken' - The @nextToken@ value returned from a previous call to @ListBuildBatches@ . This specifies the next item to return. To return the beginning of the list, exclude this parameter.
--
-- * 'lbbMaxResults' - The maximum number of results to return.
--
-- * 'lbbFilter' - A @BuildBatchFilter@ object that specifies the filters for the search.
listBuildBatches ::
  ListBuildBatches
listBuildBatches =
  ListBuildBatches'
    { _lbbSortOrder = Nothing,
      _lbbNextToken = Nothing,
      _lbbMaxResults = Nothing,
      _lbbFilter = Nothing
    }

-- | Specifies the sort order of the returned items. Valid values include:     * @ASCENDING@ : List the batch build identifiers in ascending order by identifier.     * @DESCENDING@ : List the batch build identifiers in descending order by identifier.
lbbSortOrder :: Lens' ListBuildBatches (Maybe SortOrderType)
lbbSortOrder = lens _lbbSortOrder (\s a -> s {_lbbSortOrder = a})

-- | The @nextToken@ value returned from a previous call to @ListBuildBatches@ . This specifies the next item to return. To return the beginning of the list, exclude this parameter.
lbbNextToken :: Lens' ListBuildBatches (Maybe Text)
lbbNextToken = lens _lbbNextToken (\s a -> s {_lbbNextToken = a})

-- | The maximum number of results to return.
lbbMaxResults :: Lens' ListBuildBatches (Maybe Natural)
lbbMaxResults = lens _lbbMaxResults (\s a -> s {_lbbMaxResults = a}) . mapping _Nat

-- | A @BuildBatchFilter@ object that specifies the filters for the search.
lbbFilter :: Lens' ListBuildBatches (Maybe BuildBatchFilter)
lbbFilter = lens _lbbFilter (\s a -> s {_lbbFilter = a})

instance AWSPager ListBuildBatches where
  page rq rs
    | stop (rs ^. lbbrrsNextToken) = Nothing
    | stop (rs ^. lbbrrsIds) = Nothing
    | otherwise =
      Just $ rq & lbbNextToken .~ rs ^. lbbrrsNextToken

instance AWSRequest ListBuildBatches where
  type Rs ListBuildBatches = ListBuildBatchesResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          ListBuildBatchesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "ids" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBuildBatches

instance NFData ListBuildBatches

instance ToHeaders ListBuildBatches where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeBuild_20161006.ListBuildBatches" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListBuildBatches where
  toJSON ListBuildBatches' {..} =
    object
      ( catMaybes
          [ ("sortOrder" .=) <$> _lbbSortOrder,
            ("nextToken" .=) <$> _lbbNextToken,
            ("maxResults" .=) <$> _lbbMaxResults,
            ("filter" .=) <$> _lbbFilter
          ]
      )

instance ToPath ListBuildBatches where
  toPath = const "/"

instance ToQuery ListBuildBatches where
  toQuery = const mempty

-- | /See:/ 'listBuildBatchesResponse' smart constructor.
data ListBuildBatchesResponse = ListBuildBatchesResponse'
  { _lbbrrsNextToken ::
      !(Maybe Text),
    _lbbrrsIds ::
      !(Maybe [Text]),
    _lbbrrsResponseStatus ::
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

-- | Creates a value of 'ListBuildBatchesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbbrrsNextToken' - If there are more items to return, this contains a token that is passed to a subsequent call to @ListBuildBatches@ to retrieve the next set of items.
--
-- * 'lbbrrsIds' - An array of strings that contains the batch build identifiers.
--
-- * 'lbbrrsResponseStatus' - -- | The response status code.
listBuildBatchesResponse ::
  -- | 'lbbrrsResponseStatus'
  Int ->
  ListBuildBatchesResponse
listBuildBatchesResponse pResponseStatus_ =
  ListBuildBatchesResponse'
    { _lbbrrsNextToken =
        Nothing,
      _lbbrrsIds = Nothing,
      _lbbrrsResponseStatus = pResponseStatus_
    }

-- | If there are more items to return, this contains a token that is passed to a subsequent call to @ListBuildBatches@ to retrieve the next set of items.
lbbrrsNextToken :: Lens' ListBuildBatchesResponse (Maybe Text)
lbbrrsNextToken = lens _lbbrrsNextToken (\s a -> s {_lbbrrsNextToken = a})

-- | An array of strings that contains the batch build identifiers.
lbbrrsIds :: Lens' ListBuildBatchesResponse [Text]
lbbrrsIds = lens _lbbrrsIds (\s a -> s {_lbbrrsIds = a}) . _Default . _Coerce

-- | -- | The response status code.
lbbrrsResponseStatus :: Lens' ListBuildBatchesResponse Int
lbbrrsResponseStatus = lens _lbbrrsResponseStatus (\s a -> s {_lbbrrsResponseStatus = a})

instance NFData ListBuildBatchesResponse
