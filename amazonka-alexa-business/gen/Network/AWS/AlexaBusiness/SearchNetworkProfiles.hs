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
-- Module      : Network.AWS.AlexaBusiness.SearchNetworkProfiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches network profiles and lists the ones that meet a set of filter and sort criteria.
module Network.AWS.AlexaBusiness.SearchNetworkProfiles
  ( -- * Creating a Request
    searchNetworkProfiles,
    SearchNetworkProfiles,

    -- * Request Lenses
    snpNextToken,
    snpSortCriteria,
    snpMaxResults,
    snpFilters,

    -- * Destructuring the Response
    searchNetworkProfilesResponse,
    SearchNetworkProfilesResponse,

    -- * Response Lenses
    snprrsNextToken,
    snprrsNetworkProfiles,
    snprrsTotalCount,
    snprrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchNetworkProfiles' smart constructor.
data SearchNetworkProfiles = SearchNetworkProfiles'
  { _snpNextToken ::
      !(Maybe Text),
    _snpSortCriteria ::
      !(Maybe [Sort]),
    _snpMaxResults ::
      !(Maybe Nat),
    _snpFilters ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SearchNetworkProfiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snpNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
--
-- * 'snpSortCriteria' - The sort order to use to list the specified set of network profiles. Valid sort criteria includes NetworkProfileName, Ssid, and SecurityType.
--
-- * 'snpMaxResults' - The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
--
-- * 'snpFilters' - The filters to use to list a specified set of network profiles. Valid filters are NetworkProfileName, Ssid, and SecurityType.
searchNetworkProfiles ::
  SearchNetworkProfiles
searchNetworkProfiles =
  SearchNetworkProfiles'
    { _snpNextToken = Nothing,
      _snpSortCriteria = Nothing,
      _snpMaxResults = Nothing,
      _snpFilters = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
snpNextToken :: Lens' SearchNetworkProfiles (Maybe Text)
snpNextToken = lens _snpNextToken (\s a -> s {_snpNextToken = a})

-- | The sort order to use to list the specified set of network profiles. Valid sort criteria includes NetworkProfileName, Ssid, and SecurityType.
snpSortCriteria :: Lens' SearchNetworkProfiles [Sort]
snpSortCriteria = lens _snpSortCriteria (\s a -> s {_snpSortCriteria = a}) . _Default . _Coerce

-- | The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
snpMaxResults :: Lens' SearchNetworkProfiles (Maybe Natural)
snpMaxResults = lens _snpMaxResults (\s a -> s {_snpMaxResults = a}) . mapping _Nat

-- | The filters to use to list a specified set of network profiles. Valid filters are NetworkProfileName, Ssid, and SecurityType.
snpFilters :: Lens' SearchNetworkProfiles [Filter]
snpFilters = lens _snpFilters (\s a -> s {_snpFilters = a}) . _Default . _Coerce

instance AWSRequest SearchNetworkProfiles where
  type
    Rs SearchNetworkProfiles =
      SearchNetworkProfilesResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          SearchNetworkProfilesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "NetworkProfiles" .!@ mempty)
            <*> (x .?> "TotalCount")
            <*> (pure (fromEnum s))
      )

instance Hashable SearchNetworkProfiles

instance NFData SearchNetworkProfiles

instance ToHeaders SearchNetworkProfiles where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.SearchNetworkProfiles" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchNetworkProfiles where
  toJSON SearchNetworkProfiles' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _snpNextToken,
            ("SortCriteria" .=) <$> _snpSortCriteria,
            ("MaxResults" .=) <$> _snpMaxResults,
            ("Filters" .=) <$> _snpFilters
          ]
      )

instance ToPath SearchNetworkProfiles where
  toPath = const "/"

instance ToQuery SearchNetworkProfiles where
  toQuery = const mempty

-- | /See:/ 'searchNetworkProfilesResponse' smart constructor.
data SearchNetworkProfilesResponse = SearchNetworkProfilesResponse'
  { _snprrsNextToken ::
      !( Maybe
           Text
       ),
    _snprrsNetworkProfiles ::
      !( Maybe
           [NetworkProfileData]
       ),
    _snprrsTotalCount ::
      !( Maybe
           Int
       ),
    _snprrsResponseStatus ::
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

-- | Creates a value of 'SearchNetworkProfilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snprrsNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
--
-- * 'snprrsNetworkProfiles' - The network profiles that meet the specified set of filter criteria, in sort order. It is a list of NetworkProfileData objects.
--
-- * 'snprrsTotalCount' - The total number of network profiles returned.
--
-- * 'snprrsResponseStatus' - -- | The response status code.
searchNetworkProfilesResponse ::
  -- | 'snprrsResponseStatus'
  Int ->
  SearchNetworkProfilesResponse
searchNetworkProfilesResponse pResponseStatus_ =
  SearchNetworkProfilesResponse'
    { _snprrsNextToken =
        Nothing,
      _snprrsNetworkProfiles = Nothing,
      _snprrsTotalCount = Nothing,
      _snprrsResponseStatus = pResponseStatus_
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
snprrsNextToken :: Lens' SearchNetworkProfilesResponse (Maybe Text)
snprrsNextToken = lens _snprrsNextToken (\s a -> s {_snprrsNextToken = a})

-- | The network profiles that meet the specified set of filter criteria, in sort order. It is a list of NetworkProfileData objects.
snprrsNetworkProfiles :: Lens' SearchNetworkProfilesResponse [NetworkProfileData]
snprrsNetworkProfiles = lens _snprrsNetworkProfiles (\s a -> s {_snprrsNetworkProfiles = a}) . _Default . _Coerce

-- | The total number of network profiles returned.
snprrsTotalCount :: Lens' SearchNetworkProfilesResponse (Maybe Int)
snprrsTotalCount = lens _snprrsTotalCount (\s a -> s {_snprrsTotalCount = a})

-- | -- | The response status code.
snprrsResponseStatus :: Lens' SearchNetworkProfilesResponse Int
snprrsResponseStatus = lens _snprrsResponseStatus (\s a -> s {_snprrsResponseStatus = a})

instance NFData SearchNetworkProfilesResponse
