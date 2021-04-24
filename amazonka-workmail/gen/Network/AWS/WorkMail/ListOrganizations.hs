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
-- Module      : Network.AWS.WorkMail.ListOrganizations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summaries of the customer's organizations.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkMail.ListOrganizations
  ( -- * Creating a Request
    listOrganizations,
    ListOrganizations,

    -- * Request Lenses
    loNextToken,
    loMaxResults,

    -- * Destructuring the Response
    listOrganizationsResponse,
    ListOrganizationsResponse,

    -- * Response Lenses
    lorrsNextToken,
    lorrsOrganizationSummaries,
    lorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'listOrganizations' smart constructor.
data ListOrganizations = ListOrganizations'
  { _loNextToken ::
      !(Maybe Text),
    _loMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOrganizations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loNextToken' - The token to use to retrieve the next page of results. The first call does not contain any tokens.
--
-- * 'loMaxResults' - The maximum number of results to return in a single call.
listOrganizations ::
  ListOrganizations
listOrganizations =
  ListOrganizations'
    { _loNextToken = Nothing,
      _loMaxResults = Nothing
    }

-- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
loNextToken :: Lens' ListOrganizations (Maybe Text)
loNextToken = lens _loNextToken (\s a -> s {_loNextToken = a})

-- | The maximum number of results to return in a single call.
loMaxResults :: Lens' ListOrganizations (Maybe Natural)
loMaxResults = lens _loMaxResults (\s a -> s {_loMaxResults = a}) . mapping _Nat

instance AWSPager ListOrganizations where
  page rq rs
    | stop (rs ^. lorrsNextToken) = Nothing
    | stop (rs ^. lorrsOrganizationSummaries) = Nothing
    | otherwise =
      Just $ rq & loNextToken .~ rs ^. lorrsNextToken

instance AWSRequest ListOrganizations where
  type Rs ListOrganizations = ListOrganizationsResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          ListOrganizationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "OrganizationSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOrganizations

instance NFData ListOrganizations

instance ToHeaders ListOrganizations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.ListOrganizations" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOrganizations where
  toJSON ListOrganizations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _loNextToken,
            ("MaxResults" .=) <$> _loMaxResults
          ]
      )

instance ToPath ListOrganizations where
  toPath = const "/"

instance ToQuery ListOrganizations where
  toQuery = const mempty

-- | /See:/ 'listOrganizationsResponse' smart constructor.
data ListOrganizationsResponse = ListOrganizationsResponse'
  { _lorrsNextToken ::
      !(Maybe Text),
    _lorrsOrganizationSummaries ::
      !( Maybe
           [OrganizationSummary]
       ),
    _lorrsResponseStatus ::
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

-- | Creates a value of 'ListOrganizationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorrsNextToken' - The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.
--
-- * 'lorrsOrganizationSummaries' - The overview of owned organizations presented as a list of organization summaries.
--
-- * 'lorrsResponseStatus' - -- | The response status code.
listOrganizationsResponse ::
  -- | 'lorrsResponseStatus'
  Int ->
  ListOrganizationsResponse
listOrganizationsResponse pResponseStatus_ =
  ListOrganizationsResponse'
    { _lorrsNextToken =
        Nothing,
      _lorrsOrganizationSummaries = Nothing,
      _lorrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.
lorrsNextToken :: Lens' ListOrganizationsResponse (Maybe Text)
lorrsNextToken = lens _lorrsNextToken (\s a -> s {_lorrsNextToken = a})

-- | The overview of owned organizations presented as a list of organization summaries.
lorrsOrganizationSummaries :: Lens' ListOrganizationsResponse [OrganizationSummary]
lorrsOrganizationSummaries = lens _lorrsOrganizationSummaries (\s a -> s {_lorrsOrganizationSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lorrsResponseStatus :: Lens' ListOrganizationsResponse Int
lorrsResponseStatus = lens _lorrsResponseStatus (\s a -> s {_lorrsResponseStatus = a})

instance NFData ListOrganizationsResponse
