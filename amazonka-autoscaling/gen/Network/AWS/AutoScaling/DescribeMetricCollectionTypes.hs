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
-- Module      : Network.AWS.AutoScaling.DescribeMetricCollectionTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling.
--
--
-- The @GroupStandbyInstances@ metric is not returned by default. You must explicitly request this metric when calling the 'EnableMetricsCollection' API.
module Network.AWS.AutoScaling.DescribeMetricCollectionTypes
  ( -- * Creating a Request
    describeMetricCollectionTypes,
    DescribeMetricCollectionTypes,

    -- * Destructuring the Response
    describeMetricCollectionTypesResponse,
    DescribeMetricCollectionTypesResponse,

    -- * Response Lenses
    dmctrrsMetrics,
    dmctrrsGranularities,
    dmctrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeMetricCollectionTypes' smart constructor.
data DescribeMetricCollectionTypes = DescribeMetricCollectionTypes'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMetricCollectionTypes' with the minimum fields required to make a request.
describeMetricCollectionTypes ::
  DescribeMetricCollectionTypes
describeMetricCollectionTypes =
  DescribeMetricCollectionTypes'

instance AWSRequest DescribeMetricCollectionTypes where
  type
    Rs DescribeMetricCollectionTypes =
      DescribeMetricCollectionTypesResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeMetricCollectionTypesResult"
      ( \s h x ->
          DescribeMetricCollectionTypesResponse'
            <$> ( x .@? "Metrics" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "Granularities" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMetricCollectionTypes

instance NFData DescribeMetricCollectionTypes

instance ToHeaders DescribeMetricCollectionTypes where
  toHeaders = const mempty

instance ToPath DescribeMetricCollectionTypes where
  toPath = const "/"

instance ToQuery DescribeMetricCollectionTypes where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("DescribeMetricCollectionTypes" :: ByteString),
            "Version" =: ("2011-01-01" :: ByteString)
          ]
      )

-- | /See:/ 'describeMetricCollectionTypesResponse' smart constructor.
data DescribeMetricCollectionTypesResponse = DescribeMetricCollectionTypesResponse'
  { _dmctrrsMetrics ::
      !( Maybe
           [MetricCollectionType]
       ),
    _dmctrrsGranularities ::
      !( Maybe
           [MetricGranularityType]
       ),
    _dmctrrsResponseStatus ::
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

-- | Creates a value of 'DescribeMetricCollectionTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmctrrsMetrics' - One or more metrics.
--
-- * 'dmctrrsGranularities' - The granularities for the metrics.
--
-- * 'dmctrrsResponseStatus' - -- | The response status code.
describeMetricCollectionTypesResponse ::
  -- | 'dmctrrsResponseStatus'
  Int ->
  DescribeMetricCollectionTypesResponse
describeMetricCollectionTypesResponse
  pResponseStatus_ =
    DescribeMetricCollectionTypesResponse'
      { _dmctrrsMetrics =
          Nothing,
        _dmctrrsGranularities = Nothing,
        _dmctrrsResponseStatus =
          pResponseStatus_
      }

-- | One or more metrics.
dmctrrsMetrics :: Lens' DescribeMetricCollectionTypesResponse [MetricCollectionType]
dmctrrsMetrics = lens _dmctrrsMetrics (\s a -> s {_dmctrrsMetrics = a}) . _Default . _Coerce

-- | The granularities for the metrics.
dmctrrsGranularities :: Lens' DescribeMetricCollectionTypesResponse [MetricGranularityType]
dmctrrsGranularities = lens _dmctrrsGranularities (\s a -> s {_dmctrrsGranularities = a}) . _Default . _Coerce

-- | -- | The response status code.
dmctrrsResponseStatus :: Lens' DescribeMetricCollectionTypesResponse Int
dmctrrsResponseStatus = lens _dmctrrsResponseStatus (\s a -> s {_dmctrrsResponseStatus = a})

instance NFData DescribeMetricCollectionTypesResponse
