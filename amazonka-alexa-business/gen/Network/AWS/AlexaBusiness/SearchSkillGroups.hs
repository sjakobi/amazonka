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
-- Module      : Network.AWS.AlexaBusiness.SearchSkillGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches skill groups and lists the ones that meet a set of filter and sort criteria.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.SearchSkillGroups
  ( -- * Creating a Request
    searchSkillGroups,
    SearchSkillGroups,

    -- * Request Lenses
    ssgNextToken,
    ssgSortCriteria,
    ssgMaxResults,
    ssgFilters,

    -- * Destructuring the Response
    searchSkillGroupsResponse,
    SearchSkillGroupsResponse,

    -- * Response Lenses
    ssgrrsNextToken,
    ssgrrsTotalCount,
    ssgrrsSkillGroups,
    ssgrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchSkillGroups' smart constructor.
data SearchSkillGroups = SearchSkillGroups'
  { _ssgNextToken ::
      !(Maybe Text),
    _ssgSortCriteria :: !(Maybe [Sort]),
    _ssgMaxResults :: !(Maybe Nat),
    _ssgFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchSkillGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ . Required.
--
-- * 'ssgSortCriteria' - The sort order to use in listing the specified set of skill groups. The supported sort key is SkillGroupName.
--
-- * 'ssgMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
--
-- * 'ssgFilters' - The filters to use to list a specified set of skill groups. The supported filter key is SkillGroupName.
searchSkillGroups ::
  SearchSkillGroups
searchSkillGroups =
  SearchSkillGroups'
    { _ssgNextToken = Nothing,
      _ssgSortCriteria = Nothing,
      _ssgMaxResults = Nothing,
      _ssgFilters = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ . Required.
ssgNextToken :: Lens' SearchSkillGroups (Maybe Text)
ssgNextToken = lens _ssgNextToken (\s a -> s {_ssgNextToken = a})

-- | The sort order to use in listing the specified set of skill groups. The supported sort key is SkillGroupName.
ssgSortCriteria :: Lens' SearchSkillGroups [Sort]
ssgSortCriteria = lens _ssgSortCriteria (\s a -> s {_ssgSortCriteria = a}) . _Default . _Coerce

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
ssgMaxResults :: Lens' SearchSkillGroups (Maybe Natural)
ssgMaxResults = lens _ssgMaxResults (\s a -> s {_ssgMaxResults = a}) . mapping _Nat

-- | The filters to use to list a specified set of skill groups. The supported filter key is SkillGroupName.
ssgFilters :: Lens' SearchSkillGroups [Filter]
ssgFilters = lens _ssgFilters (\s a -> s {_ssgFilters = a}) . _Default . _Coerce

instance AWSPager SearchSkillGroups where
  page rq rs
    | stop (rs ^. ssgrrsNextToken) = Nothing
    | stop (rs ^. ssgrrsSkillGroups) = Nothing
    | otherwise =
      Just $ rq & ssgNextToken .~ rs ^. ssgrrsNextToken

instance AWSRequest SearchSkillGroups where
  type Rs SearchSkillGroups = SearchSkillGroupsResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          SearchSkillGroupsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TotalCount")
            <*> (x .?> "SkillGroups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SearchSkillGroups

instance NFData SearchSkillGroups

instance ToHeaders SearchSkillGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.SearchSkillGroups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchSkillGroups where
  toJSON SearchSkillGroups' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ssgNextToken,
            ("SortCriteria" .=) <$> _ssgSortCriteria,
            ("MaxResults" .=) <$> _ssgMaxResults,
            ("Filters" .=) <$> _ssgFilters
          ]
      )

instance ToPath SearchSkillGroups where
  toPath = const "/"

instance ToQuery SearchSkillGroups where
  toQuery = const mempty

-- | /See:/ 'searchSkillGroupsResponse' smart constructor.
data SearchSkillGroupsResponse = SearchSkillGroupsResponse'
  { _ssgrrsNextToken ::
      !(Maybe Text),
    _ssgrrsTotalCount ::
      !(Maybe Int),
    _ssgrrsSkillGroups ::
      !( Maybe
           [SkillGroupData]
       ),
    _ssgrrsResponseStatus ::
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

-- | Creates a value of 'SearchSkillGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgrrsNextToken' - The token returned to indicate that there is more data available.
--
-- * 'ssgrrsTotalCount' - The total number of skill groups returned.
--
-- * 'ssgrrsSkillGroups' - The skill groups that meet the filter criteria, in sort order.
--
-- * 'ssgrrsResponseStatus' - -- | The response status code.
searchSkillGroupsResponse ::
  -- | 'ssgrrsResponseStatus'
  Int ->
  SearchSkillGroupsResponse
searchSkillGroupsResponse pResponseStatus_ =
  SearchSkillGroupsResponse'
    { _ssgrrsNextToken =
        Nothing,
      _ssgrrsTotalCount = Nothing,
      _ssgrrsSkillGroups = Nothing,
      _ssgrrsResponseStatus = pResponseStatus_
    }

-- | The token returned to indicate that there is more data available.
ssgrrsNextToken :: Lens' SearchSkillGroupsResponse (Maybe Text)
ssgrrsNextToken = lens _ssgrrsNextToken (\s a -> s {_ssgrrsNextToken = a})

-- | The total number of skill groups returned.
ssgrrsTotalCount :: Lens' SearchSkillGroupsResponse (Maybe Int)
ssgrrsTotalCount = lens _ssgrrsTotalCount (\s a -> s {_ssgrrsTotalCount = a})

-- | The skill groups that meet the filter criteria, in sort order.
ssgrrsSkillGroups :: Lens' SearchSkillGroupsResponse [SkillGroupData]
ssgrrsSkillGroups = lens _ssgrrsSkillGroups (\s a -> s {_ssgrrsSkillGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
ssgrrsResponseStatus :: Lens' SearchSkillGroupsResponse Int
ssgrrsResponseStatus = lens _ssgrrsResponseStatus (\s a -> s {_ssgrrsResponseStatus = a})

instance NFData SearchSkillGroupsResponse
