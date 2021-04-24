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
-- Module      : Network.AWS.Connect.ListIntegrationAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Provides summary information about the AppIntegration associations for the specified Amazon Connect instance.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListIntegrationAssociations
  ( -- * Creating a Request
    listIntegrationAssociations,
    ListIntegrationAssociations,

    -- * Request Lenses
    lNextToken,
    lMaxResults,
    lInstanceId,

    -- * Destructuring the Response
    listIntegrationAssociationsResponse,
    ListIntegrationAssociationsResponse,

    -- * Response Lenses
    lrsNextToken,
    lrsIntegrationAssociationSummaryList,
    lrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listIntegrationAssociations' smart constructor.
data ListIntegrationAssociations = ListIntegrationAssociations'
  { _lNextToken ::
      !(Maybe Text),
    _lMaxResults ::
      !(Maybe Nat),
    _lInstanceId ::
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

-- | Creates a value of 'ListIntegrationAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'lMaxResults' - The maximum number of results to return per page.
--
-- * 'lInstanceId' - The identifier of the Amazon Connect instance.
listIntegrationAssociations ::
  -- | 'lInstanceId'
  Text ->
  ListIntegrationAssociations
listIntegrationAssociations pInstanceId_ =
  ListIntegrationAssociations'
    { _lNextToken = Nothing,
      _lMaxResults = Nothing,
      _lInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
lNextToken :: Lens' ListIntegrationAssociations (Maybe Text)
lNextToken = lens _lNextToken (\s a -> s {_lNextToken = a})

-- | The maximum number of results to return per page.
lMaxResults :: Lens' ListIntegrationAssociations (Maybe Natural)
lMaxResults = lens _lMaxResults (\s a -> s {_lMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
lInstanceId :: Lens' ListIntegrationAssociations Text
lInstanceId = lens _lInstanceId (\s a -> s {_lInstanceId = a})

instance AWSPager ListIntegrationAssociations where
  page rq rs
    | stop (rs ^. lrsNextToken) = Nothing
    | stop (rs ^. lrsIntegrationAssociationSummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lNextToken .~ rs ^. lrsNextToken

instance AWSRequest ListIntegrationAssociations where
  type
    Rs ListIntegrationAssociations =
      ListIntegrationAssociationsResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListIntegrationAssociationsResponse'
            <$> (x .?> "NextToken")
            <*> ( x .?> "IntegrationAssociationSummaryList"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListIntegrationAssociations

instance NFData ListIntegrationAssociations

instance ToHeaders ListIntegrationAssociations where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListIntegrationAssociations where
  toPath ListIntegrationAssociations' {..} =
    mconcat
      [ "/instance/",
        toBS _lInstanceId,
        "/integration-associations"
      ]

instance ToQuery ListIntegrationAssociations where
  toQuery ListIntegrationAssociations' {..} =
    mconcat
      [ "nextToken" =: _lNextToken,
        "maxResults" =: _lMaxResults
      ]

-- | /See:/ 'listIntegrationAssociationsResponse' smart constructor.
data ListIntegrationAssociationsResponse = ListIntegrationAssociationsResponse'
  { _lrsNextToken ::
      !( Maybe
           Text
       ),
    _lrsIntegrationAssociationSummaryList ::
      !( Maybe
           [IntegrationAssociationSummary]
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

-- | Creates a value of 'ListIntegrationAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lrsIntegrationAssociationSummaryList' - The AppIntegration associations.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listIntegrationAssociationsResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListIntegrationAssociationsResponse
listIntegrationAssociationsResponse pResponseStatus_ =
  ListIntegrationAssociationsResponse'
    { _lrsNextToken =
        Nothing,
      _lrsIntegrationAssociationSummaryList =
        Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
lrsNextToken :: Lens' ListIntegrationAssociationsResponse (Maybe Text)
lrsNextToken = lens _lrsNextToken (\s a -> s {_lrsNextToken = a})

-- | The AppIntegration associations.
lrsIntegrationAssociationSummaryList :: Lens' ListIntegrationAssociationsResponse [IntegrationAssociationSummary]
lrsIntegrationAssociationSummaryList = lens _lrsIntegrationAssociationSummaryList (\s a -> s {_lrsIntegrationAssociationSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListIntegrationAssociationsResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListIntegrationAssociationsResponse
