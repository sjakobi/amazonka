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
-- Module      : Network.AWS.IoT.CreateCustomMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this API to define a Custom Metric published by your devices to Device Defender.
module Network.AWS.IoT.CreateCustomMetric
  ( -- * Creating a Request
    createCustomMetric,
    CreateCustomMetric,

    -- * Request Lenses
    ccmTags,
    ccmDisplayName,
    ccmMetricName,
    ccmMetricType,
    ccmClientRequestToken,

    -- * Destructuring the Response
    createCustomMetricResponse,
    CreateCustomMetricResponse,

    -- * Response Lenses
    ccmrrsMetricARN,
    ccmrrsMetricName,
    ccmrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createCustomMetric' smart constructor.
data CreateCustomMetric = CreateCustomMetric'
  { _ccmTags ::
      !(Maybe [Tag]),
    _ccmDisplayName :: !(Maybe Text),
    _ccmMetricName :: !Text,
    _ccmMetricType ::
      !CustomMetricType,
    _ccmClientRequestToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateCustomMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccmTags' - Metadata that can be used to manage the custom metric.
--
-- * 'ccmDisplayName' - Field represents a friendly name in the console for the custom metric; it doesn't have to be unique. Don't use this name as the metric identifier in the device metric report. Can be updated once defined.
--
-- * 'ccmMetricName' - The name of the custom metric. This will be used in the metric report submitted from the device/thing. Shouldn't begin with @aws:@ . Cannot be updated once defined.
--
-- * 'ccmMetricType' - The type of the custom metric. Types include @string-list@ , @ip-address-list@ , @number-list@ , and @number@ .
--
-- * 'ccmClientRequestToken' - Each custom metric must have a unique client request token. If you try to create a new custom metric that already exists with a different token, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.
createCustomMetric ::
  -- | 'ccmMetricName'
  Text ->
  -- | 'ccmMetricType'
  CustomMetricType ->
  -- | 'ccmClientRequestToken'
  Text ->
  CreateCustomMetric
createCustomMetric
  pMetricName_
  pMetricType_
  pClientRequestToken_ =
    CreateCustomMetric'
      { _ccmTags = Nothing,
        _ccmDisplayName = Nothing,
        _ccmMetricName = pMetricName_,
        _ccmMetricType = pMetricType_,
        _ccmClientRequestToken = pClientRequestToken_
      }

-- | Metadata that can be used to manage the custom metric.
ccmTags :: Lens' CreateCustomMetric [Tag]
ccmTags = lens _ccmTags (\s a -> s {_ccmTags = a}) . _Default . _Coerce

-- | Field represents a friendly name in the console for the custom metric; it doesn't have to be unique. Don't use this name as the metric identifier in the device metric report. Can be updated once defined.
ccmDisplayName :: Lens' CreateCustomMetric (Maybe Text)
ccmDisplayName = lens _ccmDisplayName (\s a -> s {_ccmDisplayName = a})

-- | The name of the custom metric. This will be used in the metric report submitted from the device/thing. Shouldn't begin with @aws:@ . Cannot be updated once defined.
ccmMetricName :: Lens' CreateCustomMetric Text
ccmMetricName = lens _ccmMetricName (\s a -> s {_ccmMetricName = a})

-- | The type of the custom metric. Types include @string-list@ , @ip-address-list@ , @number-list@ , and @number@ .
ccmMetricType :: Lens' CreateCustomMetric CustomMetricType
ccmMetricType = lens _ccmMetricType (\s a -> s {_ccmMetricType = a})

-- | Each custom metric must have a unique client request token. If you try to create a new custom metric that already exists with a different token, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.
ccmClientRequestToken :: Lens' CreateCustomMetric Text
ccmClientRequestToken = lens _ccmClientRequestToken (\s a -> s {_ccmClientRequestToken = a})

instance AWSRequest CreateCustomMetric where
  type
    Rs CreateCustomMetric =
      CreateCustomMetricResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateCustomMetricResponse'
            <$> (x .?> "metricArn")
            <*> (x .?> "metricName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateCustomMetric

instance NFData CreateCustomMetric

instance ToHeaders CreateCustomMetric where
  toHeaders = const mempty

instance ToJSON CreateCustomMetric where
  toJSON CreateCustomMetric' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _ccmTags,
            ("displayName" .=) <$> _ccmDisplayName,
            Just ("metricType" .= _ccmMetricType),
            Just
              ("clientRequestToken" .= _ccmClientRequestToken)
          ]
      )

instance ToPath CreateCustomMetric where
  toPath CreateCustomMetric' {..} =
    mconcat ["/custom-metric/", toBS _ccmMetricName]

instance ToQuery CreateCustomMetric where
  toQuery = const mempty

-- | /See:/ 'createCustomMetricResponse' smart constructor.
data CreateCustomMetricResponse = CreateCustomMetricResponse'
  { _ccmrrsMetricARN ::
      !(Maybe Text),
    _ccmrrsMetricName ::
      !(Maybe Text),
    _ccmrrsResponseStatus ::
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

-- | Creates a value of 'CreateCustomMetricResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccmrrsMetricARN' - The Amazon Resource Number (ARN) of the custom metric, e.g. @arn:/aws-partition/ :iot:/region/ :/accountId/ :custommetric//metricName/ @
--
-- * 'ccmrrsMetricName' - The name of the custom metric to be used in the metric report.
--
-- * 'ccmrrsResponseStatus' - -- | The response status code.
createCustomMetricResponse ::
  -- | 'ccmrrsResponseStatus'
  Int ->
  CreateCustomMetricResponse
createCustomMetricResponse pResponseStatus_ =
  CreateCustomMetricResponse'
    { _ccmrrsMetricARN =
        Nothing,
      _ccmrrsMetricName = Nothing,
      _ccmrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Number (ARN) of the custom metric, e.g. @arn:/aws-partition/ :iot:/region/ :/accountId/ :custommetric//metricName/ @
ccmrrsMetricARN :: Lens' CreateCustomMetricResponse (Maybe Text)
ccmrrsMetricARN = lens _ccmrrsMetricARN (\s a -> s {_ccmrrsMetricARN = a})

-- | The name of the custom metric to be used in the metric report.
ccmrrsMetricName :: Lens' CreateCustomMetricResponse (Maybe Text)
ccmrrsMetricName = lens _ccmrrsMetricName (\s a -> s {_ccmrrsMetricName = a})

-- | -- | The response status code.
ccmrrsResponseStatus :: Lens' CreateCustomMetricResponse Int
ccmrrsResponseStatus = lens _ccmrrsResponseStatus (\s a -> s {_ccmrrsResponseStatus = a})

instance NFData CreateCustomMetricResponse
