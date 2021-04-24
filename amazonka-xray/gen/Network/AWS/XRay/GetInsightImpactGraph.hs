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
-- Module      : Network.AWS.XRay.GetInsightImpactGraph
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a service graph structure filtered by the specified insight. The service graph is limited to only structural information. For a complete service graph, use this API with the GetServiceGraph API.
module Network.AWS.XRay.GetInsightImpactGraph
  ( -- * Creating a Request
    getInsightImpactGraph,
    GetInsightImpactGraph,

    -- * Request Lenses
    giigNextToken,
    giigInsightId,
    giigStartTime,
    giigEndTime,

    -- * Destructuring the Response
    getInsightImpactGraphResponse,
    GetInsightImpactGraphResponse,

    -- * Response Lenses
    giigrrsNextToken,
    giigrrsServices,
    giigrrsServiceGraphEndTime,
    giigrrsStartTime,
    giigrrsEndTime,
    giigrrsServiceGraphStartTime,
    giigrrsInsightId,
    giigrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getInsightImpactGraph' smart constructor.
data GetInsightImpactGraph = GetInsightImpactGraph'
  { _giigNextToken ::
      !(Maybe Text),
    _giigInsightId :: !Text,
    _giigStartTime :: !POSIX,
    _giigEndTime :: !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetInsightImpactGraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giigNextToken' - Specify the pagination token returned by a previous request to retrieve the next page of results.
--
-- * 'giigInsightId' - The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.
--
-- * 'giigStartTime' - The estimated start time of the insight, in Unix time seconds. The StartTime is inclusive of the value provided and can't be more than 30 days old.
--
-- * 'giigEndTime' - The estimated end time of the insight, in Unix time seconds. The EndTime is exclusive of the value provided. The time range between the start time and end time can't be more than six hours.
getInsightImpactGraph ::
  -- | 'giigInsightId'
  Text ->
  -- | 'giigStartTime'
  UTCTime ->
  -- | 'giigEndTime'
  UTCTime ->
  GetInsightImpactGraph
getInsightImpactGraph
  pInsightId_
  pStartTime_
  pEndTime_ =
    GetInsightImpactGraph'
      { _giigNextToken = Nothing,
        _giigInsightId = pInsightId_,
        _giigStartTime = _Time # pStartTime_,
        _giigEndTime = _Time # pEndTime_
      }

-- | Specify the pagination token returned by a previous request to retrieve the next page of results.
giigNextToken :: Lens' GetInsightImpactGraph (Maybe Text)
giigNextToken = lens _giigNextToken (\s a -> s {_giigNextToken = a})

-- | The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.
giigInsightId :: Lens' GetInsightImpactGraph Text
giigInsightId = lens _giigInsightId (\s a -> s {_giigInsightId = a})

-- | The estimated start time of the insight, in Unix time seconds. The StartTime is inclusive of the value provided and can't be more than 30 days old.
giigStartTime :: Lens' GetInsightImpactGraph UTCTime
giigStartTime = lens _giigStartTime (\s a -> s {_giigStartTime = a}) . _Time

-- | The estimated end time of the insight, in Unix time seconds. The EndTime is exclusive of the value provided. The time range between the start time and end time can't be more than six hours.
giigEndTime :: Lens' GetInsightImpactGraph UTCTime
giigEndTime = lens _giigEndTime (\s a -> s {_giigEndTime = a}) . _Time

instance AWSRequest GetInsightImpactGraph where
  type
    Rs GetInsightImpactGraph =
      GetInsightImpactGraphResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetInsightImpactGraphResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Services" .!@ mempty)
            <*> (x .?> "ServiceGraphEndTime")
            <*> (x .?> "StartTime")
            <*> (x .?> "EndTime")
            <*> (x .?> "ServiceGraphStartTime")
            <*> (x .?> "InsightId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetInsightImpactGraph

instance NFData GetInsightImpactGraph

instance ToHeaders GetInsightImpactGraph where
  toHeaders = const mempty

instance ToJSON GetInsightImpactGraph where
  toJSON GetInsightImpactGraph' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _giigNextToken,
            Just ("InsightId" .= _giigInsightId),
            Just ("StartTime" .= _giigStartTime),
            Just ("EndTime" .= _giigEndTime)
          ]
      )

instance ToPath GetInsightImpactGraph where
  toPath = const "/InsightImpactGraph"

instance ToQuery GetInsightImpactGraph where
  toQuery = const mempty

-- | /See:/ 'getInsightImpactGraphResponse' smart constructor.
data GetInsightImpactGraphResponse = GetInsightImpactGraphResponse'
  { _giigrrsNextToken ::
      !( Maybe
           Text
       ),
    _giigrrsServices ::
      !( Maybe
           [InsightImpactGraphService]
       ),
    _giigrrsServiceGraphEndTime ::
      !( Maybe
           POSIX
       ),
    _giigrrsStartTime ::
      !( Maybe
           POSIX
       ),
    _giigrrsEndTime ::
      !( Maybe
           POSIX
       ),
    _giigrrsServiceGraphStartTime ::
      !( Maybe
           POSIX
       ),
    _giigrrsInsightId ::
      !( Maybe
           Text
       ),
    _giigrrsResponseStatus ::
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

-- | Creates a value of 'GetInsightImpactGraphResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giigrrsNextToken' - Pagination token.
--
-- * 'giigrrsServices' - The AWS instrumented services related to the insight.
--
-- * 'giigrrsServiceGraphEndTime' - The time, in Unix seconds, at which the service graph ended.
--
-- * 'giigrrsStartTime' - The provided start time.
--
-- * 'giigrrsEndTime' - The provided end time.
--
-- * 'giigrrsServiceGraphStartTime' - The time, in Unix seconds, at which the service graph started.
--
-- * 'giigrrsInsightId' - The insight's unique identifier.
--
-- * 'giigrrsResponseStatus' - -- | The response status code.
getInsightImpactGraphResponse ::
  -- | 'giigrrsResponseStatus'
  Int ->
  GetInsightImpactGraphResponse
getInsightImpactGraphResponse pResponseStatus_ =
  GetInsightImpactGraphResponse'
    { _giigrrsNextToken =
        Nothing,
      _giigrrsServices = Nothing,
      _giigrrsServiceGraphEndTime = Nothing,
      _giigrrsStartTime = Nothing,
      _giigrrsEndTime = Nothing,
      _giigrrsServiceGraphStartTime = Nothing,
      _giigrrsInsightId = Nothing,
      _giigrrsResponseStatus = pResponseStatus_
    }

-- | Pagination token.
giigrrsNextToken :: Lens' GetInsightImpactGraphResponse (Maybe Text)
giigrrsNextToken = lens _giigrrsNextToken (\s a -> s {_giigrrsNextToken = a})

-- | The AWS instrumented services related to the insight.
giigrrsServices :: Lens' GetInsightImpactGraphResponse [InsightImpactGraphService]
giigrrsServices = lens _giigrrsServices (\s a -> s {_giigrrsServices = a}) . _Default . _Coerce

-- | The time, in Unix seconds, at which the service graph ended.
giigrrsServiceGraphEndTime :: Lens' GetInsightImpactGraphResponse (Maybe UTCTime)
giigrrsServiceGraphEndTime = lens _giigrrsServiceGraphEndTime (\s a -> s {_giigrrsServiceGraphEndTime = a}) . mapping _Time

-- | The provided start time.
giigrrsStartTime :: Lens' GetInsightImpactGraphResponse (Maybe UTCTime)
giigrrsStartTime = lens _giigrrsStartTime (\s a -> s {_giigrrsStartTime = a}) . mapping _Time

-- | The provided end time.
giigrrsEndTime :: Lens' GetInsightImpactGraphResponse (Maybe UTCTime)
giigrrsEndTime = lens _giigrrsEndTime (\s a -> s {_giigrrsEndTime = a}) . mapping _Time

-- | The time, in Unix seconds, at which the service graph started.
giigrrsServiceGraphStartTime :: Lens' GetInsightImpactGraphResponse (Maybe UTCTime)
giigrrsServiceGraphStartTime = lens _giigrrsServiceGraphStartTime (\s a -> s {_giigrrsServiceGraphStartTime = a}) . mapping _Time

-- | The insight's unique identifier.
giigrrsInsightId :: Lens' GetInsightImpactGraphResponse (Maybe Text)
giigrrsInsightId = lens _giigrrsInsightId (\s a -> s {_giigrrsInsightId = a})

-- | -- | The response status code.
giigrrsResponseStatus :: Lens' GetInsightImpactGraphResponse Int
giigrrsResponseStatus = lens _giigrrsResponseStatus (\s a -> s {_giigrrsResponseStatus = a})

instance NFData GetInsightImpactGraphResponse
