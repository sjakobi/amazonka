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
-- Module      : Network.AWS.Discovery.DescribeAgents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists agents or connectors as specified by ID or other filters. All agents/connectors associated with your user account can be listed if you call @DescribeAgents@ as is without passing any parameters.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Discovery.DescribeAgents
  ( -- * Creating a Request
    describeAgents,
    DescribeAgents,

    -- * Request Lenses
    daAgentIds,
    daNextToken,
    daMaxResults,
    daFilters,

    -- * Destructuring the Response
    describeAgentsResponse,
    DescribeAgentsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsAgentsInfo,
    desrsResponseStatus,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAgents' smart constructor.
data DescribeAgents = DescribeAgents'
  { _daAgentIds ::
      !(Maybe [Text]),
    _daNextToken :: !(Maybe Text),
    _daMaxResults :: !(Maybe Int),
    _daFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAgents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daAgentIds' - The agent or the Connector IDs for which you want information. If you specify no IDs, the system returns information about all agents/Connectors associated with your AWS user account.
--
-- * 'daNextToken' - Token to retrieve the next set of results. For example, if you previously specified 100 IDs for @DescribeAgentsRequest$agentIds@ but set @DescribeAgentsRequest$maxResults@ to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.
--
-- * 'daMaxResults' - The total number of agents/Connectors to return in a single page of output. The maximum value is 100.
--
-- * 'daFilters' - You can filter the request using various logical operators and a /key/ -/value/ format. For example:  @{"key": "collectionStatus", "value": "STARTED"}@
describeAgents ::
  DescribeAgents
describeAgents =
  DescribeAgents'
    { _daAgentIds = Nothing,
      _daNextToken = Nothing,
      _daMaxResults = Nothing,
      _daFilters = Nothing
    }

-- | The agent or the Connector IDs for which you want information. If you specify no IDs, the system returns information about all agents/Connectors associated with your AWS user account.
daAgentIds :: Lens' DescribeAgents [Text]
daAgentIds = lens _daAgentIds (\s a -> s {_daAgentIds = a}) . _Default . _Coerce

-- | Token to retrieve the next set of results. For example, if you previously specified 100 IDs for @DescribeAgentsRequest$agentIds@ but set @DescribeAgentsRequest$maxResults@ to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.
daNextToken :: Lens' DescribeAgents (Maybe Text)
daNextToken = lens _daNextToken (\s a -> s {_daNextToken = a})

-- | The total number of agents/Connectors to return in a single page of output. The maximum value is 100.
daMaxResults :: Lens' DescribeAgents (Maybe Int)
daMaxResults = lens _daMaxResults (\s a -> s {_daMaxResults = a})

-- | You can filter the request using various logical operators and a /key/ -/value/ format. For example:  @{"key": "collectionStatus", "value": "STARTED"}@
daFilters :: Lens' DescribeAgents [Filter]
daFilters = lens _daFilters (\s a -> s {_daFilters = a}) . _Default . _Coerce

instance AWSPager DescribeAgents where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsAgentsInfo) = Nothing
    | otherwise =
      Just $ rq & daNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeAgents where
  type Rs DescribeAgents = DescribeAgentsResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          DescribeAgentsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "agentsInfo" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAgents

instance NFData DescribeAgents

instance ToHeaders DescribeAgents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.DescribeAgents" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAgents where
  toJSON DescribeAgents' {..} =
    object
      ( catMaybes
          [ ("agentIds" .=) <$> _daAgentIds,
            ("nextToken" .=) <$> _daNextToken,
            ("maxResults" .=) <$> _daMaxResults,
            ("filters" .=) <$> _daFilters
          ]
      )

instance ToPath DescribeAgents where
  toPath = const "/"

instance ToQuery DescribeAgents where
  toQuery = const mempty

-- | /See:/ 'describeAgentsResponse' smart constructor.
data DescribeAgentsResponse = DescribeAgentsResponse'
  { _desrsNextToken ::
      !(Maybe Text),
    _desrsAgentsInfo ::
      !(Maybe [AgentInfo]),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeAgentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - Token to retrieve the next set of results. For example, if you specified 100 IDs for @DescribeAgentsRequest$agentIds@ but set @DescribeAgentsRequest$maxResults@ to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.
--
-- * 'desrsAgentsInfo' - Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an agent/Connector ID. The output includes agent/Connector IDs, IP addresses, media access control (MAC) addresses, agent/Connector health, host name where the agent/Connector resides, and the version number of each agent/Connector.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeAgentsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeAgentsResponse
describeAgentsResponse pResponseStatus_ =
  DescribeAgentsResponse'
    { _desrsNextToken = Nothing,
      _desrsAgentsInfo = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | Token to retrieve the next set of results. For example, if you specified 100 IDs for @DescribeAgentsRequest$agentIds@ but set @DescribeAgentsRequest$maxResults@ to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.
desrsNextToken :: Lens' DescribeAgentsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an agent/Connector ID. The output includes agent/Connector IDs, IP addresses, media access control (MAC) addresses, agent/Connector health, host name where the agent/Connector resides, and the version number of each agent/Connector.
desrsAgentsInfo :: Lens' DescribeAgentsResponse [AgentInfo]
desrsAgentsInfo = lens _desrsAgentsInfo (\s a -> s {_desrsAgentsInfo = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeAgentsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeAgentsResponse
