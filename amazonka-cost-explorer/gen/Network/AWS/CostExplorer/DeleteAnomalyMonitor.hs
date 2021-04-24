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
-- Module      : Network.AWS.CostExplorer.DeleteAnomalyMonitor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a cost anomaly monitor.
module Network.AWS.CostExplorer.DeleteAnomalyMonitor
  ( -- * Creating a Request
    deleteAnomalyMonitor,
    DeleteAnomalyMonitor,

    -- * Request Lenses
    damMonitorARN,

    -- * Destructuring the Response
    deleteAnomalyMonitorResponse,
    DeleteAnomalyMonitorResponse,

    -- * Response Lenses
    damrrsResponseStatus,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteAnomalyMonitor' smart constructor.
newtype DeleteAnomalyMonitor = DeleteAnomalyMonitor'
  { _damMonitorARN ::
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

-- | Creates a value of 'DeleteAnomalyMonitor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damMonitorARN' - The unique identifier of the cost anomaly monitor that you want to delete.
deleteAnomalyMonitor ::
  -- | 'damMonitorARN'
  Text ->
  DeleteAnomalyMonitor
deleteAnomalyMonitor pMonitorARN_ =
  DeleteAnomalyMonitor'
    { _damMonitorARN =
        pMonitorARN_
    }

-- | The unique identifier of the cost anomaly monitor that you want to delete.
damMonitorARN :: Lens' DeleteAnomalyMonitor Text
damMonitorARN = lens _damMonitorARN (\s a -> s {_damMonitorARN = a})

instance AWSRequest DeleteAnomalyMonitor where
  type
    Rs DeleteAnomalyMonitor =
      DeleteAnomalyMonitorResponse
  request = postJSON costExplorer
  response =
    receiveEmpty
      ( \s h x ->
          DeleteAnomalyMonitorResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteAnomalyMonitor

instance NFData DeleteAnomalyMonitor

instance ToHeaders DeleteAnomalyMonitor where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.DeleteAnomalyMonitor" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteAnomalyMonitor where
  toJSON DeleteAnomalyMonitor' {..} =
    object
      (catMaybes [Just ("MonitorArn" .= _damMonitorARN)])

instance ToPath DeleteAnomalyMonitor where
  toPath = const "/"

instance ToQuery DeleteAnomalyMonitor where
  toQuery = const mempty

-- | /See:/ 'deleteAnomalyMonitorResponse' smart constructor.
newtype DeleteAnomalyMonitorResponse = DeleteAnomalyMonitorResponse'
  { _damrrsResponseStatus ::
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

-- | Creates a value of 'DeleteAnomalyMonitorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damrrsResponseStatus' - -- | The response status code.
deleteAnomalyMonitorResponse ::
  -- | 'damrrsResponseStatus'
  Int ->
  DeleteAnomalyMonitorResponse
deleteAnomalyMonitorResponse pResponseStatus_ =
  DeleteAnomalyMonitorResponse'
    { _damrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
damrrsResponseStatus :: Lens' DeleteAnomalyMonitorResponse Int
damrrsResponseStatus = lens _damrrsResponseStatus (\s a -> s {_damrrsResponseStatus = a})

instance NFData DeleteAnomalyMonitorResponse
