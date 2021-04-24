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
-- Module      : Network.AWS.CostExplorer.UpdateAnomalySubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing cost anomaly monitor subscription.
module Network.AWS.CostExplorer.UpdateAnomalySubscription
  ( -- * Creating a Request
    updateAnomalySubscription,
    UpdateAnomalySubscription,

    -- * Request Lenses
    uasThreshold,
    uasSubscriptionName,
    uasSubscribers,
    uasFrequency,
    uasMonitorARNList,
    uasSubscriptionARN,

    -- * Destructuring the Response
    updateAnomalySubscriptionResponse,
    UpdateAnomalySubscriptionResponse,

    -- * Response Lenses
    uasrrsResponseStatus,
    uasrrsSubscriptionARN,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateAnomalySubscription' smart constructor.
data UpdateAnomalySubscription = UpdateAnomalySubscription'
  { _uasThreshold ::
      !(Maybe Double),
    _uasSubscriptionName ::
      !(Maybe Text),
    _uasSubscribers ::
      !( Maybe
           [Subscriber]
       ),
    _uasFrequency ::
      !( Maybe
           AnomalySubscriptionFrequency
       ),
    _uasMonitorARNList ::
      !(Maybe [Text]),
    _uasSubscriptionARN ::
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

-- | Creates a value of 'UpdateAnomalySubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uasThreshold' - The update to the threshold value for receiving notifications.
--
-- * 'uasSubscriptionName' - The subscription's new name.
--
-- * 'uasSubscribers' - The update to the subscriber list.
--
-- * 'uasFrequency' - The update to the frequency value at which subscribers will receive notifications.
--
-- * 'uasMonitorARNList' - A list of cost anomaly monitor ARNs.
--
-- * 'uasSubscriptionARN' - A cost anomaly subscription Amazon Resource Name (ARN).
updateAnomalySubscription ::
  -- | 'uasSubscriptionARN'
  Text ->
  UpdateAnomalySubscription
updateAnomalySubscription pSubscriptionARN_ =
  UpdateAnomalySubscription'
    { _uasThreshold = Nothing,
      _uasSubscriptionName = Nothing,
      _uasSubscribers = Nothing,
      _uasFrequency = Nothing,
      _uasMonitorARNList = Nothing,
      _uasSubscriptionARN = pSubscriptionARN_
    }

-- | The update to the threshold value for receiving notifications.
uasThreshold :: Lens' UpdateAnomalySubscription (Maybe Double)
uasThreshold = lens _uasThreshold (\s a -> s {_uasThreshold = a})

-- | The subscription's new name.
uasSubscriptionName :: Lens' UpdateAnomalySubscription (Maybe Text)
uasSubscriptionName = lens _uasSubscriptionName (\s a -> s {_uasSubscriptionName = a})

-- | The update to the subscriber list.
uasSubscribers :: Lens' UpdateAnomalySubscription [Subscriber]
uasSubscribers = lens _uasSubscribers (\s a -> s {_uasSubscribers = a}) . _Default . _Coerce

-- | The update to the frequency value at which subscribers will receive notifications.
uasFrequency :: Lens' UpdateAnomalySubscription (Maybe AnomalySubscriptionFrequency)
uasFrequency = lens _uasFrequency (\s a -> s {_uasFrequency = a})

-- | A list of cost anomaly monitor ARNs.
uasMonitorARNList :: Lens' UpdateAnomalySubscription [Text]
uasMonitorARNList = lens _uasMonitorARNList (\s a -> s {_uasMonitorARNList = a}) . _Default . _Coerce

-- | A cost anomaly subscription Amazon Resource Name (ARN).
uasSubscriptionARN :: Lens' UpdateAnomalySubscription Text
uasSubscriptionARN = lens _uasSubscriptionARN (\s a -> s {_uasSubscriptionARN = a})

instance AWSRequest UpdateAnomalySubscription where
  type
    Rs UpdateAnomalySubscription =
      UpdateAnomalySubscriptionResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          UpdateAnomalySubscriptionResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "SubscriptionArn")
      )

instance Hashable UpdateAnomalySubscription

instance NFData UpdateAnomalySubscription

instance ToHeaders UpdateAnomalySubscription where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.UpdateAnomalySubscription" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateAnomalySubscription where
  toJSON UpdateAnomalySubscription' {..} =
    object
      ( catMaybes
          [ ("Threshold" .=) <$> _uasThreshold,
            ("SubscriptionName" .=) <$> _uasSubscriptionName,
            ("Subscribers" .=) <$> _uasSubscribers,
            ("Frequency" .=) <$> _uasFrequency,
            ("MonitorArnList" .=) <$> _uasMonitorARNList,
            Just ("SubscriptionArn" .= _uasSubscriptionARN)
          ]
      )

instance ToPath UpdateAnomalySubscription where
  toPath = const "/"

instance ToQuery UpdateAnomalySubscription where
  toQuery = const mempty

-- | /See:/ 'updateAnomalySubscriptionResponse' smart constructor.
data UpdateAnomalySubscriptionResponse = UpdateAnomalySubscriptionResponse'
  { _uasrrsResponseStatus ::
      !Int,
    _uasrrsSubscriptionARN ::
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

-- | Creates a value of 'UpdateAnomalySubscriptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uasrrsResponseStatus' - -- | The response status code.
--
-- * 'uasrrsSubscriptionARN' - A cost anomaly subscription ARN.
updateAnomalySubscriptionResponse ::
  -- | 'uasrrsResponseStatus'
  Int ->
  -- | 'uasrrsSubscriptionARN'
  Text ->
  UpdateAnomalySubscriptionResponse
updateAnomalySubscriptionResponse
  pResponseStatus_
  pSubscriptionARN_ =
    UpdateAnomalySubscriptionResponse'
      { _uasrrsResponseStatus =
          pResponseStatus_,
        _uasrrsSubscriptionARN =
          pSubscriptionARN_
      }

-- | -- | The response status code.
uasrrsResponseStatus :: Lens' UpdateAnomalySubscriptionResponse Int
uasrrsResponseStatus = lens _uasrrsResponseStatus (\s a -> s {_uasrrsResponseStatus = a})

-- | A cost anomaly subscription ARN.
uasrrsSubscriptionARN :: Lens' UpdateAnomalySubscriptionResponse Text
uasrrsSubscriptionARN = lens _uasrrsSubscriptionARN (\s a -> s {_uasrrsSubscriptionARN = a})

instance NFData UpdateAnomalySubscriptionResponse
