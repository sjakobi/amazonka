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
-- Module      : Network.AWS.Pinpoint.GetApplicationDateRangeKpi
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves (queries) pre-aggregated data for a standard metric that applies to an application.
module Network.AWS.Pinpoint.GetApplicationDateRangeKpi
  ( -- * Creating a Request
    getApplicationDateRangeKpi,
    GetApplicationDateRangeKpi,

    -- * Request Lenses
    gadrkNextToken,
    gadrkPageSize,
    gadrkStartTime,
    gadrkEndTime,
    gadrkApplicationId,
    gadrkKpiName,

    -- * Destructuring the Response
    getApplicationDateRangeKpiResponse,
    GetApplicationDateRangeKpiResponse,

    -- * Response Lenses
    gadrkrrsResponseStatus,
    gadrkrrsApplicationDateRangeKpiResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getApplicationDateRangeKpi' smart constructor.
data GetApplicationDateRangeKpi = GetApplicationDateRangeKpi'
  { _gadrkNextToken ::
      !(Maybe Text),
    _gadrkPageSize ::
      !(Maybe Text),
    _gadrkStartTime ::
      !(Maybe POSIX),
    _gadrkEndTime ::
      !(Maybe POSIX),
    _gadrkApplicationId ::
      !Text,
    _gadrkKpiName ::
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

-- | Creates a value of 'GetApplicationDateRangeKpi' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadrkNextToken' - The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gadrkPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gadrkStartTime' - The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.
--
-- * 'gadrkEndTime' - The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.
--
-- * 'gadrkApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'gadrkKpiName' - The name of the metric, also referred to as a /key performance indicator (KPI)/ , to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
getApplicationDateRangeKpi ::
  -- | 'gadrkApplicationId'
  Text ->
  -- | 'gadrkKpiName'
  Text ->
  GetApplicationDateRangeKpi
getApplicationDateRangeKpi pApplicationId_ pKpiName_ =
  GetApplicationDateRangeKpi'
    { _gadrkNextToken =
        Nothing,
      _gadrkPageSize = Nothing,
      _gadrkStartTime = Nothing,
      _gadrkEndTime = Nothing,
      _gadrkApplicationId = pApplicationId_,
      _gadrkKpiName = pKpiName_
    }

-- | The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gadrkNextToken :: Lens' GetApplicationDateRangeKpi (Maybe Text)
gadrkNextToken = lens _gadrkNextToken (\s a -> s {_gadrkNextToken = a})

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gadrkPageSize :: Lens' GetApplicationDateRangeKpi (Maybe Text)
gadrkPageSize = lens _gadrkPageSize (\s a -> s {_gadrkPageSize = a})

-- | The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.
gadrkStartTime :: Lens' GetApplicationDateRangeKpi (Maybe UTCTime)
gadrkStartTime = lens _gadrkStartTime (\s a -> s {_gadrkStartTime = a}) . mapping _Time

-- | The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.
gadrkEndTime :: Lens' GetApplicationDateRangeKpi (Maybe UTCTime)
gadrkEndTime = lens _gadrkEndTime (\s a -> s {_gadrkEndTime = a}) . mapping _Time

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gadrkApplicationId :: Lens' GetApplicationDateRangeKpi Text
gadrkApplicationId = lens _gadrkApplicationId (\s a -> s {_gadrkApplicationId = a})

-- | The name of the metric, also referred to as a /key performance indicator (KPI)/ , to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
gadrkKpiName :: Lens' GetApplicationDateRangeKpi Text
gadrkKpiName = lens _gadrkKpiName (\s a -> s {_gadrkKpiName = a})

instance AWSRequest GetApplicationDateRangeKpi where
  type
    Rs GetApplicationDateRangeKpi =
      GetApplicationDateRangeKpiResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetApplicationDateRangeKpiResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetApplicationDateRangeKpi

instance NFData GetApplicationDateRangeKpi

instance ToHeaders GetApplicationDateRangeKpi where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetApplicationDateRangeKpi where
  toPath GetApplicationDateRangeKpi' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gadrkApplicationId,
        "/kpis/daterange/",
        toBS _gadrkKpiName
      ]

instance ToQuery GetApplicationDateRangeKpi where
  toQuery GetApplicationDateRangeKpi' {..} =
    mconcat
      [ "next-token" =: _gadrkNextToken,
        "page-size" =: _gadrkPageSize,
        "start-time" =: _gadrkStartTime,
        "end-time" =: _gadrkEndTime
      ]

-- | /See:/ 'getApplicationDateRangeKpiResponse' smart constructor.
data GetApplicationDateRangeKpiResponse = GetApplicationDateRangeKpiResponse'
  { _gadrkrrsResponseStatus ::
      !Int,
    _gadrkrrsApplicationDateRangeKpiResponse ::
      !ApplicationDateRangeKpiResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetApplicationDateRangeKpiResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadrkrrsResponseStatus' - -- | The response status code.
--
-- * 'gadrkrrsApplicationDateRangeKpiResponse' - Undocumented member.
getApplicationDateRangeKpiResponse ::
  -- | 'gadrkrrsResponseStatus'
  Int ->
  -- | 'gadrkrrsApplicationDateRangeKpiResponse'
  ApplicationDateRangeKpiResponse ->
  GetApplicationDateRangeKpiResponse
getApplicationDateRangeKpiResponse
  pResponseStatus_
  pApplicationDateRangeKpiResponse_ =
    GetApplicationDateRangeKpiResponse'
      { _gadrkrrsResponseStatus =
          pResponseStatus_,
        _gadrkrrsApplicationDateRangeKpiResponse =
          pApplicationDateRangeKpiResponse_
      }

-- | -- | The response status code.
gadrkrrsResponseStatus :: Lens' GetApplicationDateRangeKpiResponse Int
gadrkrrsResponseStatus = lens _gadrkrrsResponseStatus (\s a -> s {_gadrkrrsResponseStatus = a})

-- | Undocumented member.
gadrkrrsApplicationDateRangeKpiResponse :: Lens' GetApplicationDateRangeKpiResponse ApplicationDateRangeKpiResponse
gadrkrrsApplicationDateRangeKpiResponse = lens _gadrkrrsApplicationDateRangeKpiResponse (\s a -> s {_gadrkrrsApplicationDateRangeKpiResponse = a})

instance NFData GetApplicationDateRangeKpiResponse
