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
-- Module      : Network.AWS.StorageGateway.UpdateNFSFileShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Network File System (NFS) file share. This operation is only supported in the file gateway type.
--
--
-- Updates the following file share settings:
--
--     * Default storage class for your S3 bucket
--
--     * Metadata defaults for your S3 bucket
--
--     * Allowed NFS clients for your file share
--
--     * Squash settings
--
--     * Write status of your file share
module Network.AWS.StorageGateway.UpdateNFSFileShare
  ( -- * Creating a Request
    updateNFSFileShare,
    UpdateNFSFileShare,

    -- * Request Lenses
    unfsfsDefaultStorageClass,
    unfsfsFileShareName,
    unfsfsGuessMIMETypeEnabled,
    unfsfsReadOnly,
    unfsfsKMSEncrypted,
    unfsfsSquash,
    unfsfsNotificationPolicy,
    unfsfsKMSKey,
    unfsfsCacheAttributes,
    unfsfsClientList,
    unfsfsObjectACL,
    unfsfsNFSFileShareDefaults,
    unfsfsRequesterPays,
    unfsfsFileShareARN,

    -- * Destructuring the Response
    updateNFSFileShareResponse,
    UpdateNFSFileShareResponse,

    -- * Response Lenses
    unfsfsrrsFileShareARN,
    unfsfsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | UpdateNFSFileShareInput
--
--
--
-- /See:/ 'updateNFSFileShare' smart constructor.
data UpdateNFSFileShare = UpdateNFSFileShare'
  { _unfsfsDefaultStorageClass ::
      !(Maybe Text),
    _unfsfsFileShareName ::
      !(Maybe Text),
    _unfsfsGuessMIMETypeEnabled ::
      !(Maybe Bool),
    _unfsfsReadOnly :: !(Maybe Bool),
    _unfsfsKMSEncrypted ::
      !(Maybe Bool),
    _unfsfsSquash :: !(Maybe Text),
    _unfsfsNotificationPolicy ::
      !(Maybe Text),
    _unfsfsKMSKey :: !(Maybe Text),
    _unfsfsCacheAttributes ::
      !(Maybe CacheAttributes),
    _unfsfsClientList ::
      !(Maybe (List1 Text)),
    _unfsfsObjectACL ::
      !(Maybe ObjectACL),
    _unfsfsNFSFileShareDefaults ::
      !(Maybe NFSFileShareDefaults),
    _unfsfsRequesterPays ::
      !(Maybe Bool),
    _unfsfsFileShareARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateNFSFileShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unfsfsDefaultStorageClass' - The default storage class for objects put into an Amazon S3 bucket by the file gateway. The default value is @S3_INTELLIGENT_TIERING@ . Optional. Valid Values: @S3_STANDARD@ | @S3_INTELLIGENT_TIERING@ | @S3_STANDARD_IA@ | @S3_ONEZONE_IA@
--
-- * 'unfsfsFileShareName' - The name of the file share. Optional.
--
-- * 'unfsfsGuessMIMETypeEnabled' - A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to @true@ to enable MIME type guessing, otherwise set to @false@ . The default value is @true@ . Valid Values: @true@ | @false@
--
-- * 'unfsfsReadOnly' - A value that sets the write status of a file share. Set this value to @true@ to set the write status to read-only, otherwise set to @false@ . Valid Values: @true@ | @false@
--
-- * 'unfsfsKMSEncrypted' - Set to @true@ to use Amazon S3 server-side encryption with your own AWS KMS key, or @false@ to use a key managed by Amazon S3. Optional. Valid Values: @true@ | @false@
--
-- * 'unfsfsSquash' - The user mapped to anonymous user. Valid values are the following:     * @RootSquash@ : Only root is mapped to anonymous user.     * @NoSquash@ : No one is mapped to anonymous user.     * @AllSquash@ : Everyone is mapped to anonymous user.
--
-- * 'unfsfsNotificationPolicy' - The notification policy of the file share.
--
-- * 'unfsfsKMSKey' - The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can only be set when @KMSEncrypted@ is @true@ . Optional.
--
-- * 'unfsfsCacheAttributes' - Refresh cache information.
--
-- * 'unfsfsClientList' - The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks.
--
-- * 'unfsfsObjectACL' - A value that sets the access control list (ACL) permission for objects in the S3 bucket that a file gateway puts objects into. The default value is @private@ .
--
-- * 'unfsfsNFSFileShareDefaults' - The default values for the file share. Optional.
--
-- * 'unfsfsRequesterPays' - A value that sets who pays the cost of the request and the cost associated with data download from the S3 bucket. If this value is set to @true@ , the requester pays the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays the cost of storing data. Valid Values: @true@ | @false@
--
-- * 'unfsfsFileShareARN' - The Amazon Resource Name (ARN) of the file share to be updated.
updateNFSFileShare ::
  -- | 'unfsfsFileShareARN'
  Text ->
  UpdateNFSFileShare
updateNFSFileShare pFileShareARN_ =
  UpdateNFSFileShare'
    { _unfsfsDefaultStorageClass =
        Nothing,
      _unfsfsFileShareName = Nothing,
      _unfsfsGuessMIMETypeEnabled = Nothing,
      _unfsfsReadOnly = Nothing,
      _unfsfsKMSEncrypted = Nothing,
      _unfsfsSquash = Nothing,
      _unfsfsNotificationPolicy = Nothing,
      _unfsfsKMSKey = Nothing,
      _unfsfsCacheAttributes = Nothing,
      _unfsfsClientList = Nothing,
      _unfsfsObjectACL = Nothing,
      _unfsfsNFSFileShareDefaults = Nothing,
      _unfsfsRequesterPays = Nothing,
      _unfsfsFileShareARN = pFileShareARN_
    }

-- | The default storage class for objects put into an Amazon S3 bucket by the file gateway. The default value is @S3_INTELLIGENT_TIERING@ . Optional. Valid Values: @S3_STANDARD@ | @S3_INTELLIGENT_TIERING@ | @S3_STANDARD_IA@ | @S3_ONEZONE_IA@
unfsfsDefaultStorageClass :: Lens' UpdateNFSFileShare (Maybe Text)
unfsfsDefaultStorageClass = lens _unfsfsDefaultStorageClass (\s a -> s {_unfsfsDefaultStorageClass = a})

-- | The name of the file share. Optional.
unfsfsFileShareName :: Lens' UpdateNFSFileShare (Maybe Text)
unfsfsFileShareName = lens _unfsfsFileShareName (\s a -> s {_unfsfsFileShareName = a})

-- | A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to @true@ to enable MIME type guessing, otherwise set to @false@ . The default value is @true@ . Valid Values: @true@ | @false@
unfsfsGuessMIMETypeEnabled :: Lens' UpdateNFSFileShare (Maybe Bool)
unfsfsGuessMIMETypeEnabled = lens _unfsfsGuessMIMETypeEnabled (\s a -> s {_unfsfsGuessMIMETypeEnabled = a})

-- | A value that sets the write status of a file share. Set this value to @true@ to set the write status to read-only, otherwise set to @false@ . Valid Values: @true@ | @false@
unfsfsReadOnly :: Lens' UpdateNFSFileShare (Maybe Bool)
unfsfsReadOnly = lens _unfsfsReadOnly (\s a -> s {_unfsfsReadOnly = a})

-- | Set to @true@ to use Amazon S3 server-side encryption with your own AWS KMS key, or @false@ to use a key managed by Amazon S3. Optional. Valid Values: @true@ | @false@
unfsfsKMSEncrypted :: Lens' UpdateNFSFileShare (Maybe Bool)
unfsfsKMSEncrypted = lens _unfsfsKMSEncrypted (\s a -> s {_unfsfsKMSEncrypted = a})

-- | The user mapped to anonymous user. Valid values are the following:     * @RootSquash@ : Only root is mapped to anonymous user.     * @NoSquash@ : No one is mapped to anonymous user.     * @AllSquash@ : Everyone is mapped to anonymous user.
unfsfsSquash :: Lens' UpdateNFSFileShare (Maybe Text)
unfsfsSquash = lens _unfsfsSquash (\s a -> s {_unfsfsSquash = a})

-- | The notification policy of the file share.
unfsfsNotificationPolicy :: Lens' UpdateNFSFileShare (Maybe Text)
unfsfsNotificationPolicy = lens _unfsfsNotificationPolicy (\s a -> s {_unfsfsNotificationPolicy = a})

-- | The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can only be set when @KMSEncrypted@ is @true@ . Optional.
unfsfsKMSKey :: Lens' UpdateNFSFileShare (Maybe Text)
unfsfsKMSKey = lens _unfsfsKMSKey (\s a -> s {_unfsfsKMSKey = a})

-- | Refresh cache information.
unfsfsCacheAttributes :: Lens' UpdateNFSFileShare (Maybe CacheAttributes)
unfsfsCacheAttributes = lens _unfsfsCacheAttributes (\s a -> s {_unfsfsCacheAttributes = a})

-- | The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks.
unfsfsClientList :: Lens' UpdateNFSFileShare (Maybe (NonEmpty Text))
unfsfsClientList = lens _unfsfsClientList (\s a -> s {_unfsfsClientList = a}) . mapping _List1

-- | A value that sets the access control list (ACL) permission for objects in the S3 bucket that a file gateway puts objects into. The default value is @private@ .
unfsfsObjectACL :: Lens' UpdateNFSFileShare (Maybe ObjectACL)
unfsfsObjectACL = lens _unfsfsObjectACL (\s a -> s {_unfsfsObjectACL = a})

-- | The default values for the file share. Optional.
unfsfsNFSFileShareDefaults :: Lens' UpdateNFSFileShare (Maybe NFSFileShareDefaults)
unfsfsNFSFileShareDefaults = lens _unfsfsNFSFileShareDefaults (\s a -> s {_unfsfsNFSFileShareDefaults = a})

-- | A value that sets who pays the cost of the request and the cost associated with data download from the S3 bucket. If this value is set to @true@ , the requester pays the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays the cost of storing data. Valid Values: @true@ | @false@
unfsfsRequesterPays :: Lens' UpdateNFSFileShare (Maybe Bool)
unfsfsRequesterPays = lens _unfsfsRequesterPays (\s a -> s {_unfsfsRequesterPays = a})

-- | The Amazon Resource Name (ARN) of the file share to be updated.
unfsfsFileShareARN :: Lens' UpdateNFSFileShare Text
unfsfsFileShareARN = lens _unfsfsFileShareARN (\s a -> s {_unfsfsFileShareARN = a})

instance AWSRequest UpdateNFSFileShare where
  type
    Rs UpdateNFSFileShare =
      UpdateNFSFileShareResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          UpdateNFSFileShareResponse'
            <$> (x .?> "FileShareARN") <*> (pure (fromEnum s))
      )

instance Hashable UpdateNFSFileShare

instance NFData UpdateNFSFileShare

instance ToHeaders UpdateNFSFileShare where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.UpdateNFSFileShare" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateNFSFileShare where
  toJSON UpdateNFSFileShare' {..} =
    object
      ( catMaybes
          [ ("DefaultStorageClass" .=)
              <$> _unfsfsDefaultStorageClass,
            ("FileShareName" .=) <$> _unfsfsFileShareName,
            ("GuessMIMETypeEnabled" .=)
              <$> _unfsfsGuessMIMETypeEnabled,
            ("ReadOnly" .=) <$> _unfsfsReadOnly,
            ("KMSEncrypted" .=) <$> _unfsfsKMSEncrypted,
            ("Squash" .=) <$> _unfsfsSquash,
            ("NotificationPolicy" .=)
              <$> _unfsfsNotificationPolicy,
            ("KMSKey" .=) <$> _unfsfsKMSKey,
            ("CacheAttributes" .=) <$> _unfsfsCacheAttributes,
            ("ClientList" .=) <$> _unfsfsClientList,
            ("ObjectACL" .=) <$> _unfsfsObjectACL,
            ("NFSFileShareDefaults" .=)
              <$> _unfsfsNFSFileShareDefaults,
            ("RequesterPays" .=) <$> _unfsfsRequesterPays,
            Just ("FileShareARN" .= _unfsfsFileShareARN)
          ]
      )

instance ToPath UpdateNFSFileShare where
  toPath = const "/"

instance ToQuery UpdateNFSFileShare where
  toQuery = const mempty

-- | UpdateNFSFileShareOutput
--
--
--
-- /See:/ 'updateNFSFileShareResponse' smart constructor.
data UpdateNFSFileShareResponse = UpdateNFSFileShareResponse'
  { _unfsfsrrsFileShareARN ::
      !(Maybe Text),
    _unfsfsrrsResponseStatus ::
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

-- | Creates a value of 'UpdateNFSFileShareResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unfsfsrrsFileShareARN' - The Amazon Resource Name (ARN) of the updated file share.
--
-- * 'unfsfsrrsResponseStatus' - -- | The response status code.
updateNFSFileShareResponse ::
  -- | 'unfsfsrrsResponseStatus'
  Int ->
  UpdateNFSFileShareResponse
updateNFSFileShareResponse pResponseStatus_ =
  UpdateNFSFileShareResponse'
    { _unfsfsrrsFileShareARN =
        Nothing,
      _unfsfsrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the updated file share.
unfsfsrrsFileShareARN :: Lens' UpdateNFSFileShareResponse (Maybe Text)
unfsfsrrsFileShareARN = lens _unfsfsrrsFileShareARN (\s a -> s {_unfsfsrrsFileShareARN = a})

-- | -- | The response status code.
unfsfsrrsResponseStatus :: Lens' UpdateNFSFileShareResponse Int
unfsfsrrsResponseStatus = lens _unfsfsrrsResponseStatus (\s a -> s {_unfsfsrrsResponseStatus = a})

instance NFData UpdateNFSFileShareResponse
