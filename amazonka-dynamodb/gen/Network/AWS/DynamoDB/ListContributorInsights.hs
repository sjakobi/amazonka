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
-- Module      : Network.AWS.DynamoDB.ListContributorInsights
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of ContributorInsightsSummary for a table and all its global secondary indexes.
module Network.AWS.DynamoDB.ListContributorInsights
  ( -- * Creating a Request
    listContributorInsights,
    ListContributorInsights,

    -- * Request Lenses
    lciNextToken,
    lciTableName,
    lciMaxResults,

    -- * Destructuring the Response
    listContributorInsightsResponse,
    ListContributorInsightsResponse,

    -- * Response Lenses
    lcirrsContributorInsightsSummaries,
    lcirrsNextToken,
    lcirrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listContributorInsights' smart constructor.
data ListContributorInsights = ListContributorInsights'
  { _lciNextToken ::
      !(Maybe Text),
    _lciTableName ::
      !(Maybe Text),
    _lciMaxResults ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListContributorInsights' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lciNextToken' - A token to for the desired page, if there is one.
--
-- * 'lciTableName' - The name of the table.
--
-- * 'lciMaxResults' - Maximum number of results to return per page.
listContributorInsights ::
  ListContributorInsights
listContributorInsights =
  ListContributorInsights'
    { _lciNextToken = Nothing,
      _lciTableName = Nothing,
      _lciMaxResults = Nothing
    }

-- | A token to for the desired page, if there is one.
lciNextToken :: Lens' ListContributorInsights (Maybe Text)
lciNextToken = lens _lciNextToken (\s a -> s {_lciNextToken = a})

-- | The name of the table.
lciTableName :: Lens' ListContributorInsights (Maybe Text)
lciTableName = lens _lciTableName (\s a -> s {_lciTableName = a})

-- | Maximum number of results to return per page.
lciMaxResults :: Lens' ListContributorInsights (Maybe Int)
lciMaxResults = lens _lciMaxResults (\s a -> s {_lciMaxResults = a})

instance AWSRequest ListContributorInsights where
  type
    Rs ListContributorInsights =
      ListContributorInsightsResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          ListContributorInsightsResponse'
            <$> (x .?> "ContributorInsightsSummaries" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListContributorInsights

instance NFData ListContributorInsights

instance ToHeaders ListContributorInsights where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDB_20120810.ListContributorInsights" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ListContributorInsights where
  toJSON ListContributorInsights' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lciNextToken,
            ("TableName" .=) <$> _lciTableName,
            ("MaxResults" .=) <$> _lciMaxResults
          ]
      )

instance ToPath ListContributorInsights where
  toPath = const "/"

instance ToQuery ListContributorInsights where
  toQuery = const mempty

-- | /See:/ 'listContributorInsightsResponse' smart constructor.
data ListContributorInsightsResponse = ListContributorInsightsResponse'
  { _lcirrsContributorInsightsSummaries ::
      !( Maybe
           [ContributorInsightsSummary]
       ),
    _lcirrsNextToken ::
      !( Maybe
           Text
       ),
    _lcirrsResponseStatus ::
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

-- | Creates a value of 'ListContributorInsightsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcirrsContributorInsightsSummaries' - A list of ContributorInsightsSummary.
--
-- * 'lcirrsNextToken' - A token to go to the next page if there is one.
--
-- * 'lcirrsResponseStatus' - -- | The response status code.
listContributorInsightsResponse ::
  -- | 'lcirrsResponseStatus'
  Int ->
  ListContributorInsightsResponse
listContributorInsightsResponse pResponseStatus_ =
  ListContributorInsightsResponse'
    { _lcirrsContributorInsightsSummaries =
        Nothing,
      _lcirrsNextToken = Nothing,
      _lcirrsResponseStatus = pResponseStatus_
    }

-- | A list of ContributorInsightsSummary.
lcirrsContributorInsightsSummaries :: Lens' ListContributorInsightsResponse [ContributorInsightsSummary]
lcirrsContributorInsightsSummaries = lens _lcirrsContributorInsightsSummaries (\s a -> s {_lcirrsContributorInsightsSummaries = a}) . _Default . _Coerce

-- | A token to go to the next page if there is one.
lcirrsNextToken :: Lens' ListContributorInsightsResponse (Maybe Text)
lcirrsNextToken = lens _lcirrsNextToken (\s a -> s {_lcirrsNextToken = a})

-- | -- | The response status code.
lcirrsResponseStatus :: Lens' ListContributorInsightsResponse Int
lcirrsResponseStatus = lens _lcirrsResponseStatus (\s a -> s {_lcirrsResponseStatus = a})

instance NFData ListContributorInsightsResponse
