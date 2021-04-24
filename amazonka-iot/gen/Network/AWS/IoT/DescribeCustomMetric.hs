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
-- Module      : Network.AWS.IoT.DescribeCustomMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Device Defender detect custom metric.
module Network.AWS.IoT.DescribeCustomMetric
  ( -- * Creating a Request
    describeCustomMetric,
    DescribeCustomMetric,

    -- * Request Lenses
    dMetricName,

    -- * Destructuring the Response
    describeCustomMetricResponse,
    DescribeCustomMetricResponse,

    -- * Response Lenses
    dcmrrsLastModifiedDate,
    dcmrrsMetricType,
    dcmrrsMetricARN,
    dcmrrsMetricName,
    dcmrrsCreationDate,
    dcmrrsDisplayName,
    dcmrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCustomMetric' smart constructor.
newtype DescribeCustomMetric = DescribeCustomMetric'
  { _dMetricName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCustomMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMetricName' - The name of the custom metric.
describeCustomMetric ::
  -- | 'dMetricName'
  Text ->
  DescribeCustomMetric
describeCustomMetric pMetricName_ =
  DescribeCustomMetric' {_dMetricName = pMetricName_}

-- | The name of the custom metric.
dMetricName :: Lens' DescribeCustomMetric Text
dMetricName = lens _dMetricName (\s a -> s {_dMetricName = a})

instance AWSRequest DescribeCustomMetric where
  type
    Rs DescribeCustomMetric =
      DescribeCustomMetricResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeCustomMetricResponse'
            <$> (x .?> "lastModifiedDate")
            <*> (x .?> "metricType")
            <*> (x .?> "metricArn")
            <*> (x .?> "metricName")
            <*> (x .?> "creationDate")
            <*> (x .?> "displayName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCustomMetric

instance NFData DescribeCustomMetric

instance ToHeaders DescribeCustomMetric where
  toHeaders = const mempty

instance ToPath DescribeCustomMetric where
  toPath DescribeCustomMetric' {..} =
    mconcat ["/custom-metric/", toBS _dMetricName]

instance ToQuery DescribeCustomMetric where
  toQuery = const mempty

-- | /See:/ 'describeCustomMetricResponse' smart constructor.
data DescribeCustomMetricResponse = DescribeCustomMetricResponse'
  { _dcmrrsLastModifiedDate ::
      !( Maybe
           POSIX
       ),
    _dcmrrsMetricType ::
      !( Maybe
           CustomMetricType
       ),
    _dcmrrsMetricARN ::
      !(Maybe Text),
    _dcmrrsMetricName ::
      !(Maybe Text),
    _dcmrrsCreationDate ::
      !( Maybe
           POSIX
       ),
    _dcmrrsDisplayName ::
      !(Maybe Text),
    _dcmrrsResponseStatus ::
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

-- | Creates a value of 'DescribeCustomMetricResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcmrrsLastModifiedDate' - The time the custom metric was last modified in milliseconds since epoch.
--
-- * 'dcmrrsMetricType' - The type of the custom metric. Types include @string-list@ , @ip-address-list@ , @number-list@ , and @number@ .
--
-- * 'dcmrrsMetricARN' - The Amazon Resource Number (ARN) of the custom metric.
--
-- * 'dcmrrsMetricName' - The name of the custom metric.
--
-- * 'dcmrrsCreationDate' - The creation date of the custom metric in milliseconds since epoch.
--
-- * 'dcmrrsDisplayName' - Field represents a friendly name in the console for the custom metric; doesn't have to be unique. Don't use this name as the metric identifier in the device metric report. Can be updated.
--
-- * 'dcmrrsResponseStatus' - -- | The response status code.
describeCustomMetricResponse ::
  -- | 'dcmrrsResponseStatus'
  Int ->
  DescribeCustomMetricResponse
describeCustomMetricResponse pResponseStatus_ =
  DescribeCustomMetricResponse'
    { _dcmrrsLastModifiedDate =
        Nothing,
      _dcmrrsMetricType = Nothing,
      _dcmrrsMetricARN = Nothing,
      _dcmrrsMetricName = Nothing,
      _dcmrrsCreationDate = Nothing,
      _dcmrrsDisplayName = Nothing,
      _dcmrrsResponseStatus = pResponseStatus_
    }

-- | The time the custom metric was last modified in milliseconds since epoch.
dcmrrsLastModifiedDate :: Lens' DescribeCustomMetricResponse (Maybe UTCTime)
dcmrrsLastModifiedDate = lens _dcmrrsLastModifiedDate (\s a -> s {_dcmrrsLastModifiedDate = a}) . mapping _Time

-- | The type of the custom metric. Types include @string-list@ , @ip-address-list@ , @number-list@ , and @number@ .
dcmrrsMetricType :: Lens' DescribeCustomMetricResponse (Maybe CustomMetricType)
dcmrrsMetricType = lens _dcmrrsMetricType (\s a -> s {_dcmrrsMetricType = a})

-- | The Amazon Resource Number (ARN) of the custom metric.
dcmrrsMetricARN :: Lens' DescribeCustomMetricResponse (Maybe Text)
dcmrrsMetricARN = lens _dcmrrsMetricARN (\s a -> s {_dcmrrsMetricARN = a})

-- | The name of the custom metric.
dcmrrsMetricName :: Lens' DescribeCustomMetricResponse (Maybe Text)
dcmrrsMetricName = lens _dcmrrsMetricName (\s a -> s {_dcmrrsMetricName = a})

-- | The creation date of the custom metric in milliseconds since epoch.
dcmrrsCreationDate :: Lens' DescribeCustomMetricResponse (Maybe UTCTime)
dcmrrsCreationDate = lens _dcmrrsCreationDate (\s a -> s {_dcmrrsCreationDate = a}) . mapping _Time

-- | Field represents a friendly name in the console for the custom metric; doesn't have to be unique. Don't use this name as the metric identifier in the device metric report. Can be updated.
dcmrrsDisplayName :: Lens' DescribeCustomMetricResponse (Maybe Text)
dcmrrsDisplayName = lens _dcmrrsDisplayName (\s a -> s {_dcmrrsDisplayName = a})

-- | -- | The response status code.
dcmrrsResponseStatus :: Lens' DescribeCustomMetricResponse Int
dcmrrsResponseStatus = lens _dcmrrsResponseStatus (\s a -> s {_dcmrrsResponseStatus = a})

instance NFData DescribeCustomMetricResponse
