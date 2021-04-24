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
-- Module      : Network.AWS.StorageGateway.CreateCachediSCSIVolume
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a cached volume on a specified cached volume gateway. This operation is only supported in the cached volume gateway type.
--
--
-- In the request, you must specify the gateway, size of the volume in bytes, the iSCSI target name, an IP address on which to expose the target, and a unique client token. In response, the gateway creates the volume and returns information about it. This information includes the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.
--
-- Optionally, you can provide the ARN for an existing volume as the @SourceVolumeARN@ for this cached volume, which creates an exact copy of the existing volume’s latest recovery point. The @VolumeSizeInBytes@ value must be equal to or larger than the size of the copied volume, in bytes.
module Network.AWS.StorageGateway.CreateCachediSCSIVolume
  ( -- * Creating a Request
    createCachediSCSIVolume,
    CreateCachediSCSIVolume,

    -- * Request Lenses
    ccscsivKMSEncrypted,
    ccscsivKMSKey,
    ccscsivSnapshotId,
    ccscsivTags,
    ccscsivSourceVolumeARN,
    ccscsivGatewayARN,
    ccscsivVolumeSizeInBytes,
    ccscsivTargetName,
    ccscsivNetworkInterfaceId,
    ccscsivClientToken,

    -- * Destructuring the Response
    createCachediSCSIVolumeResponse,
    CreateCachediSCSIVolumeResponse,

    -- * Response Lenses
    ccscsivrrsVolumeARN,
    ccscsivrrsTargetARN,
    ccscsivrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'createCachediSCSIVolume' smart constructor.
data CreateCachediSCSIVolume = CreateCachediSCSIVolume'
  { _ccscsivKMSEncrypted ::
      !(Maybe Bool),
    _ccscsivKMSKey ::
      !(Maybe Text),
    _ccscsivSnapshotId ::
      !(Maybe Text),
    _ccscsivTags ::
      !(Maybe [Tag]),
    _ccscsivSourceVolumeARN ::
      !(Maybe Text),
    _ccscsivGatewayARN ::
      !Text,
    _ccscsivVolumeSizeInBytes ::
      !Integer,
    _ccscsivTargetName ::
      !Text,
    _ccscsivNetworkInterfaceId ::
      !Text,
    _ccscsivClientToken ::
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

-- | Creates a value of 'CreateCachediSCSIVolume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccscsivKMSEncrypted' - Set to @true@ to use Amazon S3 server-side encryption with your own AWS KMS key, or @false@ to use a key managed by Amazon S3. Optional. Valid Values: @true@ | @false@
--
-- * 'ccscsivKMSKey' - The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can only be set when @KMSEncrypted@ is @true@ . Optional.
--
-- * 'ccscsivSnapshotId' - The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new cached volume. Specify this field if you want to create the iSCSI storage volume from a snapshot; otherwise, do not include this field. To list snapshots for your account use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html DescribeSnapshots> in the /Amazon Elastic Compute Cloud API Reference/ .
--
-- * 'ccscsivTags' - A list of up to 50 tags that you can assign to a cached volume. Each tag is a key-value pair.
--
-- * 'ccscsivSourceVolumeARN' - The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The @VolumeSizeInBytes@ value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
--
-- * 'ccscsivGatewayARN' - Undocumented member.
--
-- * 'ccscsivVolumeSizeInBytes' - The size of the volume in bytes.
--
-- * 'ccscsivTargetName' - The name of the iSCSI target used by an initiator to connect to a volume and used as a suffix for the target ARN. For example, specifying @TargetName@ as /myvolume/ results in the target ARN of @arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume@ . The target name must be unique across all volumes on a gateway. If you don't specify a value, Storage Gateway uses the value that was previously used for this volume as the new target name.
--
-- * 'ccscsivNetworkInterfaceId' - The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use 'DescribeGatewayInformation' to get a list of the network interfaces available on a gateway. Valid Values: A valid IP address.
--
-- * 'ccscsivClientToken' - A unique identifier that you use to retry a request. If you retry a request, use the same @ClientToken@ you specified in the initial request.
createCachediSCSIVolume ::
  -- | 'ccscsivGatewayARN'
  Text ->
  -- | 'ccscsivVolumeSizeInBytes'
  Integer ->
  -- | 'ccscsivTargetName'
  Text ->
  -- | 'ccscsivNetworkInterfaceId'
  Text ->
  -- | 'ccscsivClientToken'
  Text ->
  CreateCachediSCSIVolume
createCachediSCSIVolume
  pGatewayARN_
  pVolumeSizeInBytes_
  pTargetName_
  pNetworkInterfaceId_
  pClientToken_ =
    CreateCachediSCSIVolume'
      { _ccscsivKMSEncrypted =
          Nothing,
        _ccscsivKMSKey = Nothing,
        _ccscsivSnapshotId = Nothing,
        _ccscsivTags = Nothing,
        _ccscsivSourceVolumeARN = Nothing,
        _ccscsivGatewayARN = pGatewayARN_,
        _ccscsivVolumeSizeInBytes = pVolumeSizeInBytes_,
        _ccscsivTargetName = pTargetName_,
        _ccscsivNetworkInterfaceId = pNetworkInterfaceId_,
        _ccscsivClientToken = pClientToken_
      }

-- | Set to @true@ to use Amazon S3 server-side encryption with your own AWS KMS key, or @false@ to use a key managed by Amazon S3. Optional. Valid Values: @true@ | @false@
ccscsivKMSEncrypted :: Lens' CreateCachediSCSIVolume (Maybe Bool)
ccscsivKMSEncrypted = lens _ccscsivKMSEncrypted (\s a -> s {_ccscsivKMSEncrypted = a})

-- | The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can only be set when @KMSEncrypted@ is @true@ . Optional.
ccscsivKMSKey :: Lens' CreateCachediSCSIVolume (Maybe Text)
ccscsivKMSKey = lens _ccscsivKMSKey (\s a -> s {_ccscsivKMSKey = a})

-- | The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new cached volume. Specify this field if you want to create the iSCSI storage volume from a snapshot; otherwise, do not include this field. To list snapshots for your account use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html DescribeSnapshots> in the /Amazon Elastic Compute Cloud API Reference/ .
ccscsivSnapshotId :: Lens' CreateCachediSCSIVolume (Maybe Text)
ccscsivSnapshotId = lens _ccscsivSnapshotId (\s a -> s {_ccscsivSnapshotId = a})

-- | A list of up to 50 tags that you can assign to a cached volume. Each tag is a key-value pair.
ccscsivTags :: Lens' CreateCachediSCSIVolume [Tag]
ccscsivTags = lens _ccscsivTags (\s a -> s {_ccscsivTags = a}) . _Default . _Coerce

-- | The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The @VolumeSizeInBytes@ value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
ccscsivSourceVolumeARN :: Lens' CreateCachediSCSIVolume (Maybe Text)
ccscsivSourceVolumeARN = lens _ccscsivSourceVolumeARN (\s a -> s {_ccscsivSourceVolumeARN = a})

-- | Undocumented member.
ccscsivGatewayARN :: Lens' CreateCachediSCSIVolume Text
ccscsivGatewayARN = lens _ccscsivGatewayARN (\s a -> s {_ccscsivGatewayARN = a})

-- | The size of the volume in bytes.
ccscsivVolumeSizeInBytes :: Lens' CreateCachediSCSIVolume Integer
ccscsivVolumeSizeInBytes = lens _ccscsivVolumeSizeInBytes (\s a -> s {_ccscsivVolumeSizeInBytes = a})

-- | The name of the iSCSI target used by an initiator to connect to a volume and used as a suffix for the target ARN. For example, specifying @TargetName@ as /myvolume/ results in the target ARN of @arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume@ . The target name must be unique across all volumes on a gateway. If you don't specify a value, Storage Gateway uses the value that was previously used for this volume as the new target name.
ccscsivTargetName :: Lens' CreateCachediSCSIVolume Text
ccscsivTargetName = lens _ccscsivTargetName (\s a -> s {_ccscsivTargetName = a})

-- | The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use 'DescribeGatewayInformation' to get a list of the network interfaces available on a gateway. Valid Values: A valid IP address.
ccscsivNetworkInterfaceId :: Lens' CreateCachediSCSIVolume Text
ccscsivNetworkInterfaceId = lens _ccscsivNetworkInterfaceId (\s a -> s {_ccscsivNetworkInterfaceId = a})

-- | A unique identifier that you use to retry a request. If you retry a request, use the same @ClientToken@ you specified in the initial request.
ccscsivClientToken :: Lens' CreateCachediSCSIVolume Text
ccscsivClientToken = lens _ccscsivClientToken (\s a -> s {_ccscsivClientToken = a})

instance AWSRequest CreateCachediSCSIVolume where
  type
    Rs CreateCachediSCSIVolume =
      CreateCachediSCSIVolumeResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          CreateCachediSCSIVolumeResponse'
            <$> (x .?> "VolumeARN")
            <*> (x .?> "TargetARN")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateCachediSCSIVolume

instance NFData CreateCachediSCSIVolume

instance ToHeaders CreateCachediSCSIVolume where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.CreateCachediSCSIVolume" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateCachediSCSIVolume where
  toJSON CreateCachediSCSIVolume' {..} =
    object
      ( catMaybes
          [ ("KMSEncrypted" .=) <$> _ccscsivKMSEncrypted,
            ("KMSKey" .=) <$> _ccscsivKMSKey,
            ("SnapshotId" .=) <$> _ccscsivSnapshotId,
            ("Tags" .=) <$> _ccscsivTags,
            ("SourceVolumeARN" .=) <$> _ccscsivSourceVolumeARN,
            Just ("GatewayARN" .= _ccscsivGatewayARN),
            Just
              ("VolumeSizeInBytes" .= _ccscsivVolumeSizeInBytes),
            Just ("TargetName" .= _ccscsivTargetName),
            Just
              ("NetworkInterfaceId" .= _ccscsivNetworkInterfaceId),
            Just ("ClientToken" .= _ccscsivClientToken)
          ]
      )

instance ToPath CreateCachediSCSIVolume where
  toPath = const "/"

instance ToQuery CreateCachediSCSIVolume where
  toQuery = const mempty

-- | /See:/ 'createCachediSCSIVolumeResponse' smart constructor.
data CreateCachediSCSIVolumeResponse = CreateCachediSCSIVolumeResponse'
  { _ccscsivrrsVolumeARN ::
      !( Maybe
           Text
       ),
    _ccscsivrrsTargetARN ::
      !( Maybe
           Text
       ),
    _ccscsivrrsResponseStatus ::
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

-- | Creates a value of 'CreateCachediSCSIVolumeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccscsivrrsVolumeARN' - The Amazon Resource Name (ARN) of the configured volume.
--
-- * 'ccscsivrrsTargetARN' - The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that initiators can use to connect to the target.
--
-- * 'ccscsivrrsResponseStatus' - -- | The response status code.
createCachediSCSIVolumeResponse ::
  -- | 'ccscsivrrsResponseStatus'
  Int ->
  CreateCachediSCSIVolumeResponse
createCachediSCSIVolumeResponse pResponseStatus_ =
  CreateCachediSCSIVolumeResponse'
    { _ccscsivrrsVolumeARN =
        Nothing,
      _ccscsivrrsTargetARN = Nothing,
      _ccscsivrrsResponseStatus =
        pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the configured volume.
ccscsivrrsVolumeARN :: Lens' CreateCachediSCSIVolumeResponse (Maybe Text)
ccscsivrrsVolumeARN = lens _ccscsivrrsVolumeARN (\s a -> s {_ccscsivrrsVolumeARN = a})

-- | The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that initiators can use to connect to the target.
ccscsivrrsTargetARN :: Lens' CreateCachediSCSIVolumeResponse (Maybe Text)
ccscsivrrsTargetARN = lens _ccscsivrrsTargetARN (\s a -> s {_ccscsivrrsTargetARN = a})

-- | -- | The response status code.
ccscsivrrsResponseStatus :: Lens' CreateCachediSCSIVolumeResponse Int
ccscsivrrsResponseStatus = lens _ccscsivrrsResponseStatus (\s a -> s {_ccscsivrrsResponseStatus = a})

instance NFData CreateCachediSCSIVolumeResponse
