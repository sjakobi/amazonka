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
-- Module      : Network.AWS.SageMaker.ListApps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists apps.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListApps
  ( -- * Creating a Request
    listApps,
    ListApps,

    -- * Request Lenses
    laSortOrder,
    laNextToken,
    laMaxResults,
    laDomainIdEquals,
    laUserProfileNameEquals,
    laSortBy,

    -- * Destructuring the Response
    listAppsResponse,
    ListAppsResponse,

    -- * Response Lenses
    larrsNextToken,
    larrsApps,
    larrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listApps' smart constructor.
data ListApps = ListApps'
  { _laSortOrder ::
      !(Maybe SortOrder),
    _laNextToken :: !(Maybe Text),
    _laMaxResults :: !(Maybe Nat),
    _laDomainIdEquals :: !(Maybe Text),
    _laUserProfileNameEquals :: !(Maybe Text),
    _laSortBy :: !(Maybe AppSortKey)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListApps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laSortOrder' - The sort order for the results. The default is Ascending.
--
-- * 'laNextToken' - If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.
--
-- * 'laMaxResults' - Returns a list up to a specified limit.
--
-- * 'laDomainIdEquals' - A parameter to search for the domain ID.
--
-- * 'laUserProfileNameEquals' - A parameter to search by user profile name.
--
-- * 'laSortBy' - The parameter by which to sort the results. The default is CreationTime.
listApps ::
  ListApps
listApps =
  ListApps'
    { _laSortOrder = Nothing,
      _laNextToken = Nothing,
      _laMaxResults = Nothing,
      _laDomainIdEquals = Nothing,
      _laUserProfileNameEquals = Nothing,
      _laSortBy = Nothing
    }

-- | The sort order for the results. The default is Ascending.
laSortOrder :: Lens' ListApps (Maybe SortOrder)
laSortOrder = lens _laSortOrder (\s a -> s {_laSortOrder = a})

-- | If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.
laNextToken :: Lens' ListApps (Maybe Text)
laNextToken = lens _laNextToken (\s a -> s {_laNextToken = a})

-- | Returns a list up to a specified limit.
laMaxResults :: Lens' ListApps (Maybe Natural)
laMaxResults = lens _laMaxResults (\s a -> s {_laMaxResults = a}) . mapping _Nat

-- | A parameter to search for the domain ID.
laDomainIdEquals :: Lens' ListApps (Maybe Text)
laDomainIdEquals = lens _laDomainIdEquals (\s a -> s {_laDomainIdEquals = a})

-- | A parameter to search by user profile name.
laUserProfileNameEquals :: Lens' ListApps (Maybe Text)
laUserProfileNameEquals = lens _laUserProfileNameEquals (\s a -> s {_laUserProfileNameEquals = a})

-- | The parameter by which to sort the results. The default is CreationTime.
laSortBy :: Lens' ListApps (Maybe AppSortKey)
laSortBy = lens _laSortBy (\s a -> s {_laSortBy = a})

instance AWSPager ListApps where
  page rq rs
    | stop (rs ^. larrsNextToken) = Nothing
    | stop (rs ^. larrsApps) = Nothing
    | otherwise =
      Just $ rq & laNextToken .~ rs ^. larrsNextToken

instance AWSRequest ListApps where
  type Rs ListApps = ListAppsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListAppsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Apps" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListApps

instance NFData ListApps

instance ToHeaders ListApps where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListApps" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListApps where
  toJSON ListApps' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _laSortOrder,
            ("NextToken" .=) <$> _laNextToken,
            ("MaxResults" .=) <$> _laMaxResults,
            ("DomainIdEquals" .=) <$> _laDomainIdEquals,
            ("UserProfileNameEquals" .=)
              <$> _laUserProfileNameEquals,
            ("SortBy" .=) <$> _laSortBy
          ]
      )

instance ToPath ListApps where
  toPath = const "/"

instance ToQuery ListApps where
  toQuery = const mempty

-- | /See:/ 'listAppsResponse' smart constructor.
data ListAppsResponse = ListAppsResponse'
  { _larrsNextToken ::
      !(Maybe Text),
    _larrsApps :: !(Maybe [AppDetails]),
    _larrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAppsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextToken' - If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.
--
-- * 'larrsApps' - The list of apps.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listAppsResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListAppsResponse
listAppsResponse pResponseStatus_ =
  ListAppsResponse'
    { _larrsNextToken = Nothing,
      _larrsApps = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.
larrsNextToken :: Lens' ListAppsResponse (Maybe Text)
larrsNextToken = lens _larrsNextToken (\s a -> s {_larrsNextToken = a})

-- | The list of apps.
larrsApps :: Lens' ListAppsResponse [AppDetails]
larrsApps = lens _larrsApps (\s a -> s {_larrsApps = a}) . _Default . _Coerce

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListAppsResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListAppsResponse
