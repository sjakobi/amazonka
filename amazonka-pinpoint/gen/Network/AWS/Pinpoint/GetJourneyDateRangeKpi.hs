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
-- Module      : Network.AWS.Pinpoint.GetJourneyDateRangeKpi
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves (queries) pre-aggregated data for a standard engagement metric that applies to a journey.
module Network.AWS.Pinpoint.GetJourneyDateRangeKpi
  ( -- * Creating a Request
    getJourneyDateRangeKpi,
    GetJourneyDateRangeKpi,

    -- * Request Lenses
    gjdrkNextToken,
    gjdrkPageSize,
    gjdrkStartTime,
    gjdrkEndTime,
    gjdrkJourneyId,
    gjdrkApplicationId,
    gjdrkKpiName,

    -- * Destructuring the Response
    getJourneyDateRangeKpiResponse,
    GetJourneyDateRangeKpiResponse,

    -- * Response Lenses
    gjdrkrrsResponseStatus,
    gjdrkrrsJourneyDateRangeKpiResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getJourneyDateRangeKpi' smart constructor.
data GetJourneyDateRangeKpi = GetJourneyDateRangeKpi'
  { _gjdrkNextToken ::
      !(Maybe Text),
    _gjdrkPageSize ::
      !(Maybe Text),
    _gjdrkStartTime ::
      !(Maybe POSIX),
    _gjdrkEndTime ::
      !(Maybe POSIX),
    _gjdrkJourneyId :: !Text,
    _gjdrkApplicationId ::
      !Text,
    _gjdrkKpiName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetJourneyDateRangeKpi' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjdrkNextToken' - The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gjdrkPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gjdrkStartTime' - The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.
--
-- * 'gjdrkEndTime' - The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.
--
-- * 'gjdrkJourneyId' - The unique identifier for the journey.
--
-- * 'gjdrkApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'gjdrkKpiName' - The name of the metric, also referred to as a /key performance indicator (KPI)/ , to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
getJourneyDateRangeKpi ::
  -- | 'gjdrkJourneyId'
  Text ->
  -- | 'gjdrkApplicationId'
  Text ->
  -- | 'gjdrkKpiName'
  Text ->
  GetJourneyDateRangeKpi
getJourneyDateRangeKpi
  pJourneyId_
  pApplicationId_
  pKpiName_ =
    GetJourneyDateRangeKpi'
      { _gjdrkNextToken = Nothing,
        _gjdrkPageSize = Nothing,
        _gjdrkStartTime = Nothing,
        _gjdrkEndTime = Nothing,
        _gjdrkJourneyId = pJourneyId_,
        _gjdrkApplicationId = pApplicationId_,
        _gjdrkKpiName = pKpiName_
      }

-- | The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gjdrkNextToken :: Lens' GetJourneyDateRangeKpi (Maybe Text)
gjdrkNextToken = lens _gjdrkNextToken (\s a -> s {_gjdrkNextToken = a})

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gjdrkPageSize :: Lens' GetJourneyDateRangeKpi (Maybe Text)
gjdrkPageSize = lens _gjdrkPageSize (\s a -> s {_gjdrkPageSize = a})

-- | The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.
gjdrkStartTime :: Lens' GetJourneyDateRangeKpi (Maybe UTCTime)
gjdrkStartTime = lens _gjdrkStartTime (\s a -> s {_gjdrkStartTime = a}) . mapping _Time

-- | The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.
gjdrkEndTime :: Lens' GetJourneyDateRangeKpi (Maybe UTCTime)
gjdrkEndTime = lens _gjdrkEndTime (\s a -> s {_gjdrkEndTime = a}) . mapping _Time

-- | The unique identifier for the journey.
gjdrkJourneyId :: Lens' GetJourneyDateRangeKpi Text
gjdrkJourneyId = lens _gjdrkJourneyId (\s a -> s {_gjdrkJourneyId = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gjdrkApplicationId :: Lens' GetJourneyDateRangeKpi Text
gjdrkApplicationId = lens _gjdrkApplicationId (\s a -> s {_gjdrkApplicationId = a})

-- | The name of the metric, also referred to as a /key performance indicator (KPI)/ , to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
gjdrkKpiName :: Lens' GetJourneyDateRangeKpi Text
gjdrkKpiName = lens _gjdrkKpiName (\s a -> s {_gjdrkKpiName = a})

instance AWSRequest GetJourneyDateRangeKpi where
  type
    Rs GetJourneyDateRangeKpi =
      GetJourneyDateRangeKpiResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetJourneyDateRangeKpiResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetJourneyDateRangeKpi

instance NFData GetJourneyDateRangeKpi

instance ToHeaders GetJourneyDateRangeKpi where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetJourneyDateRangeKpi where
  toPath GetJourneyDateRangeKpi' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gjdrkApplicationId,
        "/journeys/",
        toBS _gjdrkJourneyId,
        "/kpis/daterange/",
        toBS _gjdrkKpiName
      ]

instance ToQuery GetJourneyDateRangeKpi where
  toQuery GetJourneyDateRangeKpi' {..} =
    mconcat
      [ "next-token" =: _gjdrkNextToken,
        "page-size" =: _gjdrkPageSize,
        "start-time" =: _gjdrkStartTime,
        "end-time" =: _gjdrkEndTime
      ]

-- | /See:/ 'getJourneyDateRangeKpiResponse' smart constructor.
data GetJourneyDateRangeKpiResponse = GetJourneyDateRangeKpiResponse'
  { _gjdrkrrsResponseStatus ::
      !Int,
    _gjdrkrrsJourneyDateRangeKpiResponse ::
      !JourneyDateRangeKpiResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetJourneyDateRangeKpiResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjdrkrrsResponseStatus' - -- | The response status code.
--
-- * 'gjdrkrrsJourneyDateRangeKpiResponse' - Undocumented member.
getJourneyDateRangeKpiResponse ::
  -- | 'gjdrkrrsResponseStatus'
  Int ->
  -- | 'gjdrkrrsJourneyDateRangeKpiResponse'
  JourneyDateRangeKpiResponse ->
  GetJourneyDateRangeKpiResponse
getJourneyDateRangeKpiResponse
  pResponseStatus_
  pJourneyDateRangeKpiResponse_ =
    GetJourneyDateRangeKpiResponse'
      { _gjdrkrrsResponseStatus =
          pResponseStatus_,
        _gjdrkrrsJourneyDateRangeKpiResponse =
          pJourneyDateRangeKpiResponse_
      }

-- | -- | The response status code.
gjdrkrrsResponseStatus :: Lens' GetJourneyDateRangeKpiResponse Int
gjdrkrrsResponseStatus = lens _gjdrkrrsResponseStatus (\s a -> s {_gjdrkrrsResponseStatus = a})

-- | Undocumented member.
gjdrkrrsJourneyDateRangeKpiResponse :: Lens' GetJourneyDateRangeKpiResponse JourneyDateRangeKpiResponse
gjdrkrrsJourneyDateRangeKpiResponse = lens _gjdrkrrsJourneyDateRangeKpiResponse (\s a -> s {_gjdrkrrsJourneyDateRangeKpiResponse = a})

instance NFData GetJourneyDateRangeKpiResponse
