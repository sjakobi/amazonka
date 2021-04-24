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
-- Module      : Network.AWS.CloudHSMv2.DescribeClusters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about AWS CloudHSM clusters.
--
--
-- This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a @NextToken@ value. Use this value in a subsequent @DescribeClusters@ request to get more clusters. When you receive a response with no @NextToken@ (or an empty or null value), that means there are no more clusters to get.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudHSMv2.DescribeClusters
  ( -- * Creating a Request
    describeClusters,
    DescribeClusters,

    -- * Request Lenses
    dcNextToken,
    dcMaxResults,
    dcFilters,

    -- * Destructuring the Response
    describeClustersResponse,
    DescribeClustersResponse,

    -- * Response Lenses
    dcrrsNextToken,
    dcrrsClusters,
    dcrrsResponseStatus,
  )
where

import Network.AWS.CloudHSMv2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeClusters' smart constructor.
data DescribeClusters = DescribeClusters'
  { _dcNextToken ::
      !(Maybe Text),
    _dcMaxResults :: !(Maybe Nat),
    _dcFilters ::
      !(Maybe (Map Text [Text]))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeClusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcNextToken' - The @NextToken@ value that you received in the previous response. Use this value to get more clusters.
--
-- * 'dcMaxResults' - The maximum number of clusters to return in the response. When there are more clusters than the number you specify, the response contains a @NextToken@ value.
--
-- * 'dcFilters' - One or more filters to limit the items returned in the response. Use the @clusterIds@ filter to return only the specified clusters. Specify clusters by their cluster identifier (ID). Use the @vpcIds@ filter to return only the clusters in the specified virtual private clouds (VPCs). Specify VPCs by their VPC identifier (ID). Use the @states@ filter to return only clusters that match the specified state.
describeClusters ::
  DescribeClusters
describeClusters =
  DescribeClusters'
    { _dcNextToken = Nothing,
      _dcMaxResults = Nothing,
      _dcFilters = Nothing
    }

-- | The @NextToken@ value that you received in the previous response. Use this value to get more clusters.
dcNextToken :: Lens' DescribeClusters (Maybe Text)
dcNextToken = lens _dcNextToken (\s a -> s {_dcNextToken = a})

-- | The maximum number of clusters to return in the response. When there are more clusters than the number you specify, the response contains a @NextToken@ value.
dcMaxResults :: Lens' DescribeClusters (Maybe Natural)
dcMaxResults = lens _dcMaxResults (\s a -> s {_dcMaxResults = a}) . mapping _Nat

-- | One or more filters to limit the items returned in the response. Use the @clusterIds@ filter to return only the specified clusters. Specify clusters by their cluster identifier (ID). Use the @vpcIds@ filter to return only the clusters in the specified virtual private clouds (VPCs). Specify VPCs by their VPC identifier (ID). Use the @states@ filter to return only clusters that match the specified state.
dcFilters :: Lens' DescribeClusters (HashMap Text [Text])
dcFilters = lens _dcFilters (\s a -> s {_dcFilters = a}) . _Default . _Map

instance AWSPager DescribeClusters where
  page rq rs
    | stop (rs ^. dcrrsNextToken) = Nothing
    | stop (rs ^. dcrrsClusters) = Nothing
    | otherwise =
      Just $ rq & dcNextToken .~ rs ^. dcrrsNextToken

instance AWSRequest DescribeClusters where
  type Rs DescribeClusters = DescribeClustersResponse
  request = postJSON cloudHSMv2
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
              =# ("BaldrApiService.DescribeClusters" :: ByteString),
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
            ("Filters" .=) <$> _dcFilters
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
-- * 'dcrrsNextToken' - An opaque string that indicates that the response contains only a subset of clusters. Use this value in a subsequent @DescribeClusters@ request to get more clusters.
--
-- * 'dcrrsClusters' - A list of clusters.
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

-- | An opaque string that indicates that the response contains only a subset of clusters. Use this value in a subsequent @DescribeClusters@ request to get more clusters.
dcrrsNextToken :: Lens' DescribeClustersResponse (Maybe Text)
dcrrsNextToken = lens _dcrrsNextToken (\s a -> s {_dcrrsNextToken = a})

-- | A list of clusters.
dcrrsClusters :: Lens' DescribeClustersResponse [Cluster]
dcrrsClusters = lens _dcrrsClusters (\s a -> s {_dcrrsClusters = a}) . _Default . _Coerce

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeClustersResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeClustersResponse
