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
-- Module      : Network.AWS.AlexaBusiness.SearchContacts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches contacts and lists the ones that meet a set of filter and sort criteria.
module Network.AWS.AlexaBusiness.SearchContacts
  ( -- * Creating a Request
    searchContacts,
    SearchContacts,

    -- * Request Lenses
    scNextToken,
    scSortCriteria,
    scMaxResults,
    scFilters,

    -- * Destructuring the Response
    searchContactsResponse,
    SearchContactsResponse,

    -- * Response Lenses
    scrrsNextToken,
    scrrsTotalCount,
    scrrsContacts,
    scrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchContacts' smart constructor.
data SearchContacts = SearchContacts'
  { _scNextToken ::
      !(Maybe Text),
    _scSortCriteria :: !(Maybe [Sort]),
    _scMaxResults :: !(Maybe Nat),
    _scFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchContacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.
--
-- * 'scSortCriteria' - The sort order to use in listing the specified set of contacts. The supported sort keys are DisplayName, FirstName, and LastName.
--
-- * 'scMaxResults' - The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
--
-- * 'scFilters' - The filters to use to list a specified set of address books. The supported filter keys are DisplayName, FirstName, LastName, and AddressBookArns.
searchContacts ::
  SearchContacts
searchContacts =
  SearchContacts'
    { _scNextToken = Nothing,
      _scSortCriteria = Nothing,
      _scMaxResults = Nothing,
      _scFilters = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.
scNextToken :: Lens' SearchContacts (Maybe Text)
scNextToken = lens _scNextToken (\s a -> s {_scNextToken = a})

-- | The sort order to use in listing the specified set of contacts. The supported sort keys are DisplayName, FirstName, and LastName.
scSortCriteria :: Lens' SearchContacts [Sort]
scSortCriteria = lens _scSortCriteria (\s a -> s {_scSortCriteria = a}) . _Default . _Coerce

-- | The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
scMaxResults :: Lens' SearchContacts (Maybe Natural)
scMaxResults = lens _scMaxResults (\s a -> s {_scMaxResults = a}) . mapping _Nat

-- | The filters to use to list a specified set of address books. The supported filter keys are DisplayName, FirstName, LastName, and AddressBookArns.
scFilters :: Lens' SearchContacts [Filter]
scFilters = lens _scFilters (\s a -> s {_scFilters = a}) . _Default . _Coerce

instance AWSRequest SearchContacts where
  type Rs SearchContacts = SearchContactsResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          SearchContactsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TotalCount")
            <*> (x .?> "Contacts" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SearchContacts

instance NFData SearchContacts

instance ToHeaders SearchContacts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.SearchContacts" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchContacts where
  toJSON SearchContacts' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _scNextToken,
            ("SortCriteria" .=) <$> _scSortCriteria,
            ("MaxResults" .=) <$> _scMaxResults,
            ("Filters" .=) <$> _scFilters
          ]
      )

instance ToPath SearchContacts where
  toPath = const "/"

instance ToQuery SearchContacts where
  toQuery = const mempty

-- | /See:/ 'searchContactsResponse' smart constructor.
data SearchContactsResponse = SearchContactsResponse'
  { _scrrsNextToken ::
      !(Maybe Text),
    _scrrsTotalCount ::
      !(Maybe Int),
    _scrrsContacts ::
      !(Maybe [ContactData]),
    _scrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchContactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrrsNextToken' - The token returned to indicate that there is more data available.
--
-- * 'scrrsTotalCount' - The total number of contacts returned.
--
-- * 'scrrsContacts' - The contacts that meet the specified set of filter criteria, in sort order.
--
-- * 'scrrsResponseStatus' - -- | The response status code.
searchContactsResponse ::
  -- | 'scrrsResponseStatus'
  Int ->
  SearchContactsResponse
searchContactsResponse pResponseStatus_ =
  SearchContactsResponse'
    { _scrrsNextToken = Nothing,
      _scrrsTotalCount = Nothing,
      _scrrsContacts = Nothing,
      _scrrsResponseStatus = pResponseStatus_
    }

-- | The token returned to indicate that there is more data available.
scrrsNextToken :: Lens' SearchContactsResponse (Maybe Text)
scrrsNextToken = lens _scrrsNextToken (\s a -> s {_scrrsNextToken = a})

-- | The total number of contacts returned.
scrrsTotalCount :: Lens' SearchContactsResponse (Maybe Int)
scrrsTotalCount = lens _scrrsTotalCount (\s a -> s {_scrrsTotalCount = a})

-- | The contacts that meet the specified set of filter criteria, in sort order.
scrrsContacts :: Lens' SearchContactsResponse [ContactData]
scrrsContacts = lens _scrrsContacts (\s a -> s {_scrrsContacts = a}) . _Default . _Coerce

-- | -- | The response status code.
scrrsResponseStatus :: Lens' SearchContactsResponse Int
scrrsResponseStatus = lens _scrrsResponseStatus (\s a -> s {_scrrsResponseStatus = a})

instance NFData SearchContactsResponse
