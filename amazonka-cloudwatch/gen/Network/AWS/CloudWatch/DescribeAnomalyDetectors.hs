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
-- Module      : Network.AWS.CloudWatch.DescribeAnomalyDetectors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the anomaly detection models that you have created in your account. You can list all models in your account or filter the results to only the models that are related to a certain namespace, metric name, or metric dimension.
module Network.AWS.CloudWatch.DescribeAnomalyDetectors
  ( -- * Creating a Request
    describeAnomalyDetectors,
    DescribeAnomalyDetectors,

    -- * Request Lenses
    dadNextToken,
    dadMaxResults,
    dadMetricName,
    dadDimensions,
    dadNamespace,

    -- * Destructuring the Response
    describeAnomalyDetectorsResponse,
    DescribeAnomalyDetectorsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsAnomalyDetectors,
    desrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAnomalyDetectors' smart constructor.
data DescribeAnomalyDetectors = DescribeAnomalyDetectors'
  { _dadNextToken ::
      !(Maybe Text),
    _dadMaxResults ::
      !(Maybe Nat),
    _dadMetricName ::
      !(Maybe Text),
    _dadDimensions ::
      !(Maybe [Dimension]),
    _dadNamespace ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAnomalyDetectors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dadNextToken' - Use the token returned by the previous operation to request the next page of results.
--
-- * 'dadMaxResults' - The maximum number of results to return in one operation. The maximum value that you can specify is 100. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'dadMetricName' - Limits the results to only the anomaly detection models that are associated with the specified metric name. If there are multiple metrics with this name in different namespaces that have anomaly detection models, they're all returned.
--
-- * 'dadDimensions' - Limits the results to only the anomaly detection models that are associated with the specified metric dimensions. If there are multiple metrics that have these dimensions and have anomaly detection models associated, they're all returned.
--
-- * 'dadNamespace' - Limits the results to only the anomaly detection models that are associated with the specified namespace.
describeAnomalyDetectors ::
  DescribeAnomalyDetectors
describeAnomalyDetectors =
  DescribeAnomalyDetectors'
    { _dadNextToken = Nothing,
      _dadMaxResults = Nothing,
      _dadMetricName = Nothing,
      _dadDimensions = Nothing,
      _dadNamespace = Nothing
    }

-- | Use the token returned by the previous operation to request the next page of results.
dadNextToken :: Lens' DescribeAnomalyDetectors (Maybe Text)
dadNextToken = lens _dadNextToken (\s a -> s {_dadNextToken = a})

-- | The maximum number of results to return in one operation. The maximum value that you can specify is 100. To retrieve the remaining results, make another call with the returned @NextToken@ value.
dadMaxResults :: Lens' DescribeAnomalyDetectors (Maybe Natural)
dadMaxResults = lens _dadMaxResults (\s a -> s {_dadMaxResults = a}) . mapping _Nat

-- | Limits the results to only the anomaly detection models that are associated with the specified metric name. If there are multiple metrics with this name in different namespaces that have anomaly detection models, they're all returned.
dadMetricName :: Lens' DescribeAnomalyDetectors (Maybe Text)
dadMetricName = lens _dadMetricName (\s a -> s {_dadMetricName = a})

-- | Limits the results to only the anomaly detection models that are associated with the specified metric dimensions. If there are multiple metrics that have these dimensions and have anomaly detection models associated, they're all returned.
dadDimensions :: Lens' DescribeAnomalyDetectors [Dimension]
dadDimensions = lens _dadDimensions (\s a -> s {_dadDimensions = a}) . _Default . _Coerce

-- | Limits the results to only the anomaly detection models that are associated with the specified namespace.
dadNamespace :: Lens' DescribeAnomalyDetectors (Maybe Text)
dadNamespace = lens _dadNamespace (\s a -> s {_dadNamespace = a})

instance AWSRequest DescribeAnomalyDetectors where
  type
    Rs DescribeAnomalyDetectors =
      DescribeAnomalyDetectorsResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "DescribeAnomalyDetectorsResult"
      ( \s h x ->
          DescribeAnomalyDetectorsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "AnomalyDetectors" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAnomalyDetectors

instance NFData DescribeAnomalyDetectors

instance ToHeaders DescribeAnomalyDetectors where
  toHeaders = const mempty

instance ToPath DescribeAnomalyDetectors where
  toPath = const "/"

instance ToQuery DescribeAnomalyDetectors where
  toQuery DescribeAnomalyDetectors' {..} =
    mconcat
      [ "Action"
          =: ("DescribeAnomalyDetectors" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "NextToken" =: _dadNextToken,
        "MaxResults" =: _dadMaxResults,
        "MetricName" =: _dadMetricName,
        "Dimensions"
          =: toQuery (toQueryList "member" <$> _dadDimensions),
        "Namespace" =: _dadNamespace
      ]

-- | /See:/ 'describeAnomalyDetectorsResponse' smart constructor.
data DescribeAnomalyDetectorsResponse = DescribeAnomalyDetectorsResponse'
  { _desrsNextToken ::
      !( Maybe
           Text
       ),
    _desrsAnomalyDetectors ::
      !( Maybe
           [AnomalyDetector]
       ),
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

-- | Creates a value of 'DescribeAnomalyDetectorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - A token that you can use in a subsequent operation to retrieve the next set of results.
--
-- * 'desrsAnomalyDetectors' - The list of anomaly detection models returned by the operation.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeAnomalyDetectorsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeAnomalyDetectorsResponse
describeAnomalyDetectorsResponse pResponseStatus_ =
  DescribeAnomalyDetectorsResponse'
    { _desrsNextToken =
        Nothing,
      _desrsAnomalyDetectors = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | A token that you can use in a subsequent operation to retrieve the next set of results.
desrsNextToken :: Lens' DescribeAnomalyDetectorsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | The list of anomaly detection models returned by the operation.
desrsAnomalyDetectors :: Lens' DescribeAnomalyDetectorsResponse [AnomalyDetector]
desrsAnomalyDetectors = lens _desrsAnomalyDetectors (\s a -> s {_desrsAnomalyDetectors = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeAnomalyDetectorsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeAnomalyDetectorsResponse
