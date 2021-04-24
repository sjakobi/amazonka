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
-- Module      : Network.AWS.DAX.DescribeClusters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied.
--
--
-- If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned.
--
-- If the cluster is in the DELETING state, only cluster level information will be displayed.
--
-- If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is /available/ , the cluster is ready for use.
--
-- If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.
--
--
-- This operation returns paginated results.
module Network.AWS.DAX.DescribeClusters
  ( -- * Creating a Request
    describeClusters,
    DescribeClusters,

    -- * Request Lenses
    dcNextToken,
    dcMaxResults,
    dcClusterNames,

    -- * Destructuring the Response
    describeClustersResponse,
    DescribeClustersResponse,

    -- * Response Lenses
    dcrrsNextToken,
    dcrrsClusters,
    dcrrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeClusters' smart constructor.
data DescribeClusters = DescribeClusters'
  { _dcNextToken ::
      !(Maybe Text),
    _dcMaxResults :: !(Maybe Int),
    _dcClusterNames :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeClusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'dcMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
--
-- * 'dcClusterNames' - The names of the DAX clusters being described.
describeClusters ::
  DescribeClusters
describeClusters =
  DescribeClusters'
    { _dcNextToken = Nothing,
      _dcMaxResults = Nothing,
      _dcClusterNames = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
dcNextToken :: Lens' DescribeClusters (Maybe Text)
dcNextToken = lens _dcNextToken (\s a -> s {_dcNextToken = a})

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
dcMaxResults :: Lens' DescribeClusters (Maybe Int)
dcMaxResults = lens _dcMaxResults (\s a -> s {_dcMaxResults = a})

-- | The names of the DAX clusters being described.
dcClusterNames :: Lens' DescribeClusters [Text]
dcClusterNames = lens _dcClusterNames (\s a -> s {_dcClusterNames = a}) . _Default . _Coerce

instance AWSPager DescribeClusters where
  page rq rs
    | stop (rs ^. dcrrsNextToken) = Nothing
    | stop (rs ^. dcrrsClusters) = Nothing
    | otherwise =
      Just $ rq & dcNextToken .~ rs ^. dcrrsNextToken

instance AWSRequest DescribeClusters where
  type Rs DescribeClusters = DescribeClustersResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          DescribeClustersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Clusters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClusters

instance NFData DescribeClusters

instance ToHeaders DescribeClusters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDAXV3.DescribeClusters" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeClusters where
  toJSON DescribeClusters' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dcNextToken,
            ("MaxResults" .=) <$> _dcMaxResults,
            ("ClusterNames" .=) <$> _dcClusterNames
          ]
      )

instance ToPath DescribeClusters where
  toPath = const "/"

instance ToQuery DescribeClusters where
  toQuery = const mempty

-- | /See:/ 'describeClustersResponse' smart constructor.
data DescribeClustersResponse = DescribeClustersResponse'
  { _dcrrsNextToken ::
      !(Maybe Text),
    _dcrrsClusters ::
      !(Maybe [Cluster]),
    _dcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsNextToken' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'dcrrsClusters' - The descriptions of your DAX clusters, in response to a /DescribeClusters/ request.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeClustersResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeClustersResponse
describeClustersResponse pResponseStatus_ =
  DescribeClustersResponse'
    { _dcrrsNextToken =
        Nothing,
      _dcrrsClusters = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | Provides an identifier to allow retrieval of paginated results.
dcrrsNextToken :: Lens' DescribeClustersResponse (Maybe Text)
dcrrsNextToken = lens _dcrrsNextToken (\s a -> s {_dcrrsNextToken = a})

-- | The descriptions of your DAX clusters, in response to a /DescribeClusters/ request.
dcrrsClusters :: Lens' DescribeClustersResponse [Cluster]
dcrrsClusters = lens _dcrrsClusters (\s a -> s {_dcrrsClusters = a}) . _Default . _Coerce

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeClustersResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeClustersResponse
