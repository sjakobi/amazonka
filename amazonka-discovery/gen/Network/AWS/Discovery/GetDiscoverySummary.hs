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
-- Module      : Network.AWS.Discovery.GetDiscoverySummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a short summary of discovered assets.
--
--
-- This API operation takes no request parameters and is called as is at the command prompt as shown in the example.
module Network.AWS.Discovery.GetDiscoverySummary
  ( -- * Creating a Request
    getDiscoverySummary,
    GetDiscoverySummary,

    -- * Destructuring the Response
    getDiscoverySummaryResponse,
    GetDiscoverySummaryResponse,

    -- * Response Lenses
    gdsrrsServers,
    gdsrrsAgentSummary,
    gdsrrsConnectorSummary,
    gdsrrsServersMappedToApplications,
    gdsrrsApplications,
    gdsrrsServersMappedtoTags,
    gdsrrsResponseStatus,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDiscoverySummary' smart constructor.
data GetDiscoverySummary = GetDiscoverySummary'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDiscoverySummary' with the minimum fields required to make a request.
getDiscoverySummary ::
  GetDiscoverySummary
getDiscoverySummary = GetDiscoverySummary'

instance AWSRequest GetDiscoverySummary where
  type
    Rs GetDiscoverySummary =
      GetDiscoverySummaryResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          GetDiscoverySummaryResponse'
            <$> (x .?> "servers")
            <*> (x .?> "agentSummary")
            <*> (x .?> "connectorSummary")
            <*> (x .?> "serversMappedToApplications")
            <*> (x .?> "applications")
            <*> (x .?> "serversMappedtoTags")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDiscoverySummary

instance NFData GetDiscoverySummary

instance ToHeaders GetDiscoverySummary where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.GetDiscoverySummary" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDiscoverySummary where
  toJSON = const (Object mempty)

instance ToPath GetDiscoverySummary where
  toPath = const "/"

instance ToQuery GetDiscoverySummary where
  toQuery = const mempty

-- | /See:/ 'getDiscoverySummaryResponse' smart constructor.
data GetDiscoverySummaryResponse = GetDiscoverySummaryResponse'
  { _gdsrrsServers ::
      !( Maybe
           Integer
       ),
    _gdsrrsAgentSummary ::
      !( Maybe
           CustomerAgentInfo
       ),
    _gdsrrsConnectorSummary ::
      !( Maybe
           CustomerConnectorInfo
       ),
    _gdsrrsServersMappedToApplications ::
      !( Maybe
           Integer
       ),
    _gdsrrsApplications ::
      !( Maybe
           Integer
       ),
    _gdsrrsServersMappedtoTags ::
      !( Maybe
           Integer
       ),
    _gdsrrsResponseStatus ::
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

-- | Creates a value of 'GetDiscoverySummaryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsrrsServers' - The number of servers discovered.
--
-- * 'gdsrrsAgentSummary' - Details about discovered agents, including agent status and health.
--
-- * 'gdsrrsConnectorSummary' - Details about discovered connectors, including connector status and health.
--
-- * 'gdsrrsServersMappedToApplications' - The number of servers mapped to applications.
--
-- * 'gdsrrsApplications' - The number of applications discovered.
--
-- * 'gdsrrsServersMappedtoTags' - The number of servers mapped to tags.
--
-- * 'gdsrrsResponseStatus' - -- | The response status code.
getDiscoverySummaryResponse ::
  -- | 'gdsrrsResponseStatus'
  Int ->
  GetDiscoverySummaryResponse
getDiscoverySummaryResponse pResponseStatus_ =
  GetDiscoverySummaryResponse'
    { _gdsrrsServers =
        Nothing,
      _gdsrrsAgentSummary = Nothing,
      _gdsrrsConnectorSummary = Nothing,
      _gdsrrsServersMappedToApplications = Nothing,
      _gdsrrsApplications = Nothing,
      _gdsrrsServersMappedtoTags = Nothing,
      _gdsrrsResponseStatus = pResponseStatus_
    }

-- | The number of servers discovered.
gdsrrsServers :: Lens' GetDiscoverySummaryResponse (Maybe Integer)
gdsrrsServers = lens _gdsrrsServers (\s a -> s {_gdsrrsServers = a})

-- | Details about discovered agents, including agent status and health.
gdsrrsAgentSummary :: Lens' GetDiscoverySummaryResponse (Maybe CustomerAgentInfo)
gdsrrsAgentSummary = lens _gdsrrsAgentSummary (\s a -> s {_gdsrrsAgentSummary = a})

-- | Details about discovered connectors, including connector status and health.
gdsrrsConnectorSummary :: Lens' GetDiscoverySummaryResponse (Maybe CustomerConnectorInfo)
gdsrrsConnectorSummary = lens _gdsrrsConnectorSummary (\s a -> s {_gdsrrsConnectorSummary = a})

-- | The number of servers mapped to applications.
gdsrrsServersMappedToApplications :: Lens' GetDiscoverySummaryResponse (Maybe Integer)
gdsrrsServersMappedToApplications = lens _gdsrrsServersMappedToApplications (\s a -> s {_gdsrrsServersMappedToApplications = a})

-- | The number of applications discovered.
gdsrrsApplications :: Lens' GetDiscoverySummaryResponse (Maybe Integer)
gdsrrsApplications = lens _gdsrrsApplications (\s a -> s {_gdsrrsApplications = a})

-- | The number of servers mapped to tags.
gdsrrsServersMappedtoTags :: Lens' GetDiscoverySummaryResponse (Maybe Integer)
gdsrrsServersMappedtoTags = lens _gdsrrsServersMappedtoTags (\s a -> s {_gdsrrsServersMappedtoTags = a})

-- | -- | The response status code.
gdsrrsResponseStatus :: Lens' GetDiscoverySummaryResponse Int
gdsrrsResponseStatus = lens _gdsrrsResponseStatus (\s a -> s {_gdsrrsResponseStatus = a})

instance NFData GetDiscoverySummaryResponse
