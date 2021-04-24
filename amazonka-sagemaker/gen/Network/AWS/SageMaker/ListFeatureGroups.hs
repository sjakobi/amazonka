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
-- Module      : Network.AWS.SageMaker.ListFeatureGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List @FeatureGroup@ s based on given filter and order.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListFeatureGroups
  ( -- * Creating a Request
    listFeatureGroups,
    ListFeatureGroups,

    -- * Request Lenses
    lfgSortOrder,
    lfgNextToken,
    lfgNameContains,
    lfgMaxResults,
    lfgOfflineStoreStatusEquals,
    lfgCreationTimeBefore,
    lfgSortBy,
    lfgCreationTimeAfter,
    lfgFeatureGroupStatusEquals,

    -- * Destructuring the Response
    listFeatureGroupsResponse,
    ListFeatureGroupsResponse,

    -- * Response Lenses
    lfgrrsResponseStatus,
    lfgrrsFeatureGroupSummaries,
    lfgrrsNextToken,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listFeatureGroups' smart constructor.
data ListFeatureGroups = ListFeatureGroups'
  { _lfgSortOrder ::
      !(Maybe FeatureGroupSortOrder),
    _lfgNextToken :: !(Maybe Text),
    _lfgNameContains :: !(Maybe Text),
    _lfgMaxResults :: !(Maybe Nat),
    _lfgOfflineStoreStatusEquals ::
      !(Maybe OfflineStoreStatusValue),
    _lfgCreationTimeBefore ::
      !(Maybe POSIX),
    _lfgSortBy ::
      !(Maybe FeatureGroupSortBy),
    _lfgCreationTimeAfter ::
      !(Maybe POSIX),
    _lfgFeatureGroupStatusEquals ::
      !(Maybe FeatureGroupStatus)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFeatureGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfgSortOrder' - The order in which feature groups are listed.
--
-- * 'lfgNextToken' - A token to resume pagination of @ListFeatureGroups@ results.
--
-- * 'lfgNameContains' - A string that partially matches one or more @FeatureGroup@ s names. Filters @FeatureGroup@ s by name.
--
-- * 'lfgMaxResults' - The maximum number of results returned by @ListFeatureGroups@ .
--
-- * 'lfgOfflineStoreStatusEquals' - An @OfflineStore@ status. Filters by @OfflineStore@ status.
--
-- * 'lfgCreationTimeBefore' - Use this parameter to search for @FeatureGroups@ s created before a specific date and time.
--
-- * 'lfgSortBy' - The value on which the feature group list is sorted.
--
-- * 'lfgCreationTimeAfter' - Use this parameter to search for @FeatureGroups@ s created after a specific date and time.
--
-- * 'lfgFeatureGroupStatusEquals' - A @FeatureGroup@ status. Filters by @FeatureGroup@ status.
listFeatureGroups ::
  ListFeatureGroups
listFeatureGroups =
  ListFeatureGroups'
    { _lfgSortOrder = Nothing,
      _lfgNextToken = Nothing,
      _lfgNameContains = Nothing,
      _lfgMaxResults = Nothing,
      _lfgOfflineStoreStatusEquals = Nothing,
      _lfgCreationTimeBefore = Nothing,
      _lfgSortBy = Nothing,
      _lfgCreationTimeAfter = Nothing,
      _lfgFeatureGroupStatusEquals = Nothing
    }

-- | The order in which feature groups are listed.
lfgSortOrder :: Lens' ListFeatureGroups (Maybe FeatureGroupSortOrder)
lfgSortOrder = lens _lfgSortOrder (\s a -> s {_lfgSortOrder = a})

-- | A token to resume pagination of @ListFeatureGroups@ results.
lfgNextToken :: Lens' ListFeatureGroups (Maybe Text)
lfgNextToken = lens _lfgNextToken (\s a -> s {_lfgNextToken = a})

-- | A string that partially matches one or more @FeatureGroup@ s names. Filters @FeatureGroup@ s by name.
lfgNameContains :: Lens' ListFeatureGroups (Maybe Text)
lfgNameContains = lens _lfgNameContains (\s a -> s {_lfgNameContains = a})

-- | The maximum number of results returned by @ListFeatureGroups@ .
lfgMaxResults :: Lens' ListFeatureGroups (Maybe Natural)
lfgMaxResults = lens _lfgMaxResults (\s a -> s {_lfgMaxResults = a}) . mapping _Nat

-- | An @OfflineStore@ status. Filters by @OfflineStore@ status.
lfgOfflineStoreStatusEquals :: Lens' ListFeatureGroups (Maybe OfflineStoreStatusValue)
lfgOfflineStoreStatusEquals = lens _lfgOfflineStoreStatusEquals (\s a -> s {_lfgOfflineStoreStatusEquals = a})

-- | Use this parameter to search for @FeatureGroups@ s created before a specific date and time.
lfgCreationTimeBefore :: Lens' ListFeatureGroups (Maybe UTCTime)
lfgCreationTimeBefore = lens _lfgCreationTimeBefore (\s a -> s {_lfgCreationTimeBefore = a}) . mapping _Time

-- | The value on which the feature group list is sorted.
lfgSortBy :: Lens' ListFeatureGroups (Maybe FeatureGroupSortBy)
lfgSortBy = lens _lfgSortBy (\s a -> s {_lfgSortBy = a})

-- | Use this parameter to search for @FeatureGroups@ s created after a specific date and time.
lfgCreationTimeAfter :: Lens' ListFeatureGroups (Maybe UTCTime)
lfgCreationTimeAfter = lens _lfgCreationTimeAfter (\s a -> s {_lfgCreationTimeAfter = a}) . mapping _Time

-- | A @FeatureGroup@ status. Filters by @FeatureGroup@ status.
lfgFeatureGroupStatusEquals :: Lens' ListFeatureGroups (Maybe FeatureGroupStatus)
lfgFeatureGroupStatusEquals = lens _lfgFeatureGroupStatusEquals (\s a -> s {_lfgFeatureGroupStatusEquals = a})

instance AWSPager ListFeatureGroups where
  page rq rs
    | stop (rs ^. lfgrrsNextToken) = Nothing
    | stop (rs ^. lfgrrsFeatureGroupSummaries) = Nothing
    | otherwise =
      Just $ rq & lfgNextToken .~ rs ^. lfgrrsNextToken

instance AWSRequest ListFeatureGroups where
  type Rs ListFeatureGroups = ListFeatureGroupsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListFeatureGroupsResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "FeatureGroupSummaries" .!@ mempty)
            <*> (x .:> "NextToken")
      )

