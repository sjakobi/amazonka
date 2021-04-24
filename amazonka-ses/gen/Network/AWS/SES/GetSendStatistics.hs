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
-- Module      : Network.AWS.SES.GetSendStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides sending statistics for the current AWS Region. The result is a list of data points, representing the last two weeks of sending activity. Each data point in the list contains statistics for a 15-minute period of time.
--
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.GetSendStatistics
  ( -- * Creating a Request
    getSendStatistics,
    GetSendStatistics,

    -- * Destructuring the Response
    getSendStatisticsResponse,
    GetSendStatisticsResponse,

    -- * Response Lenses
    gssrrsSendDataPoints,
    gssrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | /See:/ 'getSendStatistics' smart constructor.
data GetSendStatistics = GetSendStatistics'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSendStatistics' with the minimum fields required to make a request.
getSendStatistics ::
  GetSendStatistics
getSendStatistics = GetSendStatistics'

instance AWSRequest GetSendStatistics where
  type Rs GetSendStatistics = GetSendStatisticsResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "GetSendStatisticsResult"
      ( \s h x ->
          GetSendStatisticsResponse'
            <$> ( x .@? "SendDataPoints" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable GetSendStatistics

instance NFData GetSendStatistics

instance ToHeaders GetSendStatistics where
  toHeaders = const mempty

instance ToPath GetSendStatistics where
  toPath = const "/"

instance ToQuery GetSendStatistics where
  toQuery =
    const
      ( mconcat
          [ "Action" =: ("GetSendStatistics" :: ByteString),
            "Version" =: ("2010-12-01" :: ByteString)
          ]
      )

-- | Represents a list of data points. This list contains aggregated data from the previous two weeks of your sending activity with Amazon SES.
--
--
--
-- /See:/ 'getSendStatisticsResponse' smart constructor.
data GetSendStatisticsResponse = GetSendStatisticsResponse'
  { _gssrrsSendDataPoints ::
      !( Maybe
           [SendDataPoint]
       ),
    _gssrrsResponseStatus ::
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

-- | Creates a value of 'GetSendStatisticsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssrrsSendDataPoints' - A list of data points, each of which represents 15 minutes of activity.
--
-- * 'gssrrsResponseStatus' - -- | The response status code.
getSendStatisticsResponse ::
  -- | 'gssrrsResponseStatus'
  Int ->
  GetSendStatisticsResponse
getSendStatisticsResponse pResponseStatus_ =
  GetSendStatisticsResponse'
    { _gssrrsSendDataPoints =
        Nothing,
      _gssrrsResponseStatus = pResponseStatus_
    }

-- | A list of data points, each of which represents 15 minutes of activity.
gssrrsSendDataPoints :: Lens' GetSendStatisticsResponse [SendDataPoint]
gssrrsSendDataPoints = lens _gssrrsSendDataPoints (\s a -> s {_gssrrsSendDataPoints = a}) . _Default . _Coerce

-- | -- | The response status code.
gssrrsResponseStatus :: Lens' GetSendStatisticsResponse Int
gssrrsResponseStatus = lens _gssrrsResponseStatus (\s a -> s {_gssrrsResponseStatus = a})

instance NFData GetSendStatisticsResponse
