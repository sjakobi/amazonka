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
-- Module      : Network.AWS.StorageGateway.DescribeWorkingStorage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the working storage of a gateway. This operation is only supported in the stored volumes gateway type. This operation is deprecated in cached volumes API version (20120630). Use DescribeUploadBuffer instead.
--
--
-- The response includes disk IDs that are configured as working storage, and it includes the amount of working storage allocated and used.
module Network.AWS.StorageGateway.DescribeWorkingStorage
  ( -- * Creating a Request
    describeWorkingStorage,
    DescribeWorkingStorage,

    -- * Request Lenses
    dwsGatewayARN,

    -- * Destructuring the Response
    describeWorkingStorageResponse,
    DescribeWorkingStorageResponse,

    -- * Response Lenses
    dwsrrsWorkingStorageUsedInBytes,
    dwsrrsWorkingStorageAllocatedInBytes,
    dwsrrsDiskIds,
    dwsrrsGatewayARN,
    dwsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway.
--
--
--
-- /See:/ 'describeWorkingStorage' smart constructor.
newtype DescribeWorkingStorage = DescribeWorkingStorage'
  { _dwsGatewayARN ::
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

-- | Creates a value of 'DescribeWorkingStorage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwsGatewayARN' - Undocumented member.
describeWorkingStorage ::
  -- | 'dwsGatewayARN'
  Text ->
  DescribeWorkingStorage
describeWorkingStorage pGatewayARN_ =
  DescribeWorkingStorage'
    { _dwsGatewayARN =
        pGatewayARN_
    }

-- | Undocumented member.
dwsGatewayARN :: Lens' DescribeWorkingStorage Text
dwsGatewayARN = lens _dwsGatewayARN (\s a -> s {_dwsGatewayARN = a})

instance AWSRequest DescribeWorkingStorage where
  type
    Rs DescribeWorkingStorage =
      DescribeWorkingStorageResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeWorkingStorageResponse'
            <$> (x .?> "WorkingStorageUsedInBytes")
            <*> (x .?> "WorkingStorageAllocatedInBytes")
            <*> (x .?> "DiskIds" .!@ mempty)
            <*> (x .?> "GatewayARN")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeWorkingStorage

instance NFData DescribeWorkingStorage

instance ToHeaders DescribeWorkingStorage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeWorkingStorage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeWorkingStorage where
  toJSON DescribeWorkingStorage' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _dwsGatewayARN)])

instance ToPath DescribeWorkingStorage where
  toPath = const "/"

instance ToQuery DescribeWorkingStorage where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--
-- /See:/ 'describeWorkingStorageResponse' smart constructor.
data DescribeWorkingStorageResponse = DescribeWorkingStorageResponse'
  { _dwsrrsWorkingStorageUsedInBytes ::
      !( Maybe
           Integer
       ),
    _dwsrrsWorkingStorageAllocatedInBytes ::
      !( Maybe
           Integer
       ),
    _dwsrrsDiskIds ::
      !( Maybe
           [Text]
       ),
    _dwsrrsGatewayARN ::
      !( Maybe
           Text
       ),
    _dwsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeWorkingStorageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwsrrsWorkingStorageUsedInBytes' - The total working storage in bytes in use by the gateway. If no working storage is configured for the gateway, this field returns 0.
--
-- * 'dwsrrsWorkingStorageAllocatedInBytes' - The total working storage in bytes allocated for the gateway. If no working storage is configured for the gateway, this field returns 0.
--
-- * 'dwsrrsDiskIds' - An array of the gateway's local disk IDs that are configured as working storage. Each local disk ID is specified as a string (minimum length of 1 and maximum length of 300). If no local disks are configured as working storage, then the DiskIds array is empty.
--
-- * 'dwsrrsGatewayARN' - Undocumented member.
--
-- * 'dwsrrsResponseStatus' - -- | The response status code.
describeWorkingStorageResponse ::
  -- | 'dwsrrsResponseStatus'
  Int ->
  DescribeWorkingStorageResponse
describeWorkingStorageResponse pResponseStatus_ =
  DescribeWorkingStorageResponse'
    { _dwsrrsWorkingStorageUsedInBytes =
        Nothing,
      _dwsrrsWorkingStorageAllocatedInBytes =
        Nothing,
      _dwsrrsDiskIds = Nothing,
      _dwsrrsGatewayARN = Nothing,
      _dwsrrsResponseStatus = pResponseStatus_
    }

-- | The total working storage in bytes in use by the gateway. If no working storage is configured for the gateway, this field returns 0.
dwsrrsWorkingStorageUsedInBytes :: Lens' DescribeWorkingStorageResponse (Maybe Integer)
dwsrrsWorkingStorageUsedInBytes = lens _dwsrrsWorkingStorageUsedInBytes (\s a -> s {_dwsrrsWorkingStorageUsedInBytes = a})

-- | The total working storage in bytes allocated for the gateway. If no working storage is configured for the gateway, this field returns 0.
dwsrrsWorkingStorageAllocatedInBytes :: Lens' DescribeWorkingStorageResponse (Maybe Integer)
dwsrrsWorkingStorageAllocatedInBytes = lens _dwsrrsWorkingStorageAllocatedInBytes (\s a -> s {_dwsrrsWorkingStorageAllocatedInBytes = a})

-- | An array of the gateway's local disk IDs that are configured as working storage. Each local disk ID is specified as a string (minimum length of 1 and maximum length of 300). If no local disks are configured as working storage, then the DiskIds array is empty.
dwsrrsDiskIds :: Lens' DescribeWorkingStorageResponse [Text]
dwsrrsDiskIds = lens _dwsrrsDiskIds (\s a -> s {_dwsrrsDiskIds = a}) . _Default . _Coerce

-- | Undocumented member.
dwsrrsGatewayARN :: Lens' DescribeWorkingStorageResponse (Maybe Text)
dwsrrsGatewayARN = lens _dwsrrsGatewayARN (\s a -> s {_dwsrrsGatewayARN = a})

-- | -- | The response status code.
dwsrrsResponseStatus :: Lens' DescribeWorkingStorageResponse Int
dwsrrsResponseStatus = lens _dwsrrsResponseStatus (\s a -> s {_dwsrrsResponseStatus = a})

instance NFData DescribeWorkingStorageResponse
