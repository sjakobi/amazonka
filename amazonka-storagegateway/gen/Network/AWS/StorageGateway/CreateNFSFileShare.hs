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
-- Module      : Network.AWS.StorageGateway.CreateNFSFileShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Network File System (NFS) file share on an existing file gateway. In Storage Gateway, a file share is a file system mount point backed by Amazon S3 cloud storage. Storage Gateway exposes file shares using an NFS interface. This operation is only supported for file gateways.
--
--
-- /Important:/ File gateway requires AWS Security Token Service (AWS STS) to be activated to enable you to create a file share. Make sure AWS STS is activated in the AWS Region you are creating your file gateway in. If AWS STS is not activated in the AWS Region, activate it. For information about how to activate AWS STS, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html Activating and deactivating AWS STS in an AWS Region> in the /AWS Identity and Access Management User Guide/ .
--
-- File gateway does not support creating hard or symbolic links on a file share.
module Network.AWS.StorageGateway.CreateNFSFileShare
  ( -- * Creating a Request
    createNFSFileShare,
    CreateNFSFileShare,

    -- * Request Lenses
    cnfsfsDefaultStorageClass,
    cnfsfsFileShareName,
    cnfsfsGuessMIMETypeEnabled,
    cnfsfsReadOnly,
    cnfsfsKMSEncrypted,
    cnfsfsSquash,
    cnfsfsNotificationPolicy,
    cnfsfsKMSKey,
    cnfsfsTags,
    cnfsfsCacheAttributes,
    cnfsfsClientList,
    cnfsfsObjectACL,
    cnfsfsNFSFileShareDefaults,
    cnfsfsRequesterPays,
    cnfsfsClientToken,
    cnfsfsGatewayARN,
    cnfsfsRole,
    cnfsfsLocationARN,

    -- * Destructuring the Response
    createNFSFileShareResponse,
    CreateNFSFileShareResponse,

    -- * Response Lenses
    cnfsfsrrsFileShareARN,
    cnfsfsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | CreateNFSFileShareInput
--
--
--
-- /See:/ 'createNFSFileShare' smart constructor.
data CreateNFSFileShare = CreateNFSFileShare'
  { _cnfsfsDefaultStorageClass ::
      !(Maybe Text),
    _cnfsfsFileShareName ::
      !(Maybe Text),
    _cnfsfsGuessMIMETypeEnabled ::
      !(Maybe Bool),
    _cnfsfsReadOnly :: !(Maybe Bool),
    _cnfsfsKMSEncrypted ::
      !(Maybe Bool),
    _cnfsfsSquash :: !(Maybe Text),
    _cnfsfsNotificationPolicy ::
      !(Maybe Text),
    _cnfsfsKMSKey :: !(Maybe Text),
    _cnfsfsTags :: !(Maybe [Tag]),
    _cnfsfsCacheAttributes ::
      !(Maybe CacheAttributes),
    _cnfsfsClientList ::
      !(Maybe (List1 Text)),
    _cnfsfsObjectACL ::
      !(Maybe ObjectACL),
    _cnfsfsNFSFileShareDefaults ::
      !(Maybe NFSFileShareDefaults),
    _cnfsfsRequesterPays ::
      !(Maybe Bool),
    _cnfsfsClientToken :: !Text,
    _cnfsfsGatewayARN :: !Text,
    _cnfsfsRole :: !Text,
    _cnfsfsLocationARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateNFSFileShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnfsfsDefaultStorageClass' - The default storage class for objects put into an Amazon S3 bucket by the file gateway. The default value is @S3_INTELLIGENT_TIERING@ . Optional. Valid Values: @S3_STANDARD@ | @S3_INTELLIGENT_TIERING@ | @S3_STANDARD_IA@ | @S3_ONEZONE_IA@
--
-- * 'cnfsfsFileShareName' - The name of the file share. Optional.
--
-- * 'cnfsfsGuessMIMETypeEnabled' - A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to @true@ to enable MIME type guessing, otherwise set to @false@ . The default value is @true@ . Valid Values: @true@ | @false@
--
-- * 'cnfsfsReadOnly' - A value that sets the write status of a file share. Set this value to @true@ to set the write status to read-only, otherwise set to @false@ . Valid Values: @true@ | @false@
--
-- * 'cnfsfsKMSEncrypted' - Set to @true@ to use Amazon S3 server-side encryption with your own AWS KMS key, or @false@ to use a key managed by Amazon S3. Optional. Valid Values: @true@ | @false@
--
-- * 'cnfsfsSquash' - A value that maps a user to anonymous user. Valid values are the following:     * @RootSquash@ : Only root is mapped to anonymous user.     * @NoSquash@ : No one is mapped to anonymous user.     * @AllSquash@ : Everyone is mapped to anonymous user.
--
-- * 'cnfsfsNotificationPolicy' - The notification policy of the file share.
--
-- * 'cnfsfsKMSKey' - The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can only be set when @KMSEncrypted@ is @true@ . Optional.
--
-- * 'cnfsfsTags' - A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a key-value pair.
--
-- * 'cnfsfsCacheAttributes' - Refresh cache information.
--
-- * 'cnfsfsClientList' - The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks.
--
-- * 'cnfsfsObjectACL' - A value that sets the access control list (ACL) permission for objects in the S3 bucket that a file gateway puts objects into. The default value is @private@ .
--
-- * 'cnfsfsNFSFileShareDefaults' - File share default values. Optional.
--
-- * 'cnfsfsRequesterPays' - A value that sets who pays the cost of the request and the cost associated with data download from the S3 bucket. If this value is set to @true@ , the requester pays the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays the cost of storing data. Valid Values: @true@ | @false@
--
-- * 'cnfsfsClientToken' - A unique string value that you supply that is used by file gateway to ensure idempotent file share creation.
--
-- * 'cnfsfsGatewayARN' - The Amazon Resource Name (ARN) of the file gateway on which you want to create a file share.
--
-- * 'cnfsfsRole' - The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
--
-- * 'cnfsfsLocationARN' - The ARN of the backend storage used for storing file data. A prefix name can be added to the S3 bucket name. It must end with a "/".
createNFSFileShare ::
  -- | 'cnfsfsClientToken'
  Text ->
  -- | 'cnfsfsGatewayARN'
  Text ->
  -- | 'cnfsfsRole'
  Text ->
  -- | 'cnfsfsLocationARN'
  Text ->
  CreateNFSFileShare
createNFSFileShare
  pClientToken_
  pGatewayARN_
  pRole_
  pLocationARN_ =
    CreateNFSFileShare'
      { _cnfsfsDefaultStorageClass =
          Nothing,
        _cnfsfsFileShareName = Nothing,
        _cnfsfsGuessMIMETypeEnabled = Nothing,
        _cnfsfsReadOnly = Nothing,
        _cnfsfsKMSEncrypted = Nothing,
        _cnfsfsSquash = Nothing,
        _cnfsfsNotificationPolicy = Nothing,
        _cnfsfsKMSKey = Nothing,
        _cnfsfsTags = Nothing,
        _cnfsfsCacheAttributes = Nothing,
        _cnfsfsClientList = Nothing,
        _cnfsfsObjectACL = Nothing,
        _cnfsfsNFSFileShareDefaults = Nothing,
        _cnfsfsRequesterPays = Nothing,
        _cnfsfsClientToken = pClientToken_,
        _cnfsfsGatewayARN = pGatewayARN_,
        _cnfsfsRole = pRole_,
        _cnfsfsLocationARN = pLocationARN_
      }

-- | The default storage class for objects put into an Amazon S3 bucket by the file gateway. The default value is @S3_INTELLIGENT_TIERING@ . Optional. Valid Values: @S3_STANDARD@ | @S3_INTELLIGENT_TIERING@ | @S3_STANDARD_IA@ | @S3_ONEZONE_IA@
cnfsfsDefaultStorageClass :: Lens' CreateNFSFileShare (Maybe Text)
cnfsfsDefaultStorageClass = lens _cnfsfsDefaultStorageClass (\s a -> s {_cnfsfsDefaultStorageClass = a})

-- | The name of the file share. Optional.
cnfsfsFileShareName :: Lens' CreateNFSFileShare (Maybe Text)
cnfsfsFileShareName = lens _cnfsfsFileShareName (\s a -> s {_cnfsfsFileShareName = a})

-- | A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to @true@ to enable MIME type guessing, otherwise set to @false@ . The default value is @true@ . Valid Values: @true@ | @false@
cnfsfsGuessMIMETypeEnabled :: Lens' CreateNFSFileShare (Maybe Bool)
cnfsfsGuessMIMETypeEnabled = lens _cnfsfsGuessMIMETypeEnabled (\s a -> s {_cnfsfsGuessMIMETypeEnabled = a})

-- | A value that sets the write status of a file share. Set this value to @true@ to set the write status to read-only, otherwise set to @false@ . Valid Values: @true@ | @false@
cnfsfsReadOnly :: Lens' CreateNFSFileShare (Maybe Bool)
cnfsfsReadOnly = lens _cnfsfsReadOnly (\s a -> s {_cnfsfsReadOnly = a})

-- | Set to @true@ to use Amazon S3 server-side encryption with your own AWS KMS key, or @false@ to use a key managed by Amazon S3. Optional. Valid Values: @true@ | @false@
cnfsfsKMSEncrypted :: Lens' CreateNFSFileShare (Maybe Bool)
cnfsfsKMSEncrypted = lens _cnfsfsKMSEncrypted (\s a -> s {_cnfsfsKMSEncrypted = a})

-- | A value that maps a user to anonymous user. Valid values are the following:     * @RootSquash@ : Only root is mapped to anonymous user.     * @NoSquash@ : No one is mapped to anonymous user.     * @AllSquash@ : Everyone is mapped to anonymous user.
cnfsfsSquash :: Lens' CreateNFSFileShare (Maybe Text)
cnfsfsSquash = lens _cnfsfsSquash (\s a -> s {_cnfsfsSquash = a})

-- | The notification policy of the file share.
cnfsfsNotificationPolicy :: Lens' CreateNFSFileShare (Maybe Text)
cnfsfsNotificationPolicy = lens _cnfsfsNotificationPolicy (\s a -> s {_cnfsfsNotificationPolicy = a})

-- | The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can only be set when @KMSEncrypted@ is @true@ . Optional.
cnfsfsKMSKey :: Lens' CreateNFSFileShare (Maybe Text)
cnfsfsKMSKey = lens _cnfsfsKMSKey (\s a -> s {_cnfsfsKMSKey = a})

-- | A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a key-value pair.
cnfsfsTags :: Lens' CreateNFSFileShare [Tag]
cnfsfsTags = lens _cnfsfsTags (\s a -> s {_cnfsfsTags = a}) . _Default . _Coerce

-- | Refresh cache information.
cnfsfsCacheAttributes :: Lens' CreateNFSFileShare (Maybe CacheAttributes)
cnfsfsCacheAttributes = lens _cnfsfsCacheAttributes (\s a -> s {_cnfsfsCacheAttributes = a})

-- | The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks.
cnfsfsClientList :: Lens' CreateNFSFileShare (Maybe (NonEmpty Text))
cnfsfsClientList = lens _cnfsfsClientList (\s a -> s {_cnfsfsClientList = a}) . mapping _List1

-- | A value that sets the access control list (ACL) permission for objects in the S3 bucket that a file gateway puts objects into. The default value is @private@ .
cnfsfsObjectACL :: Lens' CreateNFSFileShare (Maybe ObjectACL)
cnfsfsObjectACL = lens _cnfsfsObjectACL (\s a -> s {_cnfsfsObjectACL = a})

-- | File share default values. Optional.
cnfsfsNFSFileShareDefaults :: Lens' CreateNFSFileShare (Maybe NFSFileShareDefaults)
cnfsfsNFSFileShareDefaults = lens _cnfsfsNFSFileShareDefaults (\s a -> s {_cnfsfsNFSFileShareDefaults = a})

-- | A value that sets who pays the cost of the request and the cost associated with data download from the S3 bucket. If this value is set to @true@ , the requester pays the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays the cost of storing data. Valid Values: @true@ | @false@
cnfsfsRequesterPays :: Lens' CreateNFSFileShare (Maybe Bool)
cnfsfsRequesterPays = lens _cnfsfsRequesterPays (\s a -> s {_cnfsfsRequesterPays = a})

-- | A unique string value that you supply that is used by file gateway to ensure idempotent file share creation.
cnfsfsClientToken :: Lens' CreateNFSFileShare Text
cnfsfsClientToken = lens _cnfsfsClientToken (\s a -> s {_cnfsfsClientToken = a})

-- | The Amazon Resource Name (ARN) of the file gateway on which you want to create a file share.
cnfsfsGatewayARN :: Lens' CreateNFSFileShare Text
cnfsfsGatewayARN = lens _cnfsfsGatewayARN (\s a -> s {_cnfsfsGatewayARN = a})

-- | The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
cnfsfsRole :: Lens' CreateNFSFileShare Text
cnfsfsRole = lens _cnfsfsRole (\s a -> s {_cnfsfsRole = a})

-- | The ARN of the backend storage used for storing file data. A prefix name can be added to the S3 bucket name. It must end with a "/".
cnfsfsLocationARN :: Lens' CreateNFSFileShare Text
cnfsfsLocationARN = lens _cnfsfsLocationARN (\s a -> s {_cnfsfsLocationARN = a})

instance AWSRequest CreateNFSFileShare where
  type
    Rs CreateNFSFileShare =
      CreateNFSFileShareResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          CreateNFSFileShareResponse'
            <$> (x .?> "FileShareARN") <*> (pure (fromEnum s))
      )

instance Hashable CreateNFSFileShare

instance NFData CreateNFSFileShare

instance ToHeaders CreateNFSFileShare where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.CreateNFSFileShare" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateNFSFileShare where
  toJSON CreateNFSFileShare' {..} =
    object
      ( catMaybes
          [ ("DefaultStorageClass" .=)
              <$> _cnfsfsDefaultStorageClass,
            ("FileShareName" .=) <$> _cnfsfsFileShareName,
            ("GuessMIMETypeEnabled" .=)
              <$> _cnfsfsGuessMIMETypeEnabled,
            ("ReadOnly" .=) <$> _cnfsfsReadOnly,
            ("KMSEncrypted" .=) <$> _cnfsfsKMSEncrypted,
            ("Squash" .=) <$> _cnfsfsSquash,
            ("NotificationPolicy" .=)
              <$> _cnfsfsNotificationPolicy,
            ("KMSKey" .=) <$> _cnfsfsKMSKey,
            ("Tags" .=) <$> _cnfsfsTags,
            ("CacheAttributes" .=) <$> _cnfsfsCacheAttributes,
            ("ClientList" .=) <$> _cnfsfsClientList,
            ("ObjectACL" .=) <$> _cnfsfsObjectACL,
            ("NFSFileShareDefaults" .=)
              <$> _cnfsfsNFSFileShareDefaults,
            ("RequesterPays" .=) <$> _cnfsfsRequesterPays,
            Just ("ClientToken" .= _cnfsfsClientToken),
            Just ("GatewayARN" .= _cnfsfsGatewayARN),
            Just ("Role" .= _cnfsfsRole),
            Just ("LocationARN" .= _cnfsfsLocationARN)
          ]
      )

instance ToPath CreateNFSFileShare where
  toPath = const "/"

instance ToQuery CreateNFSFileShare where
  toQuery = const mempty

-- | CreateNFSFileShareOutput
--
--
--
-- /See:/ 'createNFSFileShareResponse' smart constructor.
data CreateNFSFileShareResponse = CreateNFSFileShareResponse'
  { _cnfsfsrrsFileShareARN ::
      !(Maybe Text),
    _cnfsfsrrsResponseStatus ::
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

-- | Creates a value of 'CreateNFSFileShareResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnfsfsrrsFileShareARN' - The Amazon Resource Name (ARN) of the newly created file share.
--
-- * 'cnfsfsrrsResponseStatus' - -- | The response status code.
createNFSFileShareResponse ::
  -- | 'cnfsfsrrsResponseStatus'
  Int ->
  CreateNFSFileShareResponse
createNFSFileShareResponse pResponseStatus_ =
  CreateNFSFileShareResponse'
    { _cnfsfsrrsFileShareARN =
        Nothing,
      _cnfsfsrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the newly created file share.
cnfsfsrrsFileShareARN :: Lens' CreateNFSFileShareResponse (Maybe Text)
cnfsfsrrsFileShareARN = lens _cnfsfsrrsFileShareARN (\s a -> s {_cnfsfsrrsFileShareARN = a})

-- | -- | The response status code.
cnfsfsrrsResponseStatus :: Lens' CreateNFSFileShareResponse Int
cnfsfsrrsResponseStatus = lens _cnfsfsrrsResponseStatus (\s a -> s {_cnfsfsrrsResponseStatus = a})

instance NFData CreateNFSFileShareResponse
