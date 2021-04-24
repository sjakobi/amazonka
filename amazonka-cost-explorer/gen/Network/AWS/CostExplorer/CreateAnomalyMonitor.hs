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
-- Module      : Network.AWS.CostExplorer.CreateAnomalyMonitor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new cost anomaly detection monitor with the requested type and monitor specification.
module Network.AWS.CostExplorer.CreateAnomalyMonitor
  ( -- * Creating a Request
    createAnomalyMonitor,
    CreateAnomalyMonitor,

    -- * Request Lenses
    camAnomalyMonitor,

    -- * Destructuring the Response
    createAnomalyMonitorResponse,
    CreateAnomalyMonitorResponse,

    -- * Response Lenses
    camrrsResponseStatus,
    camrrsMonitorARN,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createAnomalyMonitor' smart constructor.
newtype CreateAnomalyMonitor = CreateAnomalyMonitor'
  { _camAnomalyMonitor ::
      AnomalyMonitor
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateAnomalyMonitor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camAnomalyMonitor' - The cost anomaly detection monitor object that you want to create.
createAnomalyMonitor ::
  -- | 'camAnomalyMonitor'
  AnomalyMonitor ->
  CreateAnomalyMonitor
createAnomalyMonitor pAnomalyMonitor_ =
  CreateAnomalyMonitor'
    { _camAnomalyMonitor =
        pAnomalyMonitor_
    }

-- | The cost anomaly detection monitor object that you want to create.
camAnomalyMonitor :: Lens' CreateAnomalyMonitor AnomalyMonitor
camAnomalyMonitor = lens _camAnomalyMonitor (\s a -> s {_camAnomalyMonitor = a})

instance AWSRequest CreateAnomalyMonitor where
  type
    Rs CreateAnomalyMonitor =
      CreateAnomalyMonitorResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          CreateAnomalyMonitorResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "MonitorArn")
      )

instance Hashable CreateAnomalyMonitor

instance NFData CreateAnomalyMonitor

instance ToHeaders CreateAnomalyMonitor where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.CreateAnomalyMonitor" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateAnomalyMonitor where
  toJSON CreateAnomalyMonitor' {..} =
    object
      ( catMaybes
          [Just ("AnomalyMonitor" .= _camAnomalyMonitor)]
      )

instance ToPath CreateAnomalyMonitor where
  toPath = const "/"

instance ToQuery CreateAnomalyMonitor where
  toQuery = const mempty

-- | /See:/ 'createAnomalyMonitorResponse' smart constructor.
data CreateAnomalyMonitorResponse = CreateAnomalyMonitorResponse'
  { _camrrsResponseStatus ::
      !Int,
    _camrrsMonitorARN ::
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

-- | Creates a value of 'CreateAnomalyMonitorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camrrsResponseStatus' - -- | The response status code.
--
-- * 'camrrsMonitorARN' - The unique identifier of your newly created cost anomaly detection monitor.
createAnomalyMonitorResponse ::
  -- | 'camrrsResponseStatus'
  Int ->
  -- | 'camrrsMonitorARN'
  Text ->
  CreateAnomalyMonitorResponse
createAnomalyMonitorResponse
  pResponseStatus_
  pMonitorARN_ =
    CreateAnomalyMonitorResponse'
      { _camrrsResponseStatus =
          pResponseStatus_,
        _camrrsMonitorARN = pMonitorARN_
      }

-- | -- | The response status code.
camrrsResponseStatus :: Lens' CreateAnomalyMonitorResponse Int
camrrsResponseStatus = lens _camrrsResponseStatus (\s a -> s {_camrrsResponseStatus = a})

-- | The unique identifier of your newly created cost anomaly detection monitor.
camrrsMonitorARN :: Lens' CreateAnomalyMonitorResponse Text
camrrsMonitorARN = lens _camrrsMonitorARN (\s a -> s {_camrrsMonitorARN = a})

instance NFData CreateAnomalyMonitorResponse
