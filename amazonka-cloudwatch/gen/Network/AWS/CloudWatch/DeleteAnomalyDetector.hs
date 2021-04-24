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
-- Module      : Network.AWS.CloudWatch.DeleteAnomalyDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified anomaly detection model from your account.
module Network.AWS.CloudWatch.DeleteAnomalyDetector
  ( -- * Creating a Request
    deleteAnomalyDetector,
    DeleteAnomalyDetector,

    -- * Request Lenses
    dDimensions,
    dNamespace,
    dMetricName,
    dStat,

    -- * Destructuring the Response
    deleteAnomalyDetectorResponse,
    DeleteAnomalyDetectorResponse,

    -- * Response Lenses
    dadrrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteAnomalyDetector' smart constructor.
data DeleteAnomalyDetector = DeleteAnomalyDetector'
  { _dDimensions ::
      !(Maybe [Dimension]),
    _dNamespace :: !Text,
    _dMetricName :: !Text,
    _dStat :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteAnomalyDetector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDimensions' - The metric dimensions associated with the anomaly detection model to delete.
--
-- * 'dNamespace' - The namespace associated with the anomaly detection model to delete.
--
-- * 'dMetricName' - The metric name associated with the anomaly detection model to delete.
--
-- * 'dStat' - The statistic associated with the anomaly detection model to delete.
deleteAnomalyDetector ::
  -- | 'dNamespace'
  Text ->
  -- | 'dMetricName'
  Text ->
  -- | 'dStat'
  Text ->
  DeleteAnomalyDetector
deleteAnomalyDetector pNamespace_ pMetricName_ pStat_ =
  DeleteAnomalyDetector'
    { _dDimensions = Nothing,
      _dNamespace = pNamespace_,
      _dMetricName = pMetricName_,
      _dStat = pStat_
    }

-- | The metric dimensions associated with the anomaly detection model to delete.
dDimensions :: Lens' DeleteAnomalyDetector [Dimension]
dDimensions = lens _dDimensions (\s a -> s {_dDimensions = a}) . _Default . _Coerce

-- | The namespace associated with the anomaly detection model to delete.
dNamespace :: Lens' DeleteAnomalyDetector Text
dNamespace = lens _dNamespace (\s a -> s {_dNamespace = a})

-- | The metric name associated with the anomaly detection model to delete.
dMetricName :: Lens' DeleteAnomalyDetector Text
dMetricName = lens _dMetricName (\s a -> s {_dMetricName = a})

-- | The statistic associated with the anomaly detection model to delete.
dStat :: Lens' DeleteAnomalyDetector Text
dStat = lens _dStat (\s a -> s {_dStat = a})

instance AWSRequest DeleteAnomalyDetector where
  type
    Rs DeleteAnomalyDetector =
      DeleteAnomalyDetectorResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "DeleteAnomalyDetectorResult"
      ( \s h x ->
          DeleteAnomalyDetectorResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteAnomalyDetector

instance NFData DeleteAnomalyDetector

instance ToHeaders DeleteAnomalyDetector where
  toHeaders = const mempty

instance ToPath DeleteAnomalyDetector where
  toPath = const "/"

instance ToQuery DeleteAnomalyDetector where
  toQuery DeleteAnomalyDetector' {..} =
    mconcat
      [ "Action" =: ("DeleteAnomalyDetector" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "Dimensions"
          =: toQuery (toQueryList "member" <$> _dDimensions),
        "Namespace" =: _dNamespace,
        "MetricName" =: _dMetricName,
        "Stat" =: _dStat
      ]

-- | /See:/ 'deleteAnomalyDetectorResponse' smart constructor.
newtype DeleteAnomalyDetectorResponse = DeleteAnomalyDetectorResponse'
  { _dadrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteAnomalyDetectorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dadrrsResponseStatus' - -- | The response status code.
deleteAnomalyDetectorResponse ::
  -- | 'dadrrsResponseStatus'
  Int ->
  DeleteAnomalyDetectorResponse
deleteAnomalyDetectorResponse pResponseStatus_ =
  DeleteAnomalyDetectorResponse'
    { _dadrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dadrrsResponseStatus :: Lens' DeleteAnomalyDetectorResponse Int
dadrrsResponseStatus = lens _dadrrsResponseStatus (\s a -> s {_dadrrsResponseStatus = a})

instance NFData DeleteAnomalyDetectorResponse
