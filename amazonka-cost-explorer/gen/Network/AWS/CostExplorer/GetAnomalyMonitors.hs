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
-- Module      : Network.AWS.CostExplorer.GetAnomalyMonitors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the cost anomaly monitor definitions for your account. You can filter using a list of cost anomaly monitor Amazon Resource Names (ARNs).
module Network.AWS.CostExplorer.GetAnomalyMonitors
  ( -- * Creating a Request
    getAnomalyMonitors,
    GetAnomalyMonitors,

    -- * Request Lenses
    gamMaxResults,
    gamNextPageToken,
    gamMonitorARNList,

    -- * Destructuring the Response
    getAnomalyMonitorsResponse,
    GetAnomalyMonitorsResponse,

    -- * Response Lenses
    gamrrsNextPageToken,
    gamrrsResponseStatus,
    gamrrsAnomalyMonitors,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAnomalyMonitors' smart constructor.
data GetAnomalyMonitors = GetAnomalyMonitors'
  { _gamMaxResults ::
      !(Maybe Int),
    _gamNextPageToken ::
      !(Maybe Text),
    _gamMonitorARNList ::
      !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAnomalyMonitors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gamMaxResults' - The number of entries a paginated response contains.
--
-- * 'gamNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gamMonitorARNList' - A list of cost anomaly monitor ARNs.
getAnomalyMonitors ::
  GetAnomalyMonitors
getAnomalyMonitors =
  GetAnomalyMonitors'
    { _gamMaxResults = Nothing,
      _gamNextPageToken = Nothing,
      _gamMonitorARNList = Nothing
    }

-- | The number of entries a paginated response contains.
gamMaxResults :: Lens' GetAnomalyMonitors (Maybe Int)
gamMaxResults = lens _gamMaxResults (\s a -> s {_gamMaxResults = a})

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gamNextPageToken :: Lens' GetAnomalyMonitors (Maybe Text)
gamNextPageToken = lens _gamNextPageToken (\s a -> s {_gamNextPageToken = a})

-- | A list of cost anomaly monitor ARNs.
gamMonitorARNList :: Lens' GetAnomalyMonitors [Text]
gamMonitorARNList = lens _gamMonitorARNList (\s a -> s {_gamMonitorARNList = a}) . _Default . _Coerce

instance AWSRequest GetAnomalyMonitors where
  type
    Rs GetAnomalyMonitors =
      GetAnomalyMonitorsResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetAnomalyMonitorsResponse'
            <$> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "AnomalyMonitors" .!@ mempty)
      )

instance Hashable GetAnomalyMonitors

instance NFData GetAnomalyMonitors

instance ToHeaders GetAnomalyMonitors where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetAnomalyMonitors" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAnomalyMonitors where
  toJSON GetAnomalyMonitors' {..} =
    object
      ( catMaybes
          [ ("MaxResults" .=) <$> _gamMaxResults,
            ("NextPageToken" .=) <$> _gamNextPageToken,
            ("MonitorArnList" .=) <$> _gamMonitorARNList
          ]
      )

instance ToPath GetAnomalyMonitors where
  toPath = const "/"

instance ToQuery GetAnomalyMonitors where
  toQuery = const mempty

-- | /See:/ 'getAnomalyMonitorsResponse' smart constructor.
data GetAnomalyMonitorsResponse = GetAnomalyMonitorsResponse'
  { _gamrrsNextPageToken ::
      !(Maybe Text),
    _gamrrsResponseStatus ::
      !Int,
    _gamrrsAnomalyMonitors ::
      ![AnomalyMonitor]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAnomalyMonitorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gamrrsNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gamrrsResponseStatus' - -- | The response status code.
--
-- * 'gamrrsAnomalyMonitors' - A list of cost anomaly monitors that includes the detailed metadata for each monitor.
getAnomalyMonitorsResponse ::
  -- | 'gamrrsResponseStatus'
  Int ->
  GetAnomalyMonitorsResponse
getAnomalyMonitorsResponse pResponseStatus_ =
  GetAnomalyMonitorsResponse'
    { _gamrrsNextPageToken =
        Nothing,
      _gamrrsResponseStatus = pResponseStatus_,
      _gamrrsAnomalyMonitors = mempty
    }

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gamrrsNextPageToken :: Lens' GetAnomalyMonitorsResponse (Maybe Text)
gamrrsNextPageToken = lens _gamrrsNextPageToken (\s a -> s {_gamrrsNextPageToken = a})

-- | -- | The response status code.
gamrrsResponseStatus :: Lens' GetAnomalyMonitorsResponse Int
gamrrsResponseStatus = lens _gamrrsResponseStatus (\s a -> s {_gamrrsResponseStatus = a})

-- | A list of cost anomaly monitors that includes the detailed metadata for each monitor.
gamrrsAnomalyMonitors :: Lens' GetAnomalyMonitorsResponse [AnomalyMonitor]
gamrrsAnomalyMonitors = lens _gamrrsAnomalyMonitors (\s a -> s {_gamrrsAnomalyMonitors = a}) . _Coerce

instance NFData GetAnomalyMonitorsResponse
