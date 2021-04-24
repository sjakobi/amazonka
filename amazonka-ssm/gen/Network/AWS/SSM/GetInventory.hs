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
-- Module      : Network.AWS.SSM.GetInventory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query inventory information.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.GetInventory
  ( -- * Creating a Request
    getInventory,
    GetInventory,

    -- * Request Lenses
    giNextToken,
    giMaxResults,
    giResultAttributes,
    giFilters,
    giAggregators,

    -- * Destructuring the Response
    getInventoryResponse,
    GetInventoryResponse,

    -- * Response Lenses
    girrsNextToken,
    girrsEntities,
    girrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getInventory' smart constructor.
data GetInventory = GetInventory'
  { _giNextToken ::
      !(Maybe Text),
    _giMaxResults :: !(Maybe Nat),
    _giResultAttributes ::
      !(Maybe (List1 ResultAttribute)),
    _giFilters ::
      !(Maybe (List1 InventoryFilter)),
    _giAggregators ::
      !(Maybe (List1 InventoryAggregator))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetInventory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'giMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'giResultAttributes' - The list of inventory item types to return.
--
-- * 'giFilters' - One or more filters. Use a filter to return a more specific list of results.
--
-- * 'giAggregators' - Returns counts of inventory types based on one or more expressions. For example, if you aggregate by using an expression that uses the @AWS:InstanceInformation.PlatformType@ type, you can see a count of how many Windows and Linux instances exist in your inventoried fleet.
getInventory ::
  GetInventory
getInventory =
  GetInventory'
    { _giNextToken = Nothing,
      _giMaxResults = Nothing,
      _giResultAttributes = Nothing,
      _giFilters = Nothing,
      _giAggregators = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
giNextToken :: Lens' GetInventory (Maybe Text)
giNextToken = lens _giNextToken (\s a -> s {_giNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
giMaxResults :: Lens' GetInventory (Maybe Natural)
giMaxResults = lens _giMaxResults (\s a -> s {_giMaxResults = a}) . mapping _Nat

-- | The list of inventory item types to return.
giResultAttributes :: Lens' GetInventory (Maybe (NonEmpty ResultAttribute))
giResultAttributes = lens _giResultAttributes (\s a -> s {_giResultAttributes = a}) . mapping _List1

-- | One or more filters. Use a filter to return a more specific list of results.
giFilters :: Lens' GetInventory (Maybe (NonEmpty InventoryFilter))
giFilters = lens _giFilters (\s a -> s {_giFilters = a}) . mapping _List1

-- | Returns counts of inventory types based on one or more expressions. For example, if you aggregate by using an expression that uses the @AWS:InstanceInformation.PlatformType@ type, you can see a count of how many Windows and Linux instances exist in your inventoried fleet.
giAggregators :: Lens' GetInventory (Maybe (NonEmpty InventoryAggregator))
giAggregators = lens _giAggregators (\s a -> s {_giAggregators = a}) . mapping _List1

instance AWSPager GetInventory where
  page rq rs
    | stop (rs ^. girrsNextToken) = Nothing
    | stop (rs ^. girrsEntities) = Nothing
    | otherwise =
      Just $ rq & giNextToken .~ rs ^. girrsNextToken

instance AWSRequest GetInventory where
  type Rs GetInventory = GetInventoryResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetInventoryResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Entities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetInventory

instance NFData GetInventory

instance ToHeaders GetInventory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetInventory" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetInventory where
  toJSON GetInventory' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _giNextToken,
            ("MaxResults" .=) <$> _giMaxResults,
            ("ResultAttributes" .=) <$> _giResultAttributes,
            ("Filters" .=) <$> _giFilters,
            ("Aggregators" .=) <$> _giAggregators
          ]
      )

instance ToPath GetInventory where
  toPath = const "/"

instance ToQuery GetInventory where
  toQuery = const mempty

-- | /See:/ 'getInventoryResponse' smart constructor.
data GetInventoryResponse = GetInventoryResponse'
  { _girrsNextToken ::
      !(Maybe Text),
    _girrsEntities ::
      !( Maybe
           [InventoryResultEntity]
       ),
    _girrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetInventoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'girrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'girrsEntities' - Collection of inventory entities such as a collection of instance inventory.
--
-- * 'girrsResponseStatus' - -- | The response status code.
getInventoryResponse ::
  -- | 'girrsResponseStatus'
  Int ->
  GetInventoryResponse
getInventoryResponse pResponseStatus_ =
  GetInventoryResponse'
    { _girrsNextToken = Nothing,
      _girrsEntities = Nothing,
      _girrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
girrsNextToken :: Lens' GetInventoryResponse (Maybe Text)
girrsNextToken = lens _girrsNextToken (\s a -> s {_girrsNextToken = a})

-- | Collection of inventory entities such as a collection of instance inventory.
girrsEntities :: Lens' GetInventoryResponse [InventoryResultEntity]
girrsEntities = lens _girrsEntities (\s a -> s {_girrsEntities = a}) . _Default . _Coerce

-- | -- | The response status code.
girrsResponseStatus :: Lens' GetInventoryResponse Int
girrsResponseStatus = lens _girrsResponseStatus (\s a -> s {_girrsResponseStatus = a})

instance NFData GetInventoryResponse