instance Hashable ListFeatureGroups

instance NFData ListFeatureGroups

instance ToHeaders ListFeatureGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListFeatureGroups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListFeatureGroups where
  toJSON ListFeatureGroups' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lfgSortOrder,
            ("NextToken" .=) <$> _lfgNextToken,
            ("NameContains" .=) <$> _lfgNameContains,
            ("MaxResults" .=) <$> _lfgMaxResults,
            ("OfflineStoreStatusEquals" .=)
              <$> _lfgOfflineStoreStatusEquals,
            ("CreationTimeBefore" .=) <$> _lfgCreationTimeBefore,
            ("SortBy" .=) <$> _lfgSortBy,
            ("CreationTimeAfter" .=) <$> _lfgCreationTimeAfter,
            ("FeatureGroupStatusEquals" .=)
              <$> _lfgFeatureGroupStatusEquals
          ]
      )

instance ToPath ListFeatureGroups where
  toPath = const "/"

instance ToQuery ListFeatureGroups where
  toQuery = const mempty

-- | /See:/ 'listFeatureGroupsResponse' smart constructor.
data ListFeatureGroupsResponse = ListFeatureGroupsResponse'
  { _lfgrrsResponseStatus ::
      !Int,
    _lfgrrsFeatureGroupSummaries ::
      ![FeatureGroupSummary],
    _lfgrrsNextToken ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListFeatureGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfgrrsResponseStatus' - -- | The response status code.
--
-- * 'lfgrrsFeatureGroupSummaries' - A summary of feature groups.
--
-- * 'lfgrrsNextToken' - A token to resume pagination of @ListFeatureGroups@ results.
listFeatureGroupsResponse ::
  -- | 'lfgrrsResponseStatus'
  Int ->
  -- | 'lfgrrsNextToken'
  Text ->
  ListFeatureGroupsResponse
listFeatureGroupsResponse
  pResponseStatus_
  pNextToken_ =
    ListFeatureGroupsResponse'
      { _lfgrrsResponseStatus =
          pResponseStatus_,
        _lfgrrsFeatureGroupSummaries = mempty,
        _lfgrrsNextToken = pNextToken_
      }

-- | -- | The response status code.
lfgrrsResponseStatus :: Lens' ListFeatureGroupsResponse Int
lfgrrsResponseStatus = lens _lfgrrsResponseStatus (\s a -> s {_lfgrrsResponseStatus = a})

-- | A summary of feature groups.
lfgrrsFeatureGroupSummaries :: Lens' ListFeatureGroupsResponse [FeatureGroupSummary]
lfgrrsFeatureGroupSummaries = lens _lfgrrsFeatureGroupSummaries (\s a -> s {_lfgrrsFeatureGroupSummaries = a}) . _Coerce

-- | A token to resume pagination of @ListFeatureGroups@ results.
lfgrrsNextToken :: Lens' ListFeatureGroupsResponse Text
lfgrrsNextToken = lens _lfgrrsNextToken (\s a -> s {_lfgrrsNextToken = a})

instance NFData ListFeatureGroupsResponse
