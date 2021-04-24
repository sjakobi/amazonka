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
-- Module      : Network.AWS.CostExplorer.UpdateAnomalyMonitor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing cost anomaly monitor. The changes made are applied going forward, and does not change anomalies detected in the past.
module Network.AWS.CostExplorer.UpdateAnomalyMonitor
  ( -- * Creating a Request
    updateAnomalyMonitor,
    UpdateAnomalyMonitor,

    -- * Request Lenses
    uamMonitorName,
    uamMonitorARN,

    -- * Destructuring the Response
    updateAnomalyMonitorResponse,
    UpdateAnomalyMonitorResponse,

    -- * Response Lenses
    uamrrsResponseStatus,
    uamrrsMonitorARN,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateAnomalyMonitor' smart constructor.
data UpdateAnomalyMonitor = UpdateAnomalyMonitor'
  { _uamMonitorName ::
      !(Maybe Text),
    _uamMonitorARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAnomalyMonitor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uamMonitorName' - The new name for the cost anomaly monitor.
--
-- * 'uamMonitorARN' - Cost anomaly monitor Amazon Resource Names (ARNs).
updateAnomalyMonitor ::
  -- | 'uamMonitorARN'
  Text ->
  UpdateAnomalyMonitor
updateAnomalyMonitor pMonitorARN_ =
  UpdateAnomalyMonitor'
    { _uamMonitorName = Nothing,
      _uamMonitorARN = pMonitorARN_
    }

-- | The new name for the cost anomaly monitor.
uamMonitorName :: Lens' UpdateAnomalyMonitor (Maybe Text)
uamMonitorName = lens _uamMonitorName (\s a -> s {_uamMonitorName = a})

-- | Cost anomaly monitor Amazon Resource Names (ARNs).
uamMonitorARN :: Lens' UpdateAnomalyMonitor Text
uamMonitorARN = lens _uamMonitorARN (\s a -> s {_uamMonitorARN = a})

instance AWSRequest UpdateAnomalyMonitor where
  type
    Rs UpdateAnomalyMonitor =
      UpdateAnomalyMonitorResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          UpdateAnomalyMonitorResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "MonitorArn")
      )

instance Hashable UpdateAnomalyMonitor

instance NFData UpdateAnomalyMonitor

instance ToHeaders UpdateAnomalyMonitor where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.UpdateAnomalyMonitor" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateAnomalyMonitor where
  toJSON UpdateAnomalyMonitor' {..} =
    object
      ( catMaybes
          [ ("MonitorName" .=) <$> _uamMonitorName,
            Just ("MonitorArn" .= _uamMonitorARN)
          ]
      )

instance ToPath UpdateAnomalyMonitor where
  toPath = const "/"

instance ToQuery UpdateAnomalyMonitor where
  toQuery = const mempty

-- | /See:/ 'updateAnomalyMonitorResponse' smart constructor.
data UpdateAnomalyMonitorResponse = UpdateAnomalyMonitorResponse'
  { _uamrrsResponseStatus ::
      !Int,
    _uamrrsMonitorARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateAnomalyMonitorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uamrrsResponseStatus' - -- | The response status code.
--
-- * 'uamrrsMonitorARN' - A cost anomaly monitor ARN.
updateAnomalyMonitorResponse ::
  -- | 'uamrrsResponseStatus'
  Int ->
  -- | 'uamrrsMonitorARN'
  Text ->
  UpdateAnomalyMonitorResponse
updateAnomalyMonitorResponse
  pResponseStatus_
  pMonitorARN_ =
    UpdateAnomalyMonitorResponse'
      { _uamrrsResponseStatus =
          pResponseStatus_,
        _uamrrsMonitorARN = pMonitorARN_
      }

-- | -- | The response status code.
uamrrsResponseStatus :: Lens' UpdateAnomalyMonitorResponse Int
uamrrsResponseStatus = lens _uamrrsResponseStatus (\s a -> s {_uamrrsResponseStatus = a})

-- | A cost anomaly monitor ARN.
uamrrsMonitorARN :: Lens' UpdateAnomalyMonitorResponse Text
uamrrsMonitorARN = lens _uamrrsMonitorARN (\s a -> s {_uamrrsMonitorARN = a})

instance NFData UpdateAnomalyMonitorResponse
