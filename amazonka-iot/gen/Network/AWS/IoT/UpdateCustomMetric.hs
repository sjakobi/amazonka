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
-- Module      : Network.AWS.IoT.UpdateCustomMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Device Defender detect custom metric.
module Network.AWS.IoT.UpdateCustomMetric
  ( -- * Creating a Request
    updateCustomMetric,
    UpdateCustomMetric,

    -- * Request Lenses
    ucmMetricName,
    ucmDisplayName,

    -- * Destructuring the Response
    updateCustomMetricResponse,
    UpdateCustomMetricResponse,

    -- * Response Lenses
    ucmrrsLastModifiedDate,
    ucmrrsMetricType,
    ucmrrsMetricARN,
    ucmrrsMetricName,
    ucmrrsCreationDate,
    ucmrrsDisplayName,
    ucmrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateCustomMetric' smart constructor.
data UpdateCustomMetric = UpdateCustomMetric'
  { _ucmMetricName ::
      !Text,
    _ucmDisplayName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateCustomMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucmMetricName' - The name of the custom metric. Cannot be updated.
--
-- * 'ucmDisplayName' - Field represents a friendly name in the console for the custom metric, it doesn't have to be unique. Don't use this name as the metric identifier in the device metric report. Can be updated.
updateCustomMetric ::
  -- | 'ucmMetricName'
  Text ->
  -- | 'ucmDisplayName'
  Text ->
  UpdateCustomMetric
updateCustomMetric pMetricName_ pDisplayName_ =
  UpdateCustomMetric'
    { _ucmMetricName = pMetricName_,
      _ucmDisplayName = pDisplayName_
    }

-- | The name of the custom metric. Cannot be updated.
ucmMetricName :: Lens' UpdateCustomMetric Text
ucmMetricName = lens _ucmMetricName (\s a -> s {_ucmMetricName = a})

-- | Field represents a friendly name in the console for the custom metric, it doesn't have to be unique. Don't use this name as the metric identifier in the device metric report. Can be updated.
ucmDisplayName :: Lens' UpdateCustomMetric Text
ucmDisplayName = lens _ucmDisplayName (\s a -> s {_ucmDisplayName = a})

instance AWSRequest UpdateCustomMetric where
  type
    Rs UpdateCustomMetric =
      UpdateCustomMetricResponse
  request = patchJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          UpdateCustomMetricResponse'
            <$> (x .?> "lastModifiedDate")
            <*> (x .?> "metricType")
            <*> (x .?> "metricArn")
            <*> (x .?> "metricName")
            <*> (x .?> "creationDate")
            <*> (x .?> "displayName")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateCustomMetric

instance NFData UpdateCustomMetric

instance ToHeaders UpdateCustomMetric where
  toHeaders = const mempty

instance ToJSON UpdateCustomMetric where
  toJSON UpdateCustomMetric' {..} =
    object
      (catMaybes [Just ("displayName" .= _ucmDisplayName)])

instance ToPath UpdateCustomMetric where
  toPath UpdateCustomMetric' {..} =
    mconcat ["/custom-metric/", toBS _ucmMetricName]

instance ToQuery UpdateCustomMetric where
  toQuery = const mempty

-- | /See:/ 'updateCustomMetricResponse' smart constructor.
data UpdateCustomMetricResponse = UpdateCustomMetricResponse'
  { _ucmrrsLastModifiedDate ::
      !(Maybe POSIX),
    _ucmrrsMetricType ::
      !( Maybe
           CustomMetricType
       ),
    _ucmrrsMetricARN ::
      !(Maybe Text),
    _ucmrrsMetricName ::
      !(Maybe Text),
    _ucmrrsCreationDate ::
      !(Maybe POSIX),
    _ucmrrsDisplayName ::
      !(Maybe Text),
    _ucmrrsResponseStatus ::
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

-- | Creates a value of 'UpdateCustomMetricResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucmrrsLastModifiedDate' - The time the custom metric was last modified in milliseconds since epoch.
--
-- * 'ucmrrsMetricType' - The type of the custom metric. Types include @string-list@ , @ip-address-list@ , @number-list@ , and @number@ .
--
-- * 'ucmrrsMetricARN' - The Amazon Resource Number (ARN) of the custom metric.
--
-- * 'ucmrrsMetricName' - The name of the custom metric.
--
-- * 'ucmrrsCreationDate' - The creation date of the custom metric in milliseconds since epoch.
--
-- * 'ucmrrsDisplayName' - A friendly name in the console for the custom metric
--
-- * 'ucmrrsResponseStatus' - -- | The response status code.
updateCustomMetricResponse ::
  -- | 'ucmrrsResponseStatus'
  Int ->
  UpdateCustomMetricResponse
updateCustomMetricResponse pResponseStatus_ =
  UpdateCustomMetricResponse'
    { _ucmrrsLastModifiedDate =
        Nothing,
      _ucmrrsMetricType = Nothing,
      _ucmrrsMetricARN = Nothing,
      _ucmrrsMetricName = Nothing,
      _ucmrrsCreationDate = Nothing,
      _ucmrrsDisplayName = Nothing,
      _ucmrrsResponseStatus = pResponseStatus_
    }

-- | The time the custom metric was last modified in milliseconds since epoch.
ucmrrsLastModifiedDate :: Lens' UpdateCustomMetricResponse (Maybe UTCTime)
ucmrrsLastModifiedDate = lens _ucmrrsLastModifiedDate (\s a -> s {_ucmrrsLastModifiedDate = a}) . mapping _Time

-- | The type of the custom metric. Types include @string-list@ , @ip-address-list@ , @number-list@ , and @number@ .
ucmrrsMetricType :: Lens' UpdateCustomMetricResponse (Maybe CustomMetricType)
ucmrrsMetricType = lens _ucmrrsMetricType (\s a -> s {_ucmrrsMetricType = a})

-- | The Amazon Resource Number (ARN) of the custom metric.
ucmrrsMetricARN :: Lens' UpdateCustomMetricResponse (Maybe Text)
ucmrrsMetricARN = lens _ucmrrsMetricARN (\s a -> s {_ucmrrsMetricARN = a})

-- | The name of the custom metric.
ucmrrsMetricName :: Lens' UpdateCustomMetricResponse (Maybe Text)
ucmrrsMetricName = lens _ucmrrsMetricName (\s a -> s {_ucmrrsMetricName = a})

-- | The creation date of the custom metric in milliseconds since epoch.
ucmrrsCreationDate :: Lens' UpdateCustomMetricResponse (Maybe UTCTime)
ucmrrsCreationDate = lens _ucmrrsCreationDate (\s a -> s {_ucmrrsCreationDate = a}) . mapping _Time

-- | A friendly name in the console for the custom metric
ucmrrsDisplayName :: Lens' UpdateCustomMetricResponse (Maybe Text)
ucmrrsDisplayName = lens _ucmrrsDisplayName (\s a -> s {_ucmrrsDisplayName = a})

-- | -- | The response status code.
ucmrrsResponseStatus :: Lens' UpdateCustomMetricResponse Int
ucmrrsResponseStatus = lens _ucmrrsResponseStatus (\s a -> s {_ucmrrsResponseStatus = a})

instance NFData UpdateCustomMetricResponse
