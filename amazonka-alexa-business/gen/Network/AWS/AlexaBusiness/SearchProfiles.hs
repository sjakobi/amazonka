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
-- Module      : Network.AWS.AlexaBusiness.SearchProfiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches room profiles and lists the ones that meet a set of filter criteria.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.SearchProfiles
  ( -- * Creating a Request
    searchProfiles,
    SearchProfiles,

    -- * Request Lenses
    spNextToken,
    spSortCriteria,
    spMaxResults,
    spFilters,

    -- * Destructuring the Response
    searchProfilesResponse,
    SearchProfilesResponse,

    -- * Response Lenses
    sprrsNextToken,
    sprrsProfiles,
    sprrsTotalCount,
    sprrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchProfiles' smart constructor.
data SearchProfiles = SearchProfiles'
  { _spNextToken ::
      !(Maybe Text),
    _spSortCriteria :: !(Maybe [Sort]),
    _spMaxResults :: !(Maybe Nat),
    _spFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchProfiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'spSortCriteria' - The sort order to use in listing the specified set of room profiles. Supported sort keys are ProfileName and Address.
--
-- * 'spMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
--
-- * 'spFilters' - The filters to use to list a specified set of room profiles. Supported filter keys are ProfileName and Address. Required.
searchProfiles ::
  SearchProfiles
searchProfiles =
  SearchProfiles'
    { _spNextToken = Nothing,
      _spSortCriteria = Nothing,
      _spMaxResults = Nothing,
      _spFilters = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
spNextToken :: Lens' SearchProfiles (Maybe Text)
spNextToken = lens _spNextToken (\s a -> s {_spNextToken = a})

-- | The sort order to use in listing the specified set of room profiles. Supported sort keys are ProfileName and Address.
spSortCriteria :: Lens' SearchProfiles [Sort]
spSortCriteria = lens _spSortCriteria (\s a -> s {_spSortCriteria = a}) . _Default . _Coerce

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
spMaxResults :: Lens' SearchProfiles (Maybe Natural)
spMaxResults = lens _spMaxResults (\s a -> s {_spMaxResults = a}) . mapping _Nat

-- | The filters to use to list a specified set of room profiles. Supported filter keys are ProfileName and Address. Required.
spFilters :: Lens' SearchProfiles [Filter]
spFilters = lens _spFilters (\s a -> s {_spFilters = a}) . _Default . _Coerce

instance AWSPager SearchProfiles where
  page rq rs
    | stop (rs ^. sprrsNextToken) = Nothing
    | stop (rs ^. sprrsProfiles) = Nothing
    | otherwise =
      Just $ rq & spNextToken .~ rs ^. sprrsNextToken

instance AWSRequest SearchProfiles where
  type Rs SearchProfiles = SearchProfilesResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          SearchProfilesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Profiles" .!@ mempty)
            <*> (x .?> "TotalCount")
            <*> (pure (fromEnum s))
      )

instance Hashable SearchProfiles

instance NFData SearchProfiles

instance ToHeaders SearchProfiles where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.SearchProfiles" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchProfiles where
  toJSON SearchProfiles' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _spNextToken,
            ("SortCriteria" .=) <$> _spSortCriteria,
            ("MaxResults" .=) <$> _spMaxResults,
            ("Filters" .=) <$> _spFilters
          ]
      )

instance ToPath SearchProfiles where
  toPath = const "/"

instance ToQuery SearchProfiles where
  toQuery = const mempty

-- | /See:/ 'searchProfilesResponse' smart constructor.
data SearchProfilesResponse = SearchProfilesResponse'
  { _sprrsNextToken ::
      !(Maybe Text),
    _sprrsProfiles ::
      !(Maybe [ProfileData]),
    _sprrsTotalCount ::
      !(Maybe Int),
    _sprrsResponseStatus ::
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

-- | Creates a value of 'SearchProfilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sprrsNextToken' - The token returned to indicate that there is more data available.
--
-- * 'sprrsProfiles' - The profiles that meet the specified set of filter criteria, in sort order.
--
-- * 'sprrsTotalCount' - The total number of room profiles returned.
--
-- * 'sprrsResponseStatus' - -- | The response status code.
searchProfilesResponse ::
  -- | 'sprrsResponseStatus'
  Int ->
  SearchProfilesResponse
searchProfilesResponse pResponseStatus_ =
  SearchProfilesResponse'
    { _sprrsNextToken = Nothing,
      _sprrsProfiles = Nothing,
      _sprrsTotalCount = Nothing,
      _sprrsResponseStatus = pResponseStatus_
    }

-- | The token returned to indicate that there is more data available.
sprrsNextToken :: Lens' SearchProfilesResponse (Maybe Text)
sprrsNextToken = lens _sprrsNextToken (\s a -> s {_sprrsNextToken = a})

-- | The profiles that meet the specified set of filter criteria, in sort order.
sprrsProfiles :: Lens' SearchProfilesResponse [ProfileData]
sprrsProfiles = lens _sprrsProfiles (\s a -> s {_sprrsProfiles = a}) . _Default . _Coerce

-- | The total number of room profiles returned.
sprrsTotalCount :: Lens' SearchProfilesResponse (Maybe Int)
sprrsTotalCount = lens _sprrsTotalCount (\s a -> s {_sprrsTotalCount = a})

-- | -- | The response status code.
sprrsResponseStatus :: Lens' SearchProfilesResponse Int
sprrsResponseStatus = lens _sprrsResponseStatus (\s a -> s {_sprrsResponseStatus = a})

instance NFData SearchProfilesResponse
