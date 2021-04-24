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
-- Module      : Network.AWS.CodeBuild.ListBuildBatchesForProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the identifiers of the build batches for a specific project.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeBuild.ListBuildBatchesForProject
  ( -- * Creating a Request
    listBuildBatchesForProject,
    ListBuildBatchesForProject,

    -- * Request Lenses
    lbbfpSortOrder,
    lbbfpNextToken,
    lbbfpMaxResults,
    lbbfpProjectName,
    lbbfpFilter,

    -- * Destructuring the Response
    listBuildBatchesForProjectResponse,
    ListBuildBatchesForProjectResponse,

    -- * Response Lenses
    lbbfprrsNextToken,
    lbbfprrsIds,
    lbbfprrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listBuildBatchesForProject' smart constructor.
data ListBuildBatchesForProject = ListBuildBatchesForProject'
  { _lbbfpSortOrder ::
      !( Maybe
           SortOrderType
       ),
    _lbbfpNextToken ::
      !(Maybe Text),
    _lbbfpMaxResults ::
      !(Maybe Nat),
    _lbbfpProjectName ::
      !(Maybe Text),
    _lbbfpFilter ::
      !( Maybe
           BuildBatchFilter
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListBuildBatchesForProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbbfpSortOrder' - Specifies the sort order of the returned items. Valid values include:     * @ASCENDING@ : List the batch build identifiers in ascending order by identifier.     * @DESCENDING@ : List the batch build identifiers in descending order by identifier.
--
-- * 'lbbfpNextToken' - The @nextToken@ value returned from a previous call to @ListBuildBatchesForProject@ . This specifies the next item to return. To return the beginning of the list, exclude this parameter.
--
-- * 'lbbfpMaxResults' - The maximum number of results to return.
--
-- * 'lbbfpProjectName' - The name of the project.
--
-- * 'lbbfpFilter' - A @BuildBatchFilter@ object that specifies the filters for the search.
listBuildBatchesForProject ::
  ListBuildBatchesForProject
listBuildBatchesForProject =
  ListBuildBatchesForProject'
    { _lbbfpSortOrder =
        Nothing,
      _lbbfpNextToken = Nothing,
      _lbbfpMaxResults = Nothing,
      _lbbfpProjectName = Nothing,
      _lbbfpFilter = Nothing
    }

-- | Specifies the sort order of the returned items. Valid values include:     * @ASCENDING@ : List the batch build identifiers in ascending order by identifier.     * @DESCENDING@ : List the batch build identifiers in descending order by identifier.
lbbfpSortOrder :: Lens' ListBuildBatchesForProject (Maybe SortOrderType)
lbbfpSortOrder = lens _lbbfpSortOrder (\s a -> s {_lbbfpSortOrder = a})

-- | The @nextToken@ value returned from a previous call to @ListBuildBatchesForProject@ . This specifies the next item to return. To return the beginning of the list, exclude this parameter.
lbbfpNextToken :: Lens' ListBuildBatchesForProject (Maybe Text)
lbbfpNextToken = lens _lbbfpNextToken (\s a -> s {_lbbfpNextToken = a})

-- | The maximum number of results to return.
lbbfpMaxResults :: Lens' ListBuildBatchesForProject (Maybe Natural)
lbbfpMaxResults = lens _lbbfpMaxResults (\s a -> s {_lbbfpMaxResults = a}) . mapping _Nat

-- | The name of the project.
lbbfpProjectName :: Lens' ListBuildBatchesForProject (Maybe Text)
lbbfpProjectName = lens _lbbfpProjectName (\s a -> s {_lbbfpProjectName = a})

-- | A @BuildBatchFilter@ object that specifies the filters for the search.
lbbfpFilter :: Lens' ListBuildBatchesForProject (Maybe BuildBatchFilter)
lbbfpFilter = lens _lbbfpFilter (\s a -> s {_lbbfpFilter = a})

instance AWSPager ListBuildBatchesForProject where
  page rq rs
    | stop (rs ^. lbbfprrsNextToken) = Nothing
    | stop (rs ^. lbbfprrsIds) = Nothing
    | otherwise =
      Just $ rq & lbbfpNextToken .~ rs ^. lbbfprrsNextToken

instance AWSRequest ListBuildBatchesForProject where
  type
    Rs ListBuildBatchesForProject =
      ListBuildBatchesForProjectResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          ListBuildBatchesForProjectResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "ids" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBuildBatchesForProject

instance NFData ListBuildBatchesForProject

instance ToHeaders ListBuildBatchesForProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeBuild_20161006.ListBuildBatchesForProject" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListBuildBatchesForProject where
  toJSON ListBuildBatchesForProject' {..} =
    object
      ( catMaybes
          [ ("sortOrder" .=) <$> _lbbfpSortOrder,
            ("nextToken" .=) <$> _lbbfpNextToken,
            ("maxResults" .=) <$> _lbbfpMaxResults,
            ("projectName" .=) <$> _lbbfpProjectName,
            ("filter" .=) <$> _lbbfpFilter
          ]
      )

instance ToPath ListBuildBatchesForProject where
  toPath = const "/"

instance ToQuery ListBuildBatchesForProject where
  toQuery = const mempty

-- | /See:/ 'listBuildBatchesForProjectResponse' smart constructor.
data ListBuildBatchesForProjectResponse = ListBuildBatchesForProjectResponse'
  { _lbbfprrsNextToken ::
      !( Maybe
           Text
       ),
    _lbbfprrsIds ::
      !( Maybe
           [Text]
       ),
    _lbbfprrsResponseStatus ::
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

-- | Creates a value of 'ListBuildBatchesForProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbbfprrsNextToken' - If there are more items to return, this contains a token that is passed to a subsequent call to @ListBuildBatchesForProject@ to retrieve the next set of items.
--
-- * 'lbbfprrsIds' - An array of strings that contains the batch build identifiers.
--
-- * 'lbbfprrsResponseStatus' - -- | The response status code.
listBuildBatchesForProjectResponse ::
  -- | 'lbbfprrsResponseStatus'
  Int ->
  ListBuildBatchesForProjectResponse
listBuildBatchesForProjectResponse pResponseStatus_ =
  ListBuildBatchesForProjectResponse'
    { _lbbfprrsNextToken =
        Nothing,
      _lbbfprrsIds = Nothing,
      _lbbfprrsResponseStatus =
        pResponseStatus_
    }

-- | If there are more items to return, this contains a token that is passed to a subsequent call to @ListBuildBatchesForProject@ to retrieve the next set of items.
lbbfprrsNextToken :: Lens' ListBuildBatchesForProjectResponse (Maybe Text)
lbbfprrsNextToken = lens _lbbfprrsNextToken (\s a -> s {_lbbfprrsNextToken = a})

-- | An array of strings that contains the batch build identifiers.
lbbfprrsIds :: Lens' ListBuildBatchesForProjectResponse [Text]
lbbfprrsIds = lens _lbbfprrsIds (\s a -> s {_lbbfprrsIds = a}) . _Default . _Coerce

-- | -- | The response status code.
lbbfprrsResponseStatus :: Lens' ListBuildBatchesForProjectResponse Int
lbbfprrsResponseStatus = lens _lbbfprrsResponseStatus (\s a -> s {_lbbfprrsResponseStatus = a})

instance NFData ListBuildBatchesForProjectResponse
