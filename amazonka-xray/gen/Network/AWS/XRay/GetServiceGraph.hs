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
-- Module      : Network.AWS.XRay.GetServiceGraph
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the <https://docs.aws.amazon.com/xray/index.html AWS X-Ray SDK> . Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.
--
--
--
-- This operation returns paginated results.
module Network.AWS.XRay.GetServiceGraph
  ( -- * Creating a Request
    getServiceGraph,
    GetServiceGraph,

    -- * Request Lenses
    gsgNextToken,
    gsgGroupName,
    gsgGroupARN,
    gsgStartTime,
    gsgEndTime,

    -- * Destructuring the Response
    getServiceGraphResponse,
    GetServiceGraphResponse,

    -- * Response Lenses
    gsgrrsNextToken,
    gsgrrsServices,
    gsgrrsStartTime,
    gsgrrsContainsOldGroupVersions,
    gsgrrsEndTime,
    gsgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getServiceGraph' smart constructor.
data GetServiceGraph = GetServiceGraph'
  { _gsgNextToken ::
      !(Maybe Text),
    _gsgGroupName :: !(Maybe Text),
    _gsgGroupARN :: !(Maybe Text),
    _gsgStartTime :: !POSIX,
    _gsgEndTime :: !POSIX
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetServiceGraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsgNextToken' - Pagination token.
--
-- * 'gsgGroupName' - The name of a group based on which you want to generate a graph.
--
-- * 'gsgGroupARN' - The Amazon Resource Name (ARN) of a group based on which you want to generate a graph.
--
-- * 'gsgStartTime' - The start of the time frame for which to generate a graph.
--
-- * 'gsgEndTime' - The end of the timeframe for which to generate a graph.
getServiceGraph ::
  -- | 'gsgStartTime'
  UTCTime ->
  -- | 'gsgEndTime'
  UTCTime ->
  GetServiceGraph
getServiceGraph pStartTime_ pEndTime_ =
  GetServiceGraph'
    { _gsgNextToken = Nothing,
      _gsgGroupName = Nothing,
      _gsgGroupARN = Nothing,
      _gsgStartTime = _Time # pStartTime_,
      _gsgEndTime = _Time # pEndTime_
    }

-- | Pagination token.
gsgNextToken :: Lens' GetServiceGraph (Maybe Text)
gsgNextToken = lens _gsgNextToken (\s a -> s {_gsgNextToken = a})

-- | The name of a group based on which you want to generate a graph.
gsgGroupName :: Lens' GetServiceGraph (Maybe Text)
gsgGroupName = lens _gsgGroupName (\s a -> s {_gsgGroupName = a})

-- | The Amazon Resource Name (ARN) of a group based on which you want to generate a graph.
gsgGroupARN :: Lens' GetServiceGraph (Maybe Text)
gsgGroupARN = lens _gsgGroupARN (\s a -> s {_gsgGroupARN = a})

-- | The start of the time frame for which to generate a graph.
gsgStartTime :: Lens' GetServiceGraph UTCTime
gsgStartTime = lens _gsgStartTime (\s a -> s {_gsgStartTime = a}) . _Time

-- | The end of the timeframe for which to generate a graph.
gsgEndTime :: Lens' GetServiceGraph UTCTime
gsgEndTime = lens _gsgEndTime (\s a -> s {_gsgEndTime = a}) . _Time

instance AWSPager GetServiceGraph where
  page rq rs
    | stop (rs ^. gsgrrsNextToken) = Nothing
    | stop (rs ^. gsgrrsServices) = Nothing
    | otherwise =
      Just $ rq & gsgNextToken .~ rs ^. gsgrrsNextToken

instance AWSRequest GetServiceGraph where
  type Rs GetServiceGraph = GetServiceGraphResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetServiceGraphResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Services" .!@ mempty)
            <*> (x .?> "StartTime")
            <*> (x .?> "ContainsOldGroupVersions")
            <*> (x .?> "EndTime")
            <*> (pure (fromEnum s))
      )

instance Hashable GetServiceGraph

instance NFData GetServiceGraph

instance ToHeaders GetServiceGraph where
  toHeaders = const mempty

instance ToJSON GetServiceGraph where
  toJSON GetServiceGraph' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gsgNextToken,
            ("GroupName" .=) <$> _gsgGroupName,
            ("GroupARN" .=) <$> _gsgGroupARN,
            Just ("StartTime" .= _gsgStartTime),
            Just ("EndTime" .= _gsgEndTime)
          ]
      )

