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
-- Module      : Network.AWS.StorageGateway.DescribeUploadBuffer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the upload buffer of a gateway. This operation is supported for the stored volume, cached volume, and tape gateway types.
--
--
-- The response includes disk IDs that are configured as upload buffer space, and it includes the amount of upload buffer space allocated and used.
module Network.AWS.StorageGateway.DescribeUploadBuffer
  ( -- * Creating a Request
    describeUploadBuffer,
    DescribeUploadBuffer,

    -- * Request Lenses
    dubGatewayARN,

    -- * Destructuring the Response
    describeUploadBufferResponse,
    DescribeUploadBufferResponse,

    -- * Response Lenses
    dubrrsUploadBufferAllocatedInBytes,
    dubrrsUploadBufferUsedInBytes,
    dubrrsDiskIds,
    dubrrsGatewayARN,
    dubrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'describeUploadBuffer' smart constructor.
newtype DescribeUploadBuffer = DescribeUploadBuffer'
  { _dubGatewayARN ::
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

-- | Creates a value of 'DescribeUploadBuffer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dubGatewayARN' - Undocumented member.
describeUploadBuffer ::
  -- | 'dubGatewayARN'
  Text ->
  DescribeUploadBuffer
describeUploadBuffer pGatewayARN_ =
  DescribeUploadBuffer'
    { _dubGatewayARN =
        pGatewayARN_
    }

-- | Undocumented member.
dubGatewayARN :: Lens' DescribeUploadBuffer Text
dubGatewayARN = lens _dubGatewayARN (\s a -> s {_dubGatewayARN = a})

instance AWSRequest DescribeUploadBuffer where
  type
    Rs DescribeUploadBuffer =
      DescribeUploadBufferResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeUploadBufferResponse'
            <$> (x .?> "UploadBufferAllocatedInBytes")
            <*> (x .?> "UploadBufferUsedInBytes")
            <*> (x .?> "DiskIds" .!@ mempty)
            <*> (x .?> "GatewayARN")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeUploadBuffer

instance NFData DescribeUploadBuffer

instance ToHeaders DescribeUploadBuffer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeUploadBuffer" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeUploadBuffer where
  toJSON DescribeUploadBuffer' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _dubGatewayARN)])

instance ToPath DescribeUploadBuffer where
  toPath = const "/"

instance ToQuery DescribeUploadBuffer where
  toQuery = const mempty

-- | /See:/ 'describeUploadBufferResponse' smart constructor.
data DescribeUploadBufferResponse = DescribeUploadBufferResponse'
  { _dubrrsUploadBufferAllocatedInBytes ::
      !( Maybe
           Integer
       ),
    _dubrrsUploadBufferUsedInBytes ::
      !( Maybe
           Integer
       ),
    _dubrrsDiskIds ::
      !( Maybe
           [Text]
       ),
    _dubrrsGatewayARN ::
      !(Maybe Text),
    _dubrrsResponseStatus ::
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

-- | Creates a value of 'DescribeUploadBufferResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dubrrsUploadBufferAllocatedInBytes' - The total number of bytes allocated in the gateway's as upload buffer.
--
-- * 'dubrrsUploadBufferUsedInBytes' - The total number of bytes being used in the gateway's upload buffer.
--
-- * 'dubrrsDiskIds' - An array of the gateway's local disk IDs that are configured as working storage. Each local disk ID is specified as a string (minimum length of 1 and maximum length of 300). If no local disks are configured as working storage, then the DiskIds array is empty.
--
-- * 'dubrrsGatewayARN' - Undocumented member.
--
-- * 'dubrrsResponseStatus' - -- | The response status code.
describeUploadBufferResponse ::
  -- | 'dubrrsResponseStatus'
  Int ->
  DescribeUploadBufferResponse
describeUploadBufferResponse pResponseStatus_ =
  DescribeUploadBufferResponse'
    { _dubrrsUploadBufferAllocatedInBytes =
        Nothing,
      _dubrrsUploadBufferUsedInBytes = Nothing,
      _dubrrsDiskIds = Nothing,
      _dubrrsGatewayARN = Nothing,
      _dubrrsResponseStatus = pResponseStatus_
    }

-- | The total number of bytes allocated in the gateway's as upload buffer.
dubrrsUploadBufferAllocatedInBytes :: Lens' DescribeUploadBufferResponse (Maybe Integer)
dubrrsUploadBufferAllocatedInBytes = lens _dubrrsUploadBufferAllocatedInBytes (\s a -> s {_dubrrsUploadBufferAllocatedInBytes = a})

-- | The total number of bytes being used in the gateway's upload buffer.
dubrrsUploadBufferUsedInBytes :: Lens' DescribeUploadBufferResponse (Maybe Integer)
dubrrsUploadBufferUsedInBytes = lens _dubrrsUploadBufferUsedInBytes (\s a -> s {_dubrrsUploadBufferUsedInBytes = a})

-- | An array of the gateway's local disk IDs that are configured as working storage. Each local disk ID is specified as a string (minimum length of 1 and maximum length of 300). If no local disks are configured as working storage, then the DiskIds array is empty.
dubrrsDiskIds :: Lens' DescribeUploadBufferResponse [Text]
dubrrsDiskIds = lens _dubrrsDiskIds (\s a -> s {_dubrrsDiskIds = a}) . _Default . _Coerce

-- | Undocumented member.
dubrrsGatewayARN :: Lens' DescribeUploadBufferResponse (Maybe Text)
dubrrsGatewayARN = lens _dubrrsGatewayARN (\s a -> s {_dubrrsGatewayARN = a})

-- | -- | The response status code.
dubrrsResponseStatus :: Lens' DescribeUploadBufferResponse Int
dubrrsResponseStatus = lens _dubrrsResponseStatus (\s a -> s {_dubrrsResponseStatus = a})

instance NFData DescribeUploadBufferResponse
