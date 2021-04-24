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
-- Module      : Network.AWS.CostExplorer.GetAnomalySubscriptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the cost anomaly subscription objects for your account. You can filter using a list of cost anomaly monitor Amazon Resource Names (ARNs).
module Network.AWS.CostExplorer.GetAnomalySubscriptions
  ( -- * Creating a Request
    getAnomalySubscriptions,
    GetAnomalySubscriptions,

    -- * Request Lenses
    gasMaxResults,
    gasNextPageToken,
    gasSubscriptionARNList,
    gasMonitorARN,

    -- * Destructuring the Response
    getAnomalySubscriptionsResponse,
    GetAnomalySubscriptionsResponse,

    -- * Response Lenses
    gasrrsNextPageToken,
    gasrrsResponseStatus,
    gasrrsAnomalySubscriptions,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAnomalySubscriptions' smart constructor.
data GetAnomalySubscriptions = GetAnomalySubscriptions'
  { _gasMaxResults ::
      !(Maybe Int),
    _gasNextPageToken ::
      !(Maybe Text),
    _gasSubscriptionARNList ::
      !(Maybe [Text]),
    _gasMonitorARN ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAnomalySubscriptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasMaxResults' - The number of entries a paginated response contains.
--
-- * 'gasNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gasSubscriptionARNList' - A list of cost anomaly subscription ARNs.
--
-- * 'gasMonitorARN' - Cost anomaly monitor ARNs.
getAnomalySubscriptions ::
  GetAnomalySubscriptions
getAnomalySubscriptions =
  GetAnomalySubscriptions'
    { _gasMaxResults = Nothing,
      _gasNextPageToken = Nothing,
      _gasSubscriptionARNList = Nothing,
      _gasMonitorARN = Nothing
    }

-- | The number of entries a paginated response contains.
gasMaxResults :: Lens' GetAnomalySubscriptions (Maybe Int)
gasMaxResults = lens _gasMaxResults (\s a -> s {_gasMaxResults = a})

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gasNextPageToken :: Lens' GetAnomalySubscriptions (Maybe Text)
gasNextPageToken = lens _gasNextPageToken (\s a -> s {_gasNextPageToken = a})

-- | A list of cost anomaly subscription ARNs.
gasSubscriptionARNList :: Lens' GetAnomalySubscriptions [Text]
gasSubscriptionARNList = lens _gasSubscriptionARNList (\s a -> s {_gasSubscriptionARNList = a}) . _Default . _Coerce

-- | Cost anomaly monitor ARNs.
gasMonitorARN :: Lens' GetAnomalySubscriptions (Maybe Text)
gasMonitorARN = lens _gasMonitorARN (\s a -> s {_gasMonitorARN = a})

instance AWSRequest GetAnomalySubscriptions where
  type
    Rs GetAnomalySubscriptions =
      GetAnomalySubscriptionsResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetAnomalySubscriptionsResponse'
            <$> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "AnomalySubscriptions" .!@ mempty)
      )

instance Hashable GetAnomalySubscriptions

instance NFData GetAnomalySubscriptions

instance ToHeaders GetAnomalySubscriptions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetAnomalySubscriptions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAnomalySubscriptions where
  toJSON GetAnomalySubscriptions' {..} =
    object
      ( catMaybes
          [ ("MaxResults" .=) <$> _gasMaxResults,
            ("NextPageToken" .=) <$> _gasNextPageToken,
            ("SubscriptionArnList" .=)
              <$> _gasSubscriptionARNList,
            ("MonitorArn" .=) <$> _gasMonitorARN
          ]
      )

instance ToPath GetAnomalySubscriptions where
  toPath = const "/"

instance ToQuery GetAnomalySubscriptions where
  toQuery = const mempty

-- | /See:/ 'getAnomalySubscriptionsResponse' smart constructor.
data GetAnomalySubscriptionsResponse = GetAnomalySubscriptionsResponse'
  { _gasrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _gasrrsResponseStatus ::
      !Int,
    _gasrrsAnomalySubscriptions ::
      ![AnomalySubscription]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAnomalySubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasrrsNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gasrrsResponseStatus' - -- | The response status code.
--
-- * 'gasrrsAnomalySubscriptions' - A list of cost anomaly subscriptions that includes the detailed metadata for each one.
getAnomalySubscriptionsResponse ::
  -- | 'gasrrsResponseStatus'
  Int ->
  GetAnomalySubscriptionsResponse
getAnomalySubscriptionsResponse pResponseStatus_ =
  GetAnomalySubscriptionsResponse'
    { _gasrrsNextPageToken =
        Nothing,
      _gasrrsResponseStatus = pResponseStatus_,
      _gasrrsAnomalySubscriptions = mempty
    }

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gasrrsNextPageToken :: Lens' GetAnomalySubscriptionsResponse (Maybe Text)
gasrrsNextPageToken = lens _gasrrsNextPageToken (\s a -> s {_gasrrsNextPageToken = a})

-- | -- | The response status code.
gasrrsResponseStatus :: Lens' GetAnomalySubscriptionsResponse Int
gasrrsResponseStatus = lens _gasrrsResponseStatus (\s a -> s {_gasrrsResponseStatus = a})

-- | A list of cost anomaly subscriptions that includes the detailed metadata for each one.
gasrrsAnomalySubscriptions :: Lens' GetAnomalySubscriptionsResponse [AnomalySubscription]
gasrrsAnomalySubscriptions = lens _gasrrsAnomalySubscriptions (\s a -> s {_gasrrsAnomalySubscriptions = a}) . _Coerce

instance NFData GetAnomalySubscriptionsResponse
