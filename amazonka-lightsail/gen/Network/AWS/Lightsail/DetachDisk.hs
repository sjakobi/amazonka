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
-- Module      : Network.AWS.Lightsail.DetachDisk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches a stopped block storage disk from a Lightsail instance. Make sure to unmount any file systems on the device within your operating system before stopping the instance and detaching the disk.
--
--
-- The @detach disk@ operation supports tag-based access control via resource tags applied to the resource identified by @disk name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.DetachDisk
  ( -- * Creating a Request
    detachDisk,
    DetachDisk,

    -- * Request Lenses
    ddDiskName,

    -- * Destructuring the Response
    detachDiskResponse,
    DetachDiskResponse,

    -- * Response Lenses
    ddrrsOperations,
    ddrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detachDisk' smart constructor.
newtype DetachDisk = DetachDisk' {_ddDiskName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetachDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDiskName' - The unique name of the disk you want to detach from your instance (e.g., @my-disk@ ).
detachDisk ::
  -- | 'ddDiskName'
  Text ->
  DetachDisk
detachDisk pDiskName_ =
  DetachDisk' {_ddDiskName = pDiskName_}

-- | The unique name of the disk you want to detach from your instance (e.g., @my-disk@ ).
ddDiskName :: Lens' DetachDisk Text
ddDiskName = lens _ddDiskName (\s a -> s {_ddDiskName = a})

instance AWSRequest DetachDisk where
  type Rs DetachDisk = DetachDiskResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DetachDiskResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DetachDisk

instance NFData DetachDisk

instance ToHeaders DetachDisk where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.DetachDisk" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DetachDisk where
  toJSON DetachDisk' {..} =
    object
      (catMaybes [Just ("diskName" .= _ddDiskName)])

instance ToPath DetachDisk where
  toPath = const "/"

instance ToQuery DetachDisk where
  toQuery = const mempty

-- | /See:/ 'detachDiskResponse' smart constructor.
data DetachDiskResponse = DetachDiskResponse'
  { _ddrrsOperations ::
      !(Maybe [Operation]),
    _ddrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetachDiskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'ddrrsResponseStatus' - -- | The response status code.
detachDiskResponse ::
  -- | 'ddrrsResponseStatus'
  Int ->
  DetachDiskResponse
detachDiskResponse pResponseStatus_ =
  DetachDiskResponse'
    { _ddrrsOperations = Nothing,
      _ddrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
ddrrsOperations :: Lens' DetachDiskResponse [Operation]
ddrrsOperations = lens _ddrrsOperations (\s a -> s {_ddrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
ddrrsResponseStatus :: Lens' DetachDiskResponse Int
ddrrsResponseStatus = lens _ddrrsResponseStatus (\s a -> s {_ddrrsResponseStatus = a})

instance NFData DetachDiskResponse
