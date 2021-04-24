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
-- Module      : Network.AWS.StorageGateway.RefreshCache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refreshes the cache for the specified file share. This operation finds objects in the Amazon S3 bucket that were added, removed, or replaced since the gateway last listed the bucket's contents and cached the results. This operation is only supported in the file gateway type. You can subscribe to be notified through an Amazon CloudWatch event when your RefreshCache operation completes. For more information, see <https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification Getting notified about file operations> in the /AWS Storage Gateway User Guide/ .
--
--
-- When this API is called, it only initiates the refresh operation. When the API call completes and returns a success code, it doesn't necessarily mean that the file refresh has completed. You should use the refresh-complete notification to determine that the operation has completed before you check for new files on the gateway file share. You can subscribe to be notified through an CloudWatch event when your @RefreshCache@ operation completes.
--
-- Throttle limit: This API is asynchronous so the gateway will accept no more than two refreshes at any time. We recommend using the refresh-complete CloudWatch event notification before issuing additional requests. For more information, see <https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification Getting notified about file operations> in the /AWS Storage Gateway User Guide/ .
--
-- If you invoke the RefreshCache API when two requests are already being processed, any new request will cause an @InvalidGatewayRequestException@ error because too many requests were sent to the server.
--
-- For more information, see <https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification Getting notified about file operations> in the /AWS Storage Gateway User Guide/ .
module Network.AWS.StorageGateway.RefreshCache
  ( -- * Creating a Request
    refreshCache,
    RefreshCache,

    -- * Request Lenses
    rcRecursive,
    rcFolderList,
    rcFileShareARN,

    -- * Destructuring the Response
    refreshCacheResponse,
    RefreshCacheResponse,

    -- * Response Lenses
    rcrrsFileShareARN,
    rcrrsNotificationId,
    rcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | RefreshCacheInput
--
--
--
-- /See:/ 'refreshCache' smart constructor.
data RefreshCache = RefreshCache'
  { _rcRecursive ::
      !(Maybe Bool),
    _rcFolderList :: !(Maybe (List1 Text)),
    _rcFileShareARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RefreshCache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcRecursive' - A value that specifies whether to recursively refresh folders in the cache. The refresh includes folders that were in the cache the last time the gateway listed the folder's contents. If this value set to @true@ , each folder that is listed in @FolderList@ is recursively updated. Otherwise, subfolders listed in @FolderList@ are not refreshed. Only objects that are in folders listed directly under @FolderList@ are found and used for the update. The default is @true@ . Valid Values: @true@ | @false@
--
-- * 'rcFolderList' - A comma-separated list of the paths of folders to refresh in the cache. The default is [@"/"@ ]. The default refreshes objects and folders at the root of the Amazon S3 bucket. If @Recursive@ is set to @true@ , the entire S3 bucket that the file share has access to is refreshed.
--
-- * 'rcFileShareARN' - The Amazon Resource Name (ARN) of the file share you want to refresh.
refreshCache ::
  -- | 'rcFileShareARN'
  Text ->
  RefreshCache
refreshCache pFileShareARN_ =
  RefreshCache'
    { _rcRecursive = Nothing,
      _rcFolderList = Nothing,
      _rcFileShareARN = pFileShareARN_
    }

-- | A value that specifies whether to recursively refresh folders in the cache. The refresh includes folders that were in the cache the last time the gateway listed the folder's contents. If this value set to @true@ , each folder that is listed in @FolderList@ is recursively updated. Otherwise, subfolders listed in @FolderList@ are not refreshed. Only objects that are in folders listed directly under @FolderList@ are found and used for the update. The default is @true@ . Valid Values: @true@ | @false@
rcRecursive :: Lens' RefreshCache (Maybe Bool)
rcRecursive = lens _rcRecursive (\s a -> s {_rcRecursive = a})

-- | A comma-separated list of the paths of folders to refresh in the cache. The default is [@"/"@ ]. The default refreshes objects and folders at the root of the Amazon S3 bucket. If @Recursive@ is set to @true@ , the entire S3 bucket that the file share has access to is refreshed.
rcFolderList :: Lens' RefreshCache (Maybe (NonEmpty Text))
rcFolderList = lens _rcFolderList (\s a -> s {_rcFolderList = a}) . mapping _List1

-- | The Amazon Resource Name (ARN) of the file share you want to refresh.
rcFileShareARN :: Lens' RefreshCache Text
rcFileShareARN = lens _rcFileShareARN (\s a -> s {_rcFileShareARN = a})

instance AWSRequest RefreshCache where
  type Rs RefreshCache = RefreshCacheResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          RefreshCacheResponse'
            <$> (x .?> "FileShareARN")
            <*> (x .?> "NotificationId")
            <*> (pure (fromEnum s))
      )

instance Hashable RefreshCache

instance NFData RefreshCache

instance ToHeaders RefreshCache where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.RefreshCache" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RefreshCache where
  toJSON RefreshCache' {..} =
    object
      ( catMaybes
          [ ("Recursive" .=) <$> _rcRecursive,
            ("FolderList" .=) <$> _rcFolderList,
            Just ("FileShareARN" .= _rcFileShareARN)
          ]
      )

instance ToPath RefreshCache where
  toPath = const "/"

instance ToQuery RefreshCache where
  toQuery = const mempty

-- | RefreshCacheOutput
--
--
--
-- /See:/ 'refreshCacheResponse' smart constructor.
data RefreshCacheResponse = RefreshCacheResponse'
  { _rcrrsFileShareARN ::
      !(Maybe Text),
    _rcrrsNotificationId ::
      !(Maybe Text),
    _rcrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RefreshCacheResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrrsFileShareARN' - Undocumented member.
--
-- * 'rcrrsNotificationId' - Undocumented member.
--
-- * 'rcrrsResponseStatus' - -- | The response status code.
refreshCacheResponse ::
  -- | 'rcrrsResponseStatus'
  Int ->
  RefreshCacheResponse
refreshCacheResponse pResponseStatus_ =
  RefreshCacheResponse'
    { _rcrrsFileShareARN = Nothing,
      _rcrrsNotificationId = Nothing,
      _rcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
rcrrsFileShareARN :: Lens' RefreshCacheResponse (Maybe Text)
rcrrsFileShareARN = lens _rcrrsFileShareARN (\s a -> s {_rcrrsFileShareARN = a})

-- | Undocumented member.
rcrrsNotificationId :: Lens' RefreshCacheResponse (Maybe Text)
rcrrsNotificationId = lens _rcrrsNotificationId (\s a -> s {_rcrrsNotificationId = a})

-- | -- | The response status code.
rcrrsResponseStatus :: Lens' RefreshCacheResponse Int
rcrrsResponseStatus = lens _rcrrsResponseStatus (\s a -> s {_rcrrsResponseStatus = a})

instance NFData RefreshCacheResponse
