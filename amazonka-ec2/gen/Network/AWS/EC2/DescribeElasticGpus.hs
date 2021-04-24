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
-- Module      : Network.AWS.EC2.DescribeElasticGpus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Elastic Graphics accelerator associated with your instances. For more information about Elastic Graphics, see <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html Amazon Elastic Graphics> .
module Network.AWS.EC2.DescribeElasticGpus
  ( -- * Creating a Request
    describeElasticGpus,
    DescribeElasticGpus,

    -- * Request Lenses
    degNextToken,
    degElasticGpuIds,
    degDryRun,
    degMaxResults,
    degFilters,

    -- * Destructuring the Response
    describeElasticGpusResponse,
    DescribeElasticGpusResponse,

    -- * Response Lenses
    degrrsNextToken,
    degrrsMaxResults,
    degrrsElasticGpuSet,
    degrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeElasticGpus' smart constructor.
data DescribeElasticGpus = DescribeElasticGpus'
  { _degNextToken ::
      !(Maybe Text),
    _degElasticGpuIds ::
      !(Maybe [Text]),
    _degDryRun :: !(Maybe Bool),
    _degMaxResults :: !(Maybe Nat),
    _degFilters ::
      !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeElasticGpus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'degNextToken' - The token to request the next page of results.
--
-- * 'degElasticGpuIds' - The Elastic Graphics accelerator IDs.
--
-- * 'degDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'degMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 5 and 1000.
--
-- * 'degFilters' - The filters.     * @availability-zone@ - The Availability Zone in which the Elastic Graphics accelerator resides.     * @elastic-gpu-health@ - The status of the Elastic Graphics accelerator (@OK@ | @IMPAIRED@ ).     * @elastic-gpu-state@ - The state of the Elastic Graphics accelerator (@ATTACHED@ ).     * @elastic-gpu-type@ - The type of Elastic Graphics accelerator; for example, @eg1.medium@ .     * @instance-id@ - The ID of the instance to which the Elastic Graphics accelerator is associated.
describeElasticGpus ::
  DescribeElasticGpus
describeElasticGpus =
  DescribeElasticGpus'
    { _degNextToken = Nothing,
      _degElasticGpuIds = Nothing,
      _degDryRun = Nothing,
      _degMaxResults = Nothing,
      _degFilters = Nothing
    }

-- | The token to request the next page of results.
degNextToken :: Lens' DescribeElasticGpus (Maybe Text)
degNextToken = lens _degNextToken (\s a -> s {_degNextToken = a})

-- | The Elastic Graphics accelerator IDs.
degElasticGpuIds :: Lens' DescribeElasticGpus [Text]
degElasticGpuIds = lens _degElasticGpuIds (\s a -> s {_degElasticGpuIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
degDryRun :: Lens' DescribeElasticGpus (Maybe Bool)
degDryRun = lens _degDryRun (\s a -> s {_degDryRun = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 5 and 1000.
degMaxResults :: Lens' DescribeElasticGpus (Maybe Natural)
degMaxResults = lens _degMaxResults (\s a -> s {_degMaxResults = a}) . mapping _Nat

-- | The filters.     * @availability-zone@ - The Availability Zone in which the Elastic Graphics accelerator resides.     * @elastic-gpu-health@ - The status of the Elastic Graphics accelerator (@OK@ | @IMPAIRED@ ).     * @elastic-gpu-state@ - The state of the Elastic Graphics accelerator (@ATTACHED@ ).     * @elastic-gpu-type@ - The type of Elastic Graphics accelerator; for example, @eg1.medium@ .     * @instance-id@ - The ID of the instance to which the Elastic Graphics accelerator is associated.
degFilters :: Lens' DescribeElasticGpus [Filter]
degFilters = lens _degFilters (\s a -> s {_degFilters = a}) . _Default . _Coerce

instance AWSRequest DescribeElasticGpus where
  type
    Rs DescribeElasticGpus =
      DescribeElasticGpusResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeElasticGpusResponse'
            <$> (x .@? "nextToken")
            <*> (x .@? "maxResults")
            <*> ( x .@? "elasticGpuSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeElasticGpus

instance NFData DescribeElasticGpus

instance ToHeaders DescribeElasticGpus where
  toHeaders = const mempty

instance ToPath DescribeElasticGpus where
  toPath = const "/"

instance ToQuery DescribeElasticGpus where
  toQuery DescribeElasticGpus' {..} =
    mconcat
      [ "Action" =: ("DescribeElasticGpus" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _degNextToken,
        toQuery
          (toQueryList "ElasticGpuId" <$> _degElasticGpuIds),
        "DryRun" =: _degDryRun,
        "MaxResults" =: _degMaxResults,
        toQuery (toQueryList "Filter" <$> _degFilters)
      ]

-- | /See:/ 'describeElasticGpusResponse' smart constructor.
data DescribeElasticGpusResponse = DescribeElasticGpusResponse'
  { _degrrsNextToken ::
      !(Maybe Text),
    _degrrsMaxResults ::
      !(Maybe Int),
    _degrrsElasticGpuSet ::
      !( Maybe
           [ElasticGpus]
       ),
    _degrrsResponseStatus ::
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

-- | Creates a value of 'DescribeElasticGpusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'degrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'degrrsMaxResults' - The total number of items to return. If the total number of items available is more than the value specified in max-items then a Next-Token will be provided in the output that you can use to resume pagination.
--
-- * 'degrrsElasticGpuSet' - Information about the Elastic Graphics accelerators.
--
-- * 'degrrsResponseStatus' - -- | The response status code.
describeElasticGpusResponse ::
  -- | 'degrrsResponseStatus'
  Int ->
  DescribeElasticGpusResponse
describeElasticGpusResponse pResponseStatus_ =
  DescribeElasticGpusResponse'
    { _degrrsNextToken =
        Nothing,
      _degrrsMaxResults = Nothing,
      _degrrsElasticGpuSet = Nothing,
      _degrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
degrrsNextToken :: Lens' DescribeElasticGpusResponse (Maybe Text)
degrrsNextToken = lens _degrrsNextToken (\s a -> s {_degrrsNextToken = a})

-- | The total number of items to return. If the total number of items available is more than the value specified in max-items then a Next-Token will be provided in the output that you can use to resume pagination.
degrrsMaxResults :: Lens' DescribeElasticGpusResponse (Maybe Int)
degrrsMaxResults = lens _degrrsMaxResults (\s a -> s {_degrrsMaxResults = a})

-- | Information about the Elastic Graphics accelerators.
degrrsElasticGpuSet :: Lens' DescribeElasticGpusResponse [ElasticGpus]
degrrsElasticGpuSet = lens _degrrsElasticGpuSet (\s a -> s {_degrrsElasticGpuSet = a}) . _Default . _Coerce

-- | -- | The response status code.
degrrsResponseStatus :: Lens' DescribeElasticGpusResponse Int
degrrsResponseStatus = lens _degrrsResponseStatus (\s a -> s {_degrrsResponseStatus = a})

instance NFData DescribeElasticGpusResponse
