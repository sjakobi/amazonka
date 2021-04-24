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
-- Module      : Network.AWS.Discovery.ListServerNeighbors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of servers that are one network hop away from a specified server.
module Network.AWS.Discovery.ListServerNeighbors
  ( -- * Creating a Request
    listServerNeighbors,
    ListServerNeighbors,

    -- * Request Lenses
    lsnNextToken,
    lsnMaxResults,
    lsnPortInformationNeeded,
    lsnNeighborConfigurationIds,
    lsnConfigurationId,

    -- * Destructuring the Response
    listServerNeighborsResponse,
    ListServerNeighborsResponse,

    -- * Response Lenses
    lsnrrsNextToken,
    lsnrrsKnownDependencyCount,
    lsnrrsResponseStatus,
    lsnrrsNeighbors,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listServerNeighbors' smart constructor.
data ListServerNeighbors = ListServerNeighbors'
  { _lsnNextToken ::
      !(Maybe Text),
    _lsnMaxResults :: !(Maybe Int),
    _lsnPortInformationNeeded ::
      !(Maybe Bool),
    _lsnNeighborConfigurationIds ::
      !(Maybe [Text]),
    _lsnConfigurationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListServerNeighbors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsnNextToken' - Token to retrieve the next set of results. For example, if you previously specified 100 IDs for @ListServerNeighborsRequest$neighborConfigurationIds@ but set @ListServerNeighborsRequest$maxResults@ to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.
--
-- * 'lsnMaxResults' - Maximum number of results to return in a single page of output.
--
-- * 'lsnPortInformationNeeded' - Flag to indicate if port and protocol information is needed as part of the response.
--
-- * 'lsnNeighborConfigurationIds' - List of configuration IDs to test for one-hop-away.
--
-- * 'lsnConfigurationId' - Configuration ID of the server for which neighbors are being listed.
listServerNeighbors ::
  -- | 'lsnConfigurationId'
  Text ->
  ListServerNeighbors
listServerNeighbors pConfigurationId_ =
  ListServerNeighbors'
    { _lsnNextToken = Nothing,
      _lsnMaxResults = Nothing,
      _lsnPortInformationNeeded = Nothing,
      _lsnNeighborConfigurationIds = Nothing,
      _lsnConfigurationId = pConfigurationId_
    }

-- | Token to retrieve the next set of results. For example, if you previously specified 100 IDs for @ListServerNeighborsRequest$neighborConfigurationIds@ but set @ListServerNeighborsRequest$maxResults@ to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.
lsnNextToken :: Lens' ListServerNeighbors (Maybe Text)
lsnNextToken = lens _lsnNextToken (\s a -> s {_lsnNextToken = a})

-- | Maximum number of results to return in a single page of output.
lsnMaxResults :: Lens' ListServerNeighbors (Maybe Int)
lsnMaxResults = lens _lsnMaxResults (\s a -> s {_lsnMaxResults = a})

-- | Flag to indicate if port and protocol information is needed as part of the response.
lsnPortInformationNeeded :: Lens' ListServerNeighbors (Maybe Bool)
lsnPortInformationNeeded = lens _lsnPortInformationNeeded (\s a -> s {_lsnPortInformationNeeded = a})

-- | List of configuration IDs to test for one-hop-away.
lsnNeighborConfigurationIds :: Lens' ListServerNeighbors [Text]
lsnNeighborConfigurationIds = lens _lsnNeighborConfigurationIds (\s a -> s {_lsnNeighborConfigurationIds = a}) . _Default . _Coerce

-- | Configuration ID of the server for which neighbors are being listed.
lsnConfigurationId :: Lens' ListServerNeighbors Text
lsnConfigurationId = lens _lsnConfigurationId (\s a -> s {_lsnConfigurationId = a})

instance AWSRequest ListServerNeighbors where
  type
    Rs ListServerNeighbors =
      ListServerNeighborsResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          ListServerNeighborsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "knownDependencyCount")
            <*> (pure (fromEnum s))
            <*> (x .?> "neighbors" .!@ mempty)
      )

instance Hashable ListServerNeighbors

instance NFData ListServerNeighbors

instance ToHeaders ListServerNeighbors where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.ListServerNeighbors" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListServerNeighbors where
  toJSON ListServerNeighbors' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lsnNextToken,
            ("maxResults" .=) <$> _lsnMaxResults,
            ("portInformationNeeded" .=)
              <$> _lsnPortInformationNeeded,
            ("neighborConfigurationIds" .=)
              <$> _lsnNeighborConfigurationIds,
            Just ("configurationId" .= _lsnConfigurationId)
          ]
      )

instance ToPath ListServerNeighbors where
  toPath = const "/"

instance ToQuery ListServerNeighbors where
  toQuery = const mempty

-- | /See:/ 'listServerNeighborsResponse' smart constructor.
data ListServerNeighborsResponse = ListServerNeighborsResponse'
  { _lsnrrsNextToken ::
      !(Maybe Text),
    _lsnrrsKnownDependencyCount ::
      !( Maybe
           Integer
       ),
    _lsnrrsResponseStatus ::
      !Int,
    _lsnrrsNeighbors ::
      ![NeighborConnectionDetail]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListServerNeighborsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsnrrsNextToken' - Token to retrieve the next set of results. For example, if you specified 100 IDs for @ListServerNeighborsRequest$neighborConfigurationIds@ but set @ListServerNeighborsRequest$maxResults@ to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.
--
-- * 'lsnrrsKnownDependencyCount' - Count of distinct servers that are one hop away from the given server.
--
-- * 'lsnrrsResponseStatus' - -- | The response status code.
--
-- * 'lsnrrsNeighbors' - List of distinct servers that are one hop away from the given server.
listServerNeighborsResponse ::
  -- | 'lsnrrsResponseStatus'
  Int ->
  ListServerNeighborsResponse
listServerNeighborsResponse pResponseStatus_ =
  ListServerNeighborsResponse'
    { _lsnrrsNextToken =
        Nothing,
      _lsnrrsKnownDependencyCount = Nothing,
      _lsnrrsResponseStatus = pResponseStatus_,
      _lsnrrsNeighbors = mempty
    }

-- | Token to retrieve the next set of results. For example, if you specified 100 IDs for @ListServerNeighborsRequest$neighborConfigurationIds@ but set @ListServerNeighborsRequest$maxResults@ to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.
lsnrrsNextToken :: Lens' ListServerNeighborsResponse (Maybe Text)
lsnrrsNextToken = lens _lsnrrsNextToken (\s a -> s {_lsnrrsNextToken = a})

-- | Count of distinct servers that are one hop away from the given server.
lsnrrsKnownDependencyCount :: Lens' ListServerNeighborsResponse (Maybe Integer)
lsnrrsKnownDependencyCount = lens _lsnrrsKnownDependencyCount (\s a -> s {_lsnrrsKnownDependencyCount = a})

-- | -- | The response status code.
lsnrrsResponseStatus :: Lens' ListServerNeighborsResponse Int
lsnrrsResponseStatus = lens _lsnrrsResponseStatus (\s a -> s {_lsnrrsResponseStatus = a})

-- | List of distinct servers that are one hop away from the given server.
lsnrrsNeighbors :: Lens' ListServerNeighborsResponse [NeighborConnectionDetail]
lsnrrsNeighbors = lens _lsnrrsNeighbors (\s a -> s {_lsnrrsNeighbors = a}) . _Coerce

instance NFData ListServerNeighborsResponse
