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
-- Module      : Network.AWS.Connect.ListUseCases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Lists the use cases.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListUseCases
  ( -- * Creating a Request
    listUseCases,
    ListUseCases,

    -- * Request Lenses
    lucNextToken,
    lucMaxResults,
    lucInstanceId,
    lucIntegrationAssociationId,

    -- * Destructuring the Response
    listUseCasesResponse,
    ListUseCasesResponse,

    -- * Response Lenses
    lucrrsNextToken,
    lucrrsUseCaseSummaryList,
    lucrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Provides summary information about the use cases for the specified Amazon Connect AppIntegration association.
--
--
--
-- /See:/ 'listUseCases' smart constructor.
data ListUseCases = ListUseCases'
  { _lucNextToken ::
      !(Maybe Text),
    _lucMaxResults :: !(Maybe Nat),
    _lucInstanceId :: !Text,
    _lucIntegrationAssociationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUseCases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lucNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'lucMaxResults' - The maximum number of results to return per page.
--
-- * 'lucInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'lucIntegrationAssociationId' - The identifier for the integration association.
listUseCases ::
  -- | 'lucInstanceId'
  Text ->
  -- | 'lucIntegrationAssociationId'
  Text ->
  ListUseCases
listUseCases pInstanceId_ pIntegrationAssociationId_ =
  ListUseCases'
    { _lucNextToken = Nothing,
      _lucMaxResults = Nothing,
      _lucInstanceId = pInstanceId_,
      _lucIntegrationAssociationId =
        pIntegrationAssociationId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
lucNextToken :: Lens' ListUseCases (Maybe Text)
lucNextToken = lens _lucNextToken (\s a -> s {_lucNextToken = a})

-- | The maximum number of results to return per page.
lucMaxResults :: Lens' ListUseCases (Maybe Natural)
lucMaxResults = lens _lucMaxResults (\s a -> s {_lucMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
lucInstanceId :: Lens' ListUseCases Text
lucInstanceId = lens _lucInstanceId (\s a -> s {_lucInstanceId = a})

-- | The identifier for the integration association.
lucIntegrationAssociationId :: Lens' ListUseCases Text
lucIntegrationAssociationId = lens _lucIntegrationAssociationId (\s a -> s {_lucIntegrationAssociationId = a})

instance AWSPager ListUseCases where
  page rq rs
    | stop (rs ^. lucrrsNextToken) = Nothing
    | stop (rs ^. lucrrsUseCaseSummaryList) = Nothing
    | otherwise =
      Just $ rq & lucNextToken .~ rs ^. lucrrsNextToken

instance AWSRequest ListUseCases where
  type Rs ListUseCases = ListUseCasesResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListUseCasesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "UseCaseSummaryList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListUseCases

instance NFData ListUseCases

instance ToHeaders ListUseCases where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListUseCases where
  toPath ListUseCases' {..} =
    mconcat
      [ "/instance/",
        toBS _lucInstanceId,
        "/integration-associations/",
        toBS _lucIntegrationAssociationId,
        "/use-cases"
      ]

instance ToQuery ListUseCases where
  toQuery ListUseCases' {..} =
    mconcat
      [ "nextToken" =: _lucNextToken,
        "maxResults" =: _lucMaxResults
      ]

-- | /See:/ 'listUseCasesResponse' smart constructor.
data ListUseCasesResponse = ListUseCasesResponse'
  { _lucrrsNextToken ::
      !(Maybe Text),
    _lucrrsUseCaseSummaryList ::
      !(Maybe [UseCase]),
    _lucrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUseCasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lucrrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lucrrsUseCaseSummaryList' - The use cases.
--
-- * 'lucrrsResponseStatus' - -- | The response status code.
listUseCasesResponse ::
  -- | 'lucrrsResponseStatus'
  Int ->
  ListUseCasesResponse
listUseCasesResponse pResponseStatus_ =
  ListUseCasesResponse'
    { _lucrrsNextToken = Nothing,
      _lucrrsUseCaseSummaryList = Nothing,
      _lucrrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
lucrrsNextToken :: Lens' ListUseCasesResponse (Maybe Text)
lucrrsNextToken = lens _lucrrsNextToken (\s a -> s {_lucrrsNextToken = a})

-- | The use cases.
lucrrsUseCaseSummaryList :: Lens' ListUseCasesResponse [UseCase]
lucrrsUseCaseSummaryList = lens _lucrrsUseCaseSummaryList (\s a -> s {_lucrrsUseCaseSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lucrrsResponseStatus :: Lens' ListUseCasesResponse Int
lucrrsResponseStatus = lens _lucrrsResponseStatus (\s a -> s {_lucrrsResponseStatus = a})

instance NFData ListUseCasesResponse
