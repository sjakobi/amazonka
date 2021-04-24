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
-- Module      : Network.AWS.AlexaBusiness.SearchAddressBooks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches address books and lists the ones that meet a set of filter and sort criteria.
module Network.AWS.AlexaBusiness.SearchAddressBooks
  ( -- * Creating a Request
    searchAddressBooks,
    SearchAddressBooks,

    -- * Request Lenses
    sabNextToken,
    sabSortCriteria,
    sabMaxResults,
    sabFilters,

    -- * Destructuring the Response
    searchAddressBooksResponse,
    SearchAddressBooksResponse,

    -- * Response Lenses
    sabrrsNextToken,
    sabrrsAddressBooks,
    sabrrsTotalCount,
    sabrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchAddressBooks' smart constructor.
data SearchAddressBooks = SearchAddressBooks'
  { _sabNextToken ::
      !(Maybe Text),
    _sabSortCriteria ::
      !(Maybe [Sort]),
    _sabMaxResults :: !(Maybe Nat),
    _sabFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchAddressBooks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sabNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.
--
-- * 'sabSortCriteria' - The sort order to use in listing the specified set of address books. The supported sort key is AddressBookName.
--
-- * 'sabMaxResults' - The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
--
-- * 'sabFilters' - The filters to use to list a specified set of address books. The supported filter key is AddressBookName.
searchAddressBooks ::
  SearchAddressBooks
searchAddressBooks =
  SearchAddressBooks'
    { _sabNextToken = Nothing,
      _sabSortCriteria = Nothing,
      _sabMaxResults = Nothing,
      _sabFilters = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.
sabNextToken :: Lens' SearchAddressBooks (Maybe Text)
sabNextToken = lens _sabNextToken (\s a -> s {_sabNextToken = a})

-- | The sort order to use in listing the specified set of address books. The supported sort key is AddressBookName.
sabSortCriteria :: Lens' SearchAddressBooks [Sort]
sabSortCriteria = lens _sabSortCriteria (\s a -> s {_sabSortCriteria = a}) . _Default . _Coerce

-- | The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
sabMaxResults :: Lens' SearchAddressBooks (Maybe Natural)
sabMaxResults = lens _sabMaxResults (\s a -> s {_sabMaxResults = a}) . mapping _Nat

-- | The filters to use to list a specified set of address books. The supported filter key is AddressBookName.
sabFilters :: Lens' SearchAddressBooks [Filter]
sabFilters = lens _sabFilters (\s a -> s {_sabFilters = a}) . _Default . _Coerce

instance AWSRequest SearchAddressBooks where
  type
    Rs SearchAddressBooks =
      SearchAddressBooksResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          SearchAddressBooksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AddressBooks" .!@ mempty)
            <*> (x .?> "TotalCount")
            <*> (pure (fromEnum s))
      )

instance Hashable SearchAddressBooks

instance NFData SearchAddressBooks

instance ToHeaders SearchAddressBooks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.SearchAddressBooks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchAddressBooks where
  toJSON SearchAddressBooks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _sabNextToken,
            ("SortCriteria" .=) <$> _sabSortCriteria,
            ("MaxResults" .=) <$> _sabMaxResults,
            ("Filters" .=) <$> _sabFilters
          ]
      )

instance ToPath SearchAddressBooks where
  toPath = const "/"

instance ToQuery SearchAddressBooks where
  toQuery = const mempty

-- | /See:/ 'searchAddressBooksResponse' smart constructor.
data SearchAddressBooksResponse = SearchAddressBooksResponse'
  { _sabrrsNextToken ::
      !(Maybe Text),
    _sabrrsAddressBooks ::
      !( Maybe
           [AddressBookData]
       ),
    _sabrrsTotalCount ::
      !(Maybe Int),
    _sabrrsResponseStatus ::
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

-- | Creates a value of 'SearchAddressBooksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sabrrsNextToken' - The token returned to indicate that there is more data available.
--
-- * 'sabrrsAddressBooks' - The address books that meet the specified set of filter criteria, in sort order.
--
-- * 'sabrrsTotalCount' - The total number of address books returned.
--
-- * 'sabrrsResponseStatus' - -- | The response status code.
searchAddressBooksResponse ::
  -- | 'sabrrsResponseStatus'
  Int ->
  SearchAddressBooksResponse
searchAddressBooksResponse pResponseStatus_ =
  SearchAddressBooksResponse'
    { _sabrrsNextToken =
        Nothing,
      _sabrrsAddressBooks = Nothing,
      _sabrrsTotalCount = Nothing,
      _sabrrsResponseStatus = pResponseStatus_
    }

-- | The token returned to indicate that there is more data available.
sabrrsNextToken :: Lens' SearchAddressBooksResponse (Maybe Text)
sabrrsNextToken = lens _sabrrsNextToken (\s a -> s {_sabrrsNextToken = a})

-- | The address books that meet the specified set of filter criteria, in sort order.
sabrrsAddressBooks :: Lens' SearchAddressBooksResponse [AddressBookData]
sabrrsAddressBooks = lens _sabrrsAddressBooks (\s a -> s {_sabrrsAddressBooks = a}) . _Default . _Coerce

-- | The total number of address books returned.
sabrrsTotalCount :: Lens' SearchAddressBooksResponse (Maybe Int)
sabrrsTotalCount = lens _sabrrsTotalCount (\s a -> s {_sabrrsTotalCount = a})

-- | -- | The response status code.
sabrrsResponseStatus :: Lens' SearchAddressBooksResponse Int
sabrrsResponseStatus = lens _sabrrsResponseStatus (\s a -> s {_sabrrsResponseStatus = a})

instance NFData SearchAddressBooksResponse
