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
-- Module      : Network.AWS.StorageGateway.CreateStorediSCSIVolume
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a volume on a specified gateway. This operation is only supported in the stored volume gateway type.
--
--
-- The size of the volume to create is inferred from the disk size. You can choose to preserve existing data on the disk, create volume from an existing snapshot, or create an empty volume. If you choose to create an empty gateway volume, then any existing data on the disk is erased.
--
-- In the request, you must specify the gateway and the disk information on which you are creating the volume. In response, the gateway creates the volume and returns volume information such as the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.
module Network.AWS.StorageGateway.CreateStorediSCSIVolume
  ( -- * Creating a Request
    createStorediSCSIVolume,
    CreateStorediSCSIVolume,

    -- * Request Lenses
    csscsivKMSEncrypted,
    csscsivKMSKey,
    csscsivSnapshotId,
    csscsivTags,
    csscsivGatewayARN,
    csscsivDiskId,
    csscsivPreserveExistingData,
    csscsivTargetName,
    csscsivNetworkInterfaceId,

    -- * Destructuring the Response
    createStorediSCSIVolumeResponse,
    CreateStorediSCSIVolumeResponse,

    -- * Response Lenses
    csscsivrrsVolumeARN,
    csscsivrrsTargetARN,
    csscsivrrsVolumeSizeInBytes,
    csscsivrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing one or more of the following fields:
--
--
--     * 'CreateStorediSCSIVolumeInput$DiskId'
--
--     * 'CreateStorediSCSIVolumeInput$NetworkInterfaceId'
--
--     * 'CreateStorediSCSIVolumeInput$PreserveExistingData'
--
--     * 'CreateStorediSCSIVolumeInput$SnapshotId'
--
--     * 'CreateStorediSCSIVolumeInput$TargetName'
--
--
--
--
-- /See:/ 'createStorediSCSIVolume' smart constructor.
data CreateStorediSCSIVolume = CreateStorediSCSIVolume'
  { _csscsivKMSEncrypted ::
      !(Maybe Bool),
    _csscsivKMSKey ::
      !(Maybe Text),
    _csscsivSnapshotId ::
      !(Maybe Text),
    _csscsivTags ::
      !(Maybe [Tag]),
    _csscsivGatewayARN ::
      !Text,
    _csscsivDiskId :: !Text,
    _csscsivPreserveExistingData ::
      !Bool,
    _csscsivTargetName ::
      !Text,
    _csscsivNetworkInterfaceId ::
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

-- | Creates a value of 'CreateStorediSCSIVolume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csscsivKMSEncrypted' - Set to @true@ to use Amazon S3 server-side encryption with your own AWS KMS key, or @false@ to use a key managed by Amazon S3. Optional. Valid Values: @true@ | @false@
--
-- * 'csscsivKMSKey' - The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can only be set when @KMSEncrypted@ is @true@ . Optional.
--
-- * 'csscsivSnapshotId' - The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new stored volume. Specify this field if you want to create the iSCSI storage volume from a snapshot; otherwise, do not include this field. To list snapshots for your account use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html DescribeSnapshots> in the /Amazon Elastic Compute Cloud API Reference/ .
--
-- * 'csscsivTags' - A list of up to 50 tags that can be assigned to a stored volume. Each tag is a key-value pair.
--
-- * 'csscsivGatewayARN' - Undocumented member.
--
-- * 'csscsivDiskId' - The unique identifier for the gateway local disk that is configured as a stored volume. Use <https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html ListLocalDisks> to list disk IDs for a gateway.
--
-- * 'csscsivPreserveExistingData' - Set to true @true@ if you want to preserve the data on the local disk. Otherwise, set to @false@ to create an empty volume. Valid Values: @true@ | @false@
--
-- * 'csscsivTargetName' - The name of the iSCSI target used by an initiator to connect to a volume and used as a suffix for the target ARN. For example, specifying @TargetName@ as /myvolume/ results in the target ARN of @arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume@ . The target name must be unique across all volumes on a gateway. If you don't specify a value, Storage Gateway uses the value that was previously used for this volume as the new target name.
--
-- * 'csscsivNetworkInterfaceId' - The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use 'DescribeGatewayInformation' to get a list of the network interfaces available on a gateway. Valid Values: A valid IP address.
createStorediSCSIVolume ::
  -- | 'csscsivGatewayARN'
  Text ->
  -- | 'csscsivDiskId'
  Text ->
  -- | 'csscsivPreserveExistingData'
  Bool ->
  -- | 'csscsivTargetName'
  Text ->
  -- | 'csscsivNetworkInterfaceId'
  Text ->
  CreateStorediSCSIVolume
createStorediSCSIVolume
  pGatewayARN_
  pDiskId_
  pPreserveExistingData_
  pTargetName_
  pNetworkInterfaceId_ =
    CreateStorediSCSIVolume'
      { _csscsivKMSEncrypted =
          Nothing,
        _csscsivKMSKey = Nothing,
        _csscsivSnapshotId = Nothing,
        _csscsivTags = Nothing,
        _csscsivGatewayARN = pGatewayARN_,
        _csscsivDiskId = pDiskId_,
        _csscsivPreserveExistingData =
          pPreserveExistingData_,
        _csscsivTargetName = pTargetName_,
        _csscsivNetworkInterfaceId = pNetworkInterfaceId_
      }

-- | Set to @true@ to use Amazon S3 server-side encryption with your own AWS KMS key, or @false@ to use a key managed by Amazon S3. Optional. Valid Values: @true@ | @false@
csscsivKMSEncrypted :: Lens' CreateStorediSCSIVolume (Maybe Bool)
csscsivKMSEncrypted = lens _csscsivKMSEncrypted (\s a -> s {_csscsivKMSEncrypted = a})

-- | The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can only be set when @KMSEncrypted@ is @true@ . Optional.
csscsivKMSKey :: Lens' CreateStorediSCSIVolume (Maybe Text)
csscsivKMSKey = lens _csscsivKMSKey (\s a -> s {_csscsivKMSKey = a})

-- | The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new stored volume. Specify this field if you want to create the iSCSI storage volume from a snapshot; otherwise, do not include this field. To list snapshots for your account use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html DescribeSnapshots> in the /Amazon Elastic Compute Cloud API Reference/ .
csscsivSnapshotId :: Lens' CreateStorediSCSIVolume (Maybe Text)
csscsivSnapshotId = lens _csscsivSnapshotId (\s a -> s {_csscsivSnapshotId = a})

-- | A list of up to 50 tags that can be assigned to a stored volume. Each tag is a key-value pair.
csscsivTags :: Lens' CreateStorediSCSIVolume [Tag]
csscsivTags = lens _csscsivTags (\s a -> s {_csscsivTags = a}) . _Default . _Coerce

-- | Undocumented member.
csscsivGatewayARN :: Lens' CreateStorediSCSIVolume Text
csscsivGatewayARN = lens _csscsivGatewayARN (\s a -> s {_csscsivGatewayARN = a})

-- | The unique identifier for the gateway local disk that is configured as a stored volume. Use <https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html ListLocalDisks> to list disk IDs for a gateway.
csscsivDiskId :: Lens' CreateStorediSCSIVolume Text
csscsivDiskId = lens _csscsivDiskId (\s a -> s {_csscsivDiskId = a})

-- | Set to true @true@ if you want to preserve the data on the local disk. Otherwise, set to @false@ to create an empty volume. Valid Values: @true@ | @false@
csscsivPreserveExistingData :: Lens' CreateStorediSCSIVolume Bool
csscsivPreserveExistingData = lens _csscsivPreserveExistingData (\s a -> s {_csscsivPreserveExistingData = a})

-- | The name of the iSCSI target used by an initiator to connect to a volume and used as a suffix for the target ARN. For example, specifying @TargetName@ as /myvolume/ results in the target ARN of @arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume@ . The target name must be unique across all volumes on a gateway. If you don't specify a value, Storage Gateway uses the value that was previously used for this volume as the new target name.
csscsivTargetName :: Lens' CreateStorediSCSIVolume Text
csscsivTargetName = lens _csscsivTargetName (\s a -> s {_csscsivTargetName = a})

-- | The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use 'DescribeGatewayInformation' to get a list of the network interfaces available on a gateway. Valid Values: A valid IP address.
csscsivNetworkInterfaceId :: Lens' CreateStorediSCSIVolume Text
csscsivNetworkInterfaceId = lens _csscsivNetworkInterfaceId (\s a -> s {_csscsivNetworkInterfaceId = a})

instance AWSRequest CreateStorediSCSIVolume where
  type
    Rs CreateStorediSCSIVolume =
      CreateStorediSCSIVolumeResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          CreateStorediSCSIVolumeResponse'
            <$> (x .?> "VolumeARN")
            <*> (x .?> "TargetARN")
            <*> (x .?> "VolumeSizeInBytes")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateStorediSCSIVolume

instance NFData CreateStorediSCSIVolume

instance ToHeaders CreateStorediSCSIVolume where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.CreateStorediSCSIVolume" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateStorediSCSIVolume where
  toJSON CreateStorediSCSIVolume' {..} =
    object
      ( catMaybes
          [ ("KMSEncrypted" .=) <$> _csscsivKMSEncrypted,
            ("KMSKey" .=) <$> _csscsivKMSKey,
            ("SnapshotId" .=) <$> _csscsivSnapshotId,
            ("Tags" .=) <$> _csscsivTags,
            Just ("GatewayARN" .= _csscsivGatewayARN),
            Just ("DiskId" .= _csscsivDiskId),
            Just
              ( "PreserveExistingData"
                  .= _csscsivPreserveExistingData
              ),
            Just ("TargetName" .= _csscsivTargetName),
            Just
              ( "NetworkInterfaceId"
                  .= _csscsivNetworkInterfaceId
              )
          ]
      )

instance ToPath CreateStorediSCSIVolume where
  toPath = const "/"

instance ToQuery CreateStorediSCSIVolume where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--
-- /See:/ 'createStorediSCSIVolumeResponse' smart constructor.
data CreateStorediSCSIVolumeResponse = CreateStorediSCSIVolumeResponse'
  { _csscsivrrsVolumeARN ::
      !( Maybe
           Text
       ),
    _csscsivrrsTargetARN ::
      !( Maybe
           Text
       ),
    _csscsivrrsVolumeSizeInBytes ::
      !( Maybe
           Integer
       ),
    _csscsivrrsResponseStatus ::
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

-- | Creates a value of 'CreateStorediSCSIVolumeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csscsivrrsVolumeARN' - The Amazon Resource Name (ARN) of the configured volume.
--
-- * 'csscsivrrsTargetARN' - The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that initiators can use to connect to the target.
--
-- * 'csscsivrrsVolumeSizeInBytes' - The size of the volume in bytes.
--
-- * 'csscsivrrsResponseStatus' - -- | The response status code.
createStorediSCSIVolumeResponse ::
  -- | 'csscsivrrsResponseStatus'
  Int ->
  CreateStorediSCSIVolumeResponse
createStorediSCSIVolumeResponse pResponseStatus_ =
  CreateStorediSCSIVolumeResponse'
    { _csscsivrrsVolumeARN =
        Nothing,
      _csscsivrrsTargetARN = Nothing,
      _csscsivrrsVolumeSizeInBytes = Nothing,
      _csscsivrrsResponseStatus =
        pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the configured volume.
csscsivrrsVolumeARN :: Lens' CreateStorediSCSIVolumeResponse (Maybe Text)
csscsivrrsVolumeARN = lens _csscsivrrsVolumeARN (\s a -> s {_csscsivrrsVolumeARN = a})

-- | The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that initiators can use to connect to the target.
csscsivrrsTargetARN :: Lens' CreateStorediSCSIVolumeResponse (Maybe Text)
csscsivrrsTargetARN = lens _csscsivrrsTargetARN (\s a -> s {_csscsivrrsTargetARN = a})

-- | The size of the volume in bytes.
csscsivrrsVolumeSizeInBytes :: Lens' CreateStorediSCSIVolumeResponse (Maybe Integer)
csscsivrrsVolumeSizeInBytes = lens _csscsivrrsVolumeSizeInBytes (\s a -> s {_csscsivrrsVolumeSizeInBytes = a})

-- | -- | The response status code.
csscsivrrsResponseStatus :: Lens' CreateStorediSCSIVolumeResponse Int
csscsivrrsResponseStatus = lens _csscsivrrsResponseStatus (\s a -> s {_csscsivrrsResponseStatus = a})

instance NFData CreateStorediSCSIVolumeResponse
