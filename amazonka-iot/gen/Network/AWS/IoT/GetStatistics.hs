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
-- Module      : Network.AWS.IoT.GetStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the count, average, sum, minimum, maximum, sum of squares, variance, and standard deviation for the specified aggregated field. If the aggregation field is of type @String@ , only the count statistic is returned.
module Network.AWS.IoT.GetStatistics
  ( -- * Creating a Request
    getStatistics,
    GetStatistics,

    -- * Request Lenses
    gsIndexName,
    gsQueryVersion,
    gsAggregationField,
    gsQueryString,

    -- * Destructuring the Response
    getStatisticsResponse,
    GetStatisticsResponse,

    -- * Response Lenses
    gsrrsStatistics,
    gsrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getStatistics' smart constructor.
data GetStatistics = GetStatistics'
  { _gsIndexName ::
      !(Maybe Text),
    _gsQueryVersion :: !(Maybe Text),
    _gsAggregationField :: !(Maybe Text),
    _gsQueryString :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsIndexName' - The name of the index to search. The default value is @AWS_Things@ .
--
-- * 'gsQueryVersion' - The version of the query used to search.
--
-- * 'gsAggregationField' - The aggregation field name.
--
-- * 'gsQueryString' - The query used to search. You can specify "*" for the query string to get the count of all indexed things in your AWS account.
getStatistics ::
  -- | 'gsQueryString'
  Text ->
  GetStatistics
getStatistics pQueryString_ =
  GetStatistics'
    { _gsIndexName = Nothing,
      _gsQueryVersion = Nothing,
      _gsAggregationField = Nothing,
      _gsQueryString = pQueryString_
    }

-- | The name of the index to search. The default value is @AWS_Things@ .
gsIndexName :: Lens' GetStatistics (Maybe Text)
gsIndexName = lens _gsIndexName (\s a -> s {_gsIndexName = a})

-- | The version of the query used to search.
gsQueryVersion :: Lens' GetStatistics (Maybe Text)
gsQueryVersion = lens _gsQueryVersion (\s a -> s {_gsQueryVersion = a})

-- | The aggregation field name.
gsAggregationField :: Lens' GetStatistics (Maybe Text)
gsAggregationField = lens _gsAggregationField (\s a -> s {_gsAggregationField = a})

-- | The query used to search. You can specify "*" for the query string to get the count of all indexed things in your AWS account.
gsQueryString :: Lens' GetStatistics Text
gsQueryString = lens _gsQueryString (\s a -> s {_gsQueryString = a})

instance AWSRequest GetStatistics where
  type Rs GetStatistics = GetStatisticsResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          GetStatisticsResponse'
            <$> (x .?> "statistics") <*> (pure (fromEnum s))
      )

instance Hashable GetStatistics

instance NFData GetStatistics

instance ToHeaders GetStatistics where
  toHeaders = const mempty

instance ToJSON GetStatistics where
  toJSON GetStatistics' {..} =
    object
      ( catMaybes
          [ ("indexName" .=) <$> _gsIndexName,
            ("queryVersion" .=) <$> _gsQueryVersion,
            ("aggregationField" .=) <$> _gsAggregationField,
            Just ("queryString" .= _gsQueryString)
          ]
      )

instance ToPath GetStatistics where
  toPath = const "/indices/statistics"

instance ToQuery GetStatistics where
  toQuery = const mempty

-- | /See:/ 'getStatisticsResponse' smart constructor.
data GetStatisticsResponse = GetStatisticsResponse'
  { _gsrrsStatistics ::
      !(Maybe Statistics),
    _gsrrsResponseStatus ::
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

-- | Creates a value of 'GetStatisticsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrrsStatistics' - The statistics returned by the Fleet Indexing service based on the query and aggregation field.
--
-- * 'gsrrsResponseStatus' - -- | The response status code.
getStatisticsResponse ::
  -- | 'gsrrsResponseStatus'
  Int ->
  GetStatisticsResponse
getStatisticsResponse pResponseStatus_ =
  GetStatisticsResponse'
    { _gsrrsStatistics = Nothing,
      _gsrrsResponseStatus = pResponseStatus_
    }

-- | The statistics returned by the Fleet Indexing service based on the query and aggregation field.
gsrrsStatistics :: Lens' GetStatisticsResponse (Maybe Statistics)
gsrrsStatistics = lens _gsrrsStatistics (\s a -> s {_gsrrsStatistics = a})

-- | -- | The response status code.
gsrrsResponseStatus :: Lens' GetStatisticsResponse Int
gsrrsResponseStatus = lens _gsrrsResponseStatus (\s a -> s {_gsrrsResponseStatus = a})

instance NFData GetStatisticsResponse
