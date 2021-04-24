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
-- Module      : Network.AWS.SSM.GetOpsSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- View a summary of OpsItems based on specified filters and aggregators.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.GetOpsSummary
  ( -- * Creating a Request
    getOpsSummary,
    GetOpsSummary,

    -- * Request Lenses
    gosNextToken,
    gosMaxResults,
    gosSyncName,
    gosResultAttributes,
    gosFilters,
    gosAggregators,

    -- * Destructuring the Response
    getOpsSummaryResponse,
    GetOpsSummaryResponse,

    -- * Response Lenses
    gosrrsNextToken,
    gosrrsEntities,
    gosrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getOpsSummary' smart constructor.
data GetOpsSummary = GetOpsSummary'
  { _gosNextToken ::
      !(Maybe Text),
    _gosMaxResults :: !(Maybe Nat),
    _gosSyncName :: !(Maybe Text),
    _gosResultAttributes ::
      !(Maybe (List1 OpsResultAttribute)),
    _gosFilters :: !(Maybe (List1 OpsFilter)),
    _gosAggregators ::
      !(Maybe (List1 OpsAggregator))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetOpsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gosNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'gosMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'gosSyncName' - Specify the name of a resource data sync to get.
--
-- * 'gosResultAttributes' - The OpsItem data type to return.
--
-- * 'gosFilters' - Optional filters used to scope down the returned OpsItems.
--
-- * 'gosAggregators' - Optional aggregators that return counts of OpsItems based on one or more expressions.
getOpsSummary ::
  GetOpsSummary
getOpsSummary =
  GetOpsSummary'
    { _gosNextToken = Nothing,
      _gosMaxResults = Nothing,
      _gosSyncName = Nothing,
      _gosResultAttributes = Nothing,
      _gosFilters = Nothing,
      _gosAggregators = Nothing
    }

-- | A token to start the list. Use this token to get the next set of results.
gosNextToken :: Lens' GetOpsSummary (Maybe Text)
gosNextToken = lens _gosNextToken (\s a -> s {_gosNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
gosMaxResults :: Lens' GetOpsSummary (Maybe Natural)
gosMaxResults = lens _gosMaxResults (\s a -> s {_gosMaxResults = a}) . mapping _Nat

-- | Specify the name of a resource data sync to get.
gosSyncName :: Lens' GetOpsSummary (Maybe Text)
gosSyncName = lens _gosSyncName (\s a -> s {_gosSyncName = a})

-- | The OpsItem data type to return.
gosResultAttributes :: Lens' GetOpsSummary (Maybe (NonEmpty OpsResultAttribute))
gosResultAttributes = lens _gosResultAttributes (\s a -> s {_gosResultAttributes = a}) . mapping _List1

-- | Optional filters used to scope down the returned OpsItems.
gosFilters :: Lens' GetOpsSummary (Maybe (NonEmpty OpsFilter))
gosFilters = lens _gosFilters (\s a -> s {_gosFilters = a}) . mapping _List1

-- | Optional aggregators that return counts of OpsItems based on one or more expressions.
gosAggregators :: Lens' GetOpsSummary (Maybe (NonEmpty OpsAggregator))
gosAggregators = lens _gosAggregators (\s a -> s {_gosAggregators = a}) . mapping _List1

instance AWSPager GetOpsSummary where
  page rq rs
    | stop (rs ^. gosrrsNextToken) = Nothing
    | stop (rs ^. gosrrsEntities) = Nothing
    | otherwise =
      Just $ rq & gosNextToken .~ rs ^. gosrrsNextToken

instance AWSRequest GetOpsSummary where
  type Rs GetOpsSummary = GetOpsSummaryResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetOpsSummaryResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Entities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetOpsSummary

instance NFData GetOpsSummary

instance ToHeaders GetOpsSummary where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetOpsSummary" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetOpsSummary where
  toJSON GetOpsSummary' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gosNextToken,
            ("MaxResults" .=) <$> _gosMaxResults,
            ("SyncName" .=) <$> _gosSyncName,
            ("ResultAttributes" .=) <$> _gosResultAttributes,
            ("Filters" .=) <$> _gosFilters,
            ("Aggregators" .=) <$> _gosAggregators
          ]
      )

instance ToPath GetOpsSummary where
  toPath = const "/"

instance ToQuery GetOpsSummary where
  toQuery = const mempty

-- | /See:/ 'getOpsSummaryResponse' smart constructor.
data GetOpsSummaryResponse = GetOpsSummaryResponse'
  { _gosrrsNextToken ::
      !(Maybe Text),
    _gosrrsEntities ::
      !(Maybe [OpsEntity]),
    _gosrrsResponseStatus ::
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

-- | Creates a value of 'GetOpsSummaryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gosrrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'gosrrsEntities' - The list of aggregated and filtered OpsItems.
--
-- * 'gosrrsResponseStatus' - -- | The response status code.
getOpsSummaryResponse ::
  -- | 'gosrrsResponseStatus'
  Int ->
  GetOpsSummaryResponse
getOpsSummaryResponse pResponseStatus_ =
  GetOpsSummaryResponse'
    { _gosrrsNextToken = Nothing,
      _gosrrsEntities = Nothing,
      _gosrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. Use this token to get the next set of results.
gosrrsNextToken :: Lens' GetOpsSummaryResponse (Maybe Text)
gosrrsNextToken = lens _gosrrsNextToken (\s a -> s {_gosrrsNextToken = a})

-- | The list of aggregated and filtered OpsItems.
gosrrsEntities :: Lens' GetOpsSummaryResponse [OpsEntity]
gosrrsEntities = lens _gosrrsEntities (\s a -> s {_gosrrsEntities = a}) . _Default . _Coerce

-- | -- | The response status code.
gosrrsResponseStatus :: Lens' GetOpsSummaryResponse Int
gosrrsResponseStatus = lens _gosrrsResponseStatus (\s a -> s {_gosrrsResponseStatus = a})

instance NFData GetOpsSummaryResponse