instance ToPath GetServiceGraph where
  toPath = const "/ServiceGraph"

instance ToQuery GetServiceGraph where
  toQuery = const mempty

-- | /See:/ 'getServiceGraphResponse' smart constructor.
data GetServiceGraphResponse = GetServiceGraphResponse'
  { _gsgrrsNextToken ::
      !(Maybe Text),
    _gsgrrsServices ::
      !(Maybe [ServiceInfo]),
    _gsgrrsStartTime ::
      !(Maybe POSIX),
    _gsgrrsContainsOldGroupVersions ::
      !(Maybe Bool),
    _gsgrrsEndTime ::
      !(Maybe POSIX),
    _gsgrrsResponseStatus ::
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

-- | Creates a value of 'GetServiceGraphResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsgrrsNextToken' - Pagination token.
--
-- * 'gsgrrsServices' - The services that have processed a traced request during the specified time frame.
--
-- * 'gsgrrsStartTime' - The start of the time frame for which the graph was generated.
--
-- * 'gsgrrsContainsOldGroupVersions' - A flag indicating whether the group's filter expression has been consistent, or if the returned service graph may show traces from an older version of the group's filter expression.
--
-- * 'gsgrrsEndTime' - The end of the time frame for which the graph was generated.
--
-- * 'gsgrrsResponseStatus' - -- | The response status code.
getServiceGraphResponse ::
  -- | 'gsgrrsResponseStatus'
  Int ->
  GetServiceGraphResponse
getServiceGraphResponse pResponseStatus_ =
  GetServiceGraphResponse'
    { _gsgrrsNextToken =
        Nothing,
      _gsgrrsServices = Nothing,
      _gsgrrsStartTime = Nothing,
      _gsgrrsContainsOldGroupVersions = Nothing,
      _gsgrrsEndTime = Nothing,
      _gsgrrsResponseStatus = pResponseStatus_
    }

-- | Pagination token.
gsgrrsNextToken :: Lens' GetServiceGraphResponse (Maybe Text)
gsgrrsNextToken = lens _gsgrrsNextToken (\s a -> s {_gsgrrsNextToken = a})

-- | The services that have processed a traced request during the specified time frame.
gsgrrsServices :: Lens' GetServiceGraphResponse [ServiceInfo]
gsgrrsServices = lens _gsgrrsServices (\s a -> s {_gsgrrsServices = a}) . _Default . _Coerce

-- | The start of the time frame for which the graph was generated.
gsgrrsStartTime :: Lens' GetServiceGraphResponse (Maybe UTCTime)
gsgrrsStartTime = lens _gsgrrsStartTime (\s a -> s {_gsgrrsStartTime = a}) . mapping _Time

-- | A flag indicating whether the group's filter expression has been consistent, or if the returned service graph may show traces from an older version of the group's filter expression.
gsgrrsContainsOldGroupVersions :: Lens' GetServiceGraphResponse (Maybe Bool)
gsgrrsContainsOldGroupVersions = lens _gsgrrsContainsOldGroupVersions (\s a -> s {_gsgrrsContainsOldGroupVersions = a})

-- | The end of the time frame for which the graph was generated.
gsgrrsEndTime :: Lens' GetServiceGraphResponse (Maybe UTCTime)
gsgrrsEndTime = lens _gsgrrsEndTime (\s a -> s {_gsgrrsEndTime = a}) . mapping _Time

-- | -- | The response status code.
gsgrrsResponseStatus :: Lens' GetServiceGraphResponse Int
gsgrrsResponseStatus = lens _gsgrrsResponseStatus (\s a -> s {_gsgrrsResponseStatus = a})

instance NFData GetServiceGraphResponse
