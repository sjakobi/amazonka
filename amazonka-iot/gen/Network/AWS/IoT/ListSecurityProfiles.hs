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
-- Module      : Network.AWS.IoT.ListSecurityProfiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Device Defender security profiles you've created. You can filter security profiles by dimension or custom metric.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListSecurityProfiles
  ( -- * Creating a Request
    listSecurityProfiles,
    ListSecurityProfiles,

    -- * Request Lenses
    lspDimensionName,
    lspNextToken,
    lspMaxResults,
    lspMetricName,

    -- * Destructuring the Response
    listSecurityProfilesResponse,
    ListSecurityProfilesResponse,

    -- * Response Lenses
    lsprrsNextToken,
    lsprrsSecurityProfileIdentifiers,
    lsprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSecurityProfiles' smart constructor.
data ListSecurityProfiles = ListSecurityProfiles'
  { _lspDimensionName ::
      !(Maybe Text),
    _lspNextToken ::
      !(Maybe Text),
    _lspMaxResults ::
      !(Maybe Nat),
    _lspMetricName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSecurityProfiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lspDimensionName' - A filter to limit results to the security profiles that use the defined dimension. Cannot be used with @metricName@
--
-- * 'lspNextToken' - The token for the next set of results.
--
-- * 'lspMaxResults' - The maximum number of results to return at one time.
--
-- * 'lspMetricName' - The name of the custom metric. Cannot be used with @dimensionName@ .
listSecurityProfiles ::
  ListSecurityProfiles
listSecurityProfiles =
  ListSecurityProfiles'
    { _lspDimensionName = Nothing,
      _lspNextToken = Nothing,
      _lspMaxResults = Nothing,
      _lspMetricName = Nothing
    }

-- | A filter to limit results to the security profiles that use the defined dimension. Cannot be used with @metricName@
lspDimensionName :: Lens' ListSecurityProfiles (Maybe Text)
lspDimensionName = lens _lspDimensionName (\s a -> s {_lspDimensionName = a})

-- | The token for the next set of results.
lspNextToken :: Lens' ListSecurityProfiles (Maybe Text)
lspNextToken = lens _lspNextToken (\s a -> s {_lspNextToken = a})

-- | The maximum number of results to return at one time.
lspMaxResults :: Lens' ListSecurityProfiles (Maybe Natural)
lspMaxResults = lens _lspMaxResults (\s a -> s {_lspMaxResults = a}) . mapping _Nat

-- | The name of the custom metric. Cannot be used with @dimensionName@ .
lspMetricName :: Lens' ListSecurityProfiles (Maybe Text)
lspMetricName = lens _lspMetricName (\s a -> s {_lspMetricName = a})

instance AWSPager ListSecurityProfiles where
  page rq rs
    | stop (rs ^. lsprrsNextToken) = Nothing
    | stop (rs ^. lsprrsSecurityProfileIdentifiers) =
      Nothing
    | otherwise =
      Just $ rq & lspNextToken .~ rs ^. lsprrsNextToken

instance AWSRequest ListSecurityProfiles where
  type
    Rs ListSecurityProfiles =
      ListSecurityProfilesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListSecurityProfilesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "securityProfileIdentifiers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSecurityProfiles

instance NFData ListSecurityProfiles

instance ToHeaders ListSecurityProfiles where
  toHeaders = const mempty

instance ToPath ListSecurityProfiles where
  toPath = const "/security-profiles"

instance ToQuery ListSecurityProfiles where
  toQuery ListSecurityProfiles' {..} =
    mconcat
      [ "dimensionName" =: _lspDimensionName,
        "nextToken" =: _lspNextToken,
        "maxResults" =: _lspMaxResults,
        "metricName" =: _lspMetricName
      ]

-- | /See:/ 'listSecurityProfilesResponse' smart constructor.
data ListSecurityProfilesResponse = ListSecurityProfilesResponse'
  { _lsprrsNextToken ::
      !(Maybe Text),
    _lsprrsSecurityProfileIdentifiers ::
      !( Maybe
           [SecurityProfileIdentifier]
       ),
    _lsprrsResponseStatus ::
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

-- | Creates a value of 'ListSecurityProfilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsprrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'lsprrsSecurityProfileIdentifiers' - A list of security profile identifiers (names and ARNs).
--
-- * 'lsprrsResponseStatus' - -- | The response status code.
listSecurityProfilesResponse ::
  -- | 'lsprrsResponseStatus'
  Int ->
  ListSecurityProfilesResponse
listSecurityProfilesResponse pResponseStatus_ =
  ListSecurityProfilesResponse'
    { _lsprrsNextToken =
        Nothing,
      _lsprrsSecurityProfileIdentifiers = Nothing,
      _lsprrsResponseStatus = pResponseStatus_
    }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
lsprrsNextToken :: Lens' ListSecurityProfilesResponse (Maybe Text)
lsprrsNextToken = lens _lsprrsNextToken (\s a -> s {_lsprrsNextToken = a})

-- | A list of security profile identifiers (names and ARNs).
lsprrsSecurityProfileIdentifiers :: Lens' ListSecurityProfilesResponse [SecurityProfileIdentifier]
lsprrsSecurityProfileIdentifiers = lens _lsprrsSecurityProfileIdentifiers (\s a -> s {_lsprrsSecurityProfileIdentifiers = a}) . _Default . _Coerce

-- | -- | The response status code.
lsprrsResponseStatus :: Lens' ListSecurityProfilesResponse Int
lsprrsResponseStatus = lens _lsprrsResponseStatus (\s a -> s {_lsprrsResponseStatus = a})

instance NFData ListSecurityProfilesResponse
