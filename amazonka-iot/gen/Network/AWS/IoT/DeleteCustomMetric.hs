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
-- Module      : Network.AWS.IoT.DeleteCustomMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Device Defender detect custom metric.
module Network.AWS.IoT.DeleteCustomMetric
  ( -- * Creating a Request
    deleteCustomMetric,
    DeleteCustomMetric,

    -- * Request Lenses
    dcmMetricName,

    -- * Destructuring the Response
    deleteCustomMetricResponse,
    DeleteCustomMetricResponse,

    -- * Response Lenses
    dcmrcrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteCustomMetric' smart constructor.
newtype DeleteCustomMetric = DeleteCustomMetric'
  { _dcmMetricName ::
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

-- | Creates a value of 'DeleteCustomMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcmMetricName' - The name of the custom metric.
deleteCustomMetric ::
  -- | 'dcmMetricName'
  Text ->
  DeleteCustomMetric
deleteCustomMetric pMetricName_ =
  DeleteCustomMetric' {_dcmMetricName = pMetricName_}

-- | The name of the custom metric.
dcmMetricName :: Lens' DeleteCustomMetric Text
dcmMetricName = lens _dcmMetricName (\s a -> s {_dcmMetricName = a})

instance AWSRequest DeleteCustomMetric where
  type
    Rs DeleteCustomMetric =
      DeleteCustomMetricResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteCustomMetricResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteCustomMetric

instance NFData DeleteCustomMetric

instance ToHeaders DeleteCustomMetric where
  toHeaders = const mempty

instance ToPath DeleteCustomMetric where
  toPath DeleteCustomMetric' {..} =
    mconcat ["/custom-metric/", toBS _dcmMetricName]

instance ToQuery DeleteCustomMetric where
  toQuery = const mempty

-- | /See:/ 'deleteCustomMetricResponse' smart constructor.
newtype DeleteCustomMetricResponse = DeleteCustomMetricResponse'
  { _dcmrcrsResponseStatus ::
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

-- | Creates a value of 'DeleteCustomMetricResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcmrcrsResponseStatus' - -- | The response status code.
deleteCustomMetricResponse ::
  -- | 'dcmrcrsResponseStatus'
  Int ->
  DeleteCustomMetricResponse
deleteCustomMetricResponse pResponseStatus_ =
  DeleteCustomMetricResponse'
    { _dcmrcrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dcmrcrsResponseStatus :: Lens' DeleteCustomMetricResponse Int
dcmrcrsResponseStatus = lens _dcmrcrsResponseStatus (\s a -> s {_dcmrcrsResponseStatus = a})

instance NFData DeleteCustomMetricResponse
