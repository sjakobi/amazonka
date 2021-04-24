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
-- Module      : Network.AWS.CloudWatch.ListDashboards
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the dashboards for your account. If you include @DashboardNamePrefix@ , only those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are listed.
--
--
-- @ListDashboards@ returns up to 1000 results on one page. If there are more than 1000 dashboards, you can call @ListDashboards@ again and include the value you received for @NextToken@ in the first call, to receive the next 1000 results.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatch.ListDashboards
  ( -- * Creating a Request
    listDashboards,
    ListDashboards,

    -- * Request Lenses
    ldNextToken,
    ldDashboardNamePrefix,

    -- * Destructuring the Response
    listDashboardsResponse,
    ListDashboardsResponse,

    -- * Response Lenses
    ldrrsNextToken,
    ldrrsDashboardEntries,
    ldrrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDashboards' smart constructor.
data ListDashboards = ListDashboards'
  { _ldNextToken ::
      !(Maybe Text),
    _ldDashboardNamePrefix :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDashboards' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldNextToken' - The token returned by a previous call to indicate that there is more data available.
--
-- * 'ldDashboardNamePrefix' - If you specify this parameter, only the dashboards with names starting with the specified string are listed. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, ".", "-", and "_".
listDashboards ::
  ListDashboards
listDashboards =
  ListDashboards'
    { _ldNextToken = Nothing,
      _ldDashboardNamePrefix = Nothing
    }

-- | The token returned by a previous call to indicate that there is more data available.
ldNextToken :: Lens' ListDashboards (Maybe Text)
ldNextToken = lens _ldNextToken (\s a -> s {_ldNextToken = a})

-- | If you specify this parameter, only the dashboards with names starting with the specified string are listed. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, ".", "-", and "_".
ldDashboardNamePrefix :: Lens' ListDashboards (Maybe Text)
ldDashboardNamePrefix = lens _ldDashboardNamePrefix (\s a -> s {_ldDashboardNamePrefix = a})

instance AWSPager ListDashboards where
  page rq rs
    | stop (rs ^. ldrrsNextToken) = Nothing
    | stop (rs ^. ldrrsDashboardEntries) = Nothing
    | otherwise =
      Just $ rq & ldNextToken .~ rs ^. ldrrsNextToken

instance AWSRequest ListDashboards where
  type Rs ListDashboards = ListDashboardsResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "ListDashboardsResult"
      ( \s h x ->
          ListDashboardsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "DashboardEntries" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListDashboards

instance NFData ListDashboards

instance ToHeaders ListDashboards where
  toHeaders = const mempty

instance ToPath ListDashboards where
  toPath = const "/"

instance ToQuery ListDashboards where
  toQuery ListDashboards' {..} =
    mconcat
      [ "Action" =: ("ListDashboards" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "NextToken" =: _ldNextToken,
        "DashboardNamePrefix" =: _ldDashboardNamePrefix
      ]

-- | /See:/ 'listDashboardsResponse' smart constructor.
data ListDashboardsResponse = ListDashboardsResponse'
  { _ldrrsNextToken ::
      !(Maybe Text),
    _ldrrsDashboardEntries ::
      !(Maybe [DashboardEntry]),
    _ldrrsResponseStatus ::
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

-- | Creates a value of 'ListDashboardsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsNextToken' - The token that marks the start of the next batch of returned results.
--
-- * 'ldrrsDashboardEntries' - The list of matching dashboards.
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
listDashboardsResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDashboardsResponse
listDashboardsResponse pResponseStatus_ =
  ListDashboardsResponse'
    { _ldrrsNextToken = Nothing,
      _ldrrsDashboardEntries = Nothing,
      _ldrrsResponseStatus = pResponseStatus_
    }

-- | The token that marks the start of the next batch of returned results.
ldrrsNextToken :: Lens' ListDashboardsResponse (Maybe Text)
ldrrsNextToken = lens _ldrrsNextToken (\s a -> s {_ldrrsNextToken = a})

-- | The list of matching dashboards.
ldrrsDashboardEntries :: Lens' ListDashboardsResponse [DashboardEntry]
ldrrsDashboardEntries = lens _ldrrsDashboardEntries (\s a -> s {_ldrrsDashboardEntries = a}) . _Default . _Coerce

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDashboardsResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

instance NFData ListDashboardsResponse
