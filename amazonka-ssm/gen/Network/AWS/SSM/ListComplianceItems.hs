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
-- Module      : Network.AWS.SSM.ListComplianceItems
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For a specified resource ID, this API action returns a list of compliance statuses for different resource types. Currently, you can only specify one resource ID per call. List results depend on the criteria specified in the filter.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListComplianceItems
  ( -- * Creating a Request
    listComplianceItems,
    ListComplianceItems,

    -- * Request Lenses
    lciNextToken,
    lciResourceTypes,
    lciMaxResults,
    lciResourceIds,
    lciFilters,

    -- * Destructuring the Response
    listComplianceItemsResponse,
    ListComplianceItemsResponse,

    -- * Response Lenses
    lrsNextToken,
    lrsComplianceItems,
    lrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listComplianceItems' smart constructor.
data ListComplianceItems = ListComplianceItems'
  { _lciNextToken ::
      !(Maybe Text),
    _lciResourceTypes ::
      !(Maybe (List1 Text)),
    _lciMaxResults :: !(Maybe Nat),
    _lciResourceIds ::
      !(Maybe (List1 Text)),
    _lciFilters ::
      !( Maybe
           [ComplianceStringFilter]
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListComplianceItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lciNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'lciResourceTypes' - The type of resource from which to get compliance information. Currently, the only supported resource type is @ManagedInstance@ .
--
-- * 'lciMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'lciResourceIds' - The ID for the resources from which to get compliance information. Currently, you can only specify one resource ID.
--
-- * 'lciFilters' - One or more compliance filters. Use a filter to return a more specific list of results.
listComplianceItems ::
  ListComplianceItems
listComplianceItems =
  ListComplianceItems'
    { _lciNextToken = Nothing,
      _lciResourceTypes = Nothing,
      _lciMaxResults = Nothing,
      _lciResourceIds = Nothing,
      _lciFilters = Nothing
    }

-- | A token to start the list. Use this token to get the next set of results.
lciNextToken :: Lens' ListComplianceItems (Maybe Text)
lciNextToken = lens _lciNextToken (\s a -> s {_lciNextToken = a})

-- | The type of resource from which to get compliance information. Currently, the only supported resource type is @ManagedInstance@ .
lciResourceTypes :: Lens' ListComplianceItems (Maybe (NonEmpty Text))
lciResourceTypes = lens _lciResourceTypes (\s a -> s {_lciResourceTypes = a}) . mapping _List1

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
lciMaxResults :: Lens' ListComplianceItems (Maybe Natural)
lciMaxResults = lens _lciMaxResults (\s a -> s {_lciMaxResults = a}) . mapping _Nat

-- | The ID for the resources from which to get compliance information. Currently, you can only specify one resource ID.
lciResourceIds :: Lens' ListComplianceItems (Maybe (NonEmpty Text))
lciResourceIds = lens _lciResourceIds (\s a -> s {_lciResourceIds = a}) . mapping _List1

-- | One or more compliance filters. Use a filter to return a more specific list of results.
lciFilters :: Lens' ListComplianceItems [ComplianceStringFilter]
lciFilters = lens _lciFilters (\s a -> s {_lciFilters = a}) . _Default . _Coerce

instance AWSPager ListComplianceItems where
  page rq rs
    | stop (rs ^. lrsNextToken) = Nothing
    | stop (rs ^. lrsComplianceItems) = Nothing
    | otherwise =
      Just $ rq & lciNextToken .~ rs ^. lrsNextToken

instance AWSRequest ListComplianceItems where
  type
    Rs ListComplianceItems =
      ListComplianceItemsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListComplianceItemsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ComplianceItems" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListComplianceItems

instance NFData ListComplianceItems

instance ToHeaders ListComplianceItems where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListComplianceItems" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListComplianceItems where
  toJSON ListComplianceItems' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lciNextToken,
            ("ResourceTypes" .=) <$> _lciResourceTypes,
            ("MaxResults" .=) <$> _lciMaxResults,
            ("ResourceIds" .=) <$> _lciResourceIds,
            ("Filters" .=) <$> _lciFilters
          ]
      )

instance ToPath ListComplianceItems where
  toPath = const "/"

instance ToQuery ListComplianceItems where
  toQuery = const mempty

-- | /See:/ 'listComplianceItemsResponse' smart constructor.
data ListComplianceItemsResponse = ListComplianceItemsResponse'
  { _lrsNextToken ::
      !(Maybe Text),
    _lrsComplianceItems ::
      !( Maybe
           [ComplianceItem]
       ),
    _lrsResponseStatus ::
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

-- | Creates a value of 'ListComplianceItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'lrsComplianceItems' - A list of compliance information for the specified resource ID.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listComplianceItemsResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListComplianceItemsResponse
listComplianceItemsResponse pResponseStatus_ =
  ListComplianceItemsResponse'
    { _lrsNextToken =
        Nothing,
      _lrsComplianceItems = Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. Use this token to get the next set of results.
lrsNextToken :: Lens' ListComplianceItemsResponse (Maybe Text)
lrsNextToken = lens _lrsNextToken (\s a -> s {_lrsNextToken = a})

-- | A list of compliance information for the specified resource ID.
lrsComplianceItems :: Lens' ListComplianceItemsResponse [ComplianceItem]
lrsComplianceItems = lens _lrsComplianceItems (\s a -> s {_lrsComplianceItems = a}) . _Default . _Coerce

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListComplianceItemsResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListComplianceItemsResponse
