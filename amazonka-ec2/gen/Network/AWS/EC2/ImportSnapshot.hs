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
-- Module      : Network.AWS.EC2.ImportSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports a disk into an EBS snapshot.
module Network.AWS.EC2.ImportSnapshot
  ( -- * Creating a Request
    importSnapshot,
    ImportSnapshot,

    -- * Request Lenses
    isTagSpecifications,
    isDryRun,
    isEncrypted,
    isRoleName,
    isKMSKeyId,
    isClientData,
    isDescription,
    isClientToken,
    isDiskContainer,

    -- * Destructuring the Response
    importSnapshotResponse,
    ImportSnapshotResponse,

    -- * Response Lenses
    isrrsSnapshotTaskDetail,
    isrrsImportTaskId,
    isrrsTags,
    isrrsDescription,
    isrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'importSnapshot' smart constructor.
data ImportSnapshot = ImportSnapshot'
  { _isTagSpecifications ::
      !(Maybe [TagSpecification]),
    _isDryRun :: !(Maybe Bool),
    _isEncrypted :: !(Maybe Bool),
    _isRoleName :: !(Maybe Text),
    _isKMSKeyId :: !(Maybe Text),
    _isClientData :: !(Maybe ClientData),
    _isDescription :: !(Maybe Text),
    _isClientToken :: !(Maybe Text),
    _isDiskContainer ::
      !(Maybe SnapshotDiskContainer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isTagSpecifications' - The tags to apply to the import snapshot task during creation.
--
-- * 'isDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'isEncrypted' - Specifies whether the destination snapshot of the imported image should be encrypted. The default CMK for EBS is used unless you specify a non-default AWS Key Management Service (AWS KMS) CMK using @KmsKeyId@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS Encryption> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'isRoleName' - The name of the role to use when not using the default role, 'vmimport'.
--
-- * 'isKMSKeyId' - An identifier for the symmetric AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a @KmsKeyId@ is specified, the @Encrypted@ flag must also be set.  The CMK identifier may be provided in any of the following formats:      * Key ID     * Key alias. The alias ARN contains the @arn:aws:kms@ namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the @alias@ namespace, and then the CMK alias. For example, arn:aws:kms:/us-east-1/ :/012345678910/ :alias//ExampleAlias/ .     * ARN using key ID. The ID ARN contains the @arn:aws:kms@ namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the @key@ namespace, and then the CMK ID. For example, arn:aws:kms:/us-east-1/ :/012345678910/ :key//abcd1234-a123-456a-a12b-a123b4cd56ef/ .     * ARN using key alias. The alias ARN contains the @arn:aws:kms@ namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the @alias@ namespace, and then the CMK alias. For example, arn:aws:kms:/us-east-1/ :/012345678910/ :alias//ExampleAlias/ .  AWS parses @KmsKeyId@ asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. This action will eventually report failure.  The specified CMK must exist in the Region that the snapshot is being copied to. Amazon EBS does not support asymmetric CMKs.
--
-- * 'isClientData' - The client-specific data.
--
-- * 'isDescription' - The description string for the import snapshot task.
--
-- * 'isClientToken' - Token to enable idempotency for VM import requests.
--
-- * 'isDiskContainer' - Information about the disk container.
importSnapshot ::
  ImportSnapshot
importSnapshot =
  ImportSnapshot'
    { _isTagSpecifications = Nothing,
      _isDryRun = Nothing,
      _isEncrypted = Nothing,
      _isRoleName = Nothing,
      _isKMSKeyId = Nothing,
      _isClientData = Nothing,
      _isDescription = Nothing,
      _isClientToken = Nothing,
      _isDiskContainer = Nothing
    }

-- | The tags to apply to the import snapshot task during creation.
isTagSpecifications :: Lens' ImportSnapshot [TagSpecification]
isTagSpecifications = lens _isTagSpecifications (\s a -> s {_isTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
isDryRun :: Lens' ImportSnapshot (Maybe Bool)
isDryRun = lens _isDryRun (\s a -> s {_isDryRun = a})

-- | Specifies whether the destination snapshot of the imported image should be encrypted. The default CMK for EBS is used unless you specify a non-default AWS Key Management Service (AWS KMS) CMK using @KmsKeyId@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS Encryption> in the /Amazon Elastic Compute Cloud User Guide/ .
isEncrypted :: Lens' ImportSnapshot (Maybe Bool)
isEncrypted = lens _isEncrypted (\s a -> s {_isEncrypted = a})

-- | The name of the role to use when not using the default role, 'vmimport'.
isRoleName :: Lens' ImportSnapshot (Maybe Text)
isRoleName = lens _isRoleName (\s a -> s {_isRoleName = a})

-- | An identifier for the symmetric AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a @KmsKeyId@ is specified, the @Encrypted@ flag must also be set.  The CMK identifier may be provided in any of the following formats:      * Key ID     * Key alias. The alias ARN contains the @arn:aws:kms@ namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the @alias@ namespace, and then the CMK alias. For example, arn:aws:kms:/us-east-1/ :/012345678910/ :alias//ExampleAlias/ .     * ARN using key ID. The ID ARN contains the @arn:aws:kms@ namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the @key@ namespace, and then the CMK ID. For example, arn:aws:kms:/us-east-1/ :/012345678910/ :key//abcd1234-a123-456a-a12b-a123b4cd56ef/ .     * ARN using key alias. The alias ARN contains the @arn:aws:kms@ namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the @alias@ namespace, and then the CMK alias. For example, arn:aws:kms:/us-east-1/ :/012345678910/ :alias//ExampleAlias/ .  AWS parses @KmsKeyId@ asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. This action will eventually report failure.  The specified CMK must exist in the Region that the snapshot is being copied to. Amazon EBS does not support asymmetric CMKs.
isKMSKeyId :: Lens' ImportSnapshot (Maybe Text)
isKMSKeyId = lens _isKMSKeyId (\s a -> s {_isKMSKeyId = a})

-- | The client-specific data.
isClientData :: Lens' ImportSnapshot (Maybe ClientData)
isClientData = lens _isClientData (\s a -> s {_isClientData = a})

-- | The description string for the import snapshot task.
isDescription :: Lens' ImportSnapshot (Maybe Text)
isDescription = lens _isDescription (\s a -> s {_isDescription = a})

-- | Token to enable idempotency for VM import requests.
isClientToken :: Lens' ImportSnapshot (Maybe Text)
isClientToken = lens _isClientToken (\s a -> s {_isClientToken = a})

-- | Information about the disk container.
isDiskContainer :: Lens' ImportSnapshot (Maybe SnapshotDiskContainer)
isDiskContainer = lens _isDiskContainer (\s a -> s {_isDiskContainer = a})

instance AWSRequest ImportSnapshot where
  type Rs ImportSnapshot = ImportSnapshotResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ImportSnapshotResponse'
            <$> (x .@? "snapshotTaskDetail")
            <*> (x .@? "importTaskId")
            <*> ( x .@? "tagSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "description")
            <*> (pure (fromEnum s))
      )

instance Hashable ImportSnapshot

instance NFData ImportSnapshot

instance ToHeaders ImportSnapshot where
  toHeaders = const mempty

instance ToPath ImportSnapshot where
  toPath = const "/"

instance ToQuery ImportSnapshot where
  toQuery ImportSnapshot' {..} =
    mconcat
      [ "Action" =: ("ImportSnapshot" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _isTagSpecifications
          ),
        "DryRun" =: _isDryRun,
        "Encrypted" =: _isEncrypted,
        "RoleName" =: _isRoleName,
        "KmsKeyId" =: _isKMSKeyId,
        "ClientData" =: _isClientData,
        "Description" =: _isDescription,
        "ClientToken" =: _isClientToken,
        "DiskContainer" =: _isDiskContainer
      ]

-- | /See:/ 'importSnapshotResponse' smart constructor.
data ImportSnapshotResponse = ImportSnapshotResponse'
  { _isrrsSnapshotTaskDetail ::
      !( Maybe
           SnapshotTaskDetail
       ),
    _isrrsImportTaskId ::
      !(Maybe Text),
    _isrrsTags ::
      !(Maybe [Tag]),
    _isrrsDescription ::
      !(Maybe Text),
    _isrrsResponseStatus ::
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

-- | Creates a value of 'ImportSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isrrsSnapshotTaskDetail' - Information about the import snapshot task.
--
-- * 'isrrsImportTaskId' - The ID of the import snapshot task.
--
-- * 'isrrsTags' - Any tags assigned to the import snapshot task.
--
-- * 'isrrsDescription' - A description of the import snapshot task.
--
-- * 'isrrsResponseStatus' - -- | The response status code.
importSnapshotResponse ::
  -- | 'isrrsResponseStatus'
  Int ->
  ImportSnapshotResponse
importSnapshotResponse pResponseStatus_ =
  ImportSnapshotResponse'
    { _isrrsSnapshotTaskDetail =
        Nothing,
      _isrrsImportTaskId = Nothing,
      _isrrsTags = Nothing,
      _isrrsDescription = Nothing,
      _isrrsResponseStatus = pResponseStatus_
    }

-- | Information about the import snapshot task.
isrrsSnapshotTaskDetail :: Lens' ImportSnapshotResponse (Maybe SnapshotTaskDetail)
isrrsSnapshotTaskDetail = lens _isrrsSnapshotTaskDetail (\s a -> s {_isrrsSnapshotTaskDetail = a})

-- | The ID of the import snapshot task.
isrrsImportTaskId :: Lens' ImportSnapshotResponse (Maybe Text)
isrrsImportTaskId = lens _isrrsImportTaskId (\s a -> s {_isrrsImportTaskId = a})

-- | Any tags assigned to the import snapshot task.
isrrsTags :: Lens' ImportSnapshotResponse [Tag]
isrrsTags = lens _isrrsTags (\s a -> s {_isrrsTags = a}) . _Default . _Coerce

-- | A description of the import snapshot task.
isrrsDescription :: Lens' ImportSnapshotResponse (Maybe Text)
isrrsDescription = lens _isrrsDescription (\s a -> s {_isrrsDescription = a})

-- | -- | The response status code.
isrrsResponseStatus :: Lens' ImportSnapshotResponse Int
isrrsResponseStatus = lens _isrrsResponseStatus (\s a -> s {_isrrsResponseStatus = a})

instance NFData ImportSnapshotResponse
