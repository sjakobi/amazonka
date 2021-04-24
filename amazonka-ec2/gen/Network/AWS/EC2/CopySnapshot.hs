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
-- Module      : Network.AWS.EC2.CopySnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3. You can copy a snapshot within the same Region, from one Region to another, or from a Region to an Outpost. You can't copy a snapshot from an Outpost to a Region, from one Outpost to another, or within the same Outpost.
--
--
-- You can use the snapshot to create EBS volumes or Amazon Machine Images (AMIs).
--
-- When copying snapshots to a Region, copies of encrypted EBS snapshots remain encrypted. Copies of unencrypted snapshots remain unencrypted, unless you enable encryption for the snapshot copy operation. By default, encrypted snapshot copies use the default AWS Key Management Service (AWS KMS) customer master key (CMK); however, you can specify a different CMK. To copy an encrypted snapshot that has been shared from another account, you must have permissions for the CMK used to encrypt the snapshot.
--
-- Snapshots copied to an Outpost are encrypted by default using the default encryption key for the Region, or a different key that you specify in the request using __KmsKeyId__ . Outposts do not support unencrypted snapshots. For more information, <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami Amazon EBS local snapshots on Outposts> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- Snapshots created by copying another snapshot have an arbitrary volume ID that should not be used for any purpose.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html Copying an Amazon EBS snapshot> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.CopySnapshot
  ( -- * Creating a Request
    copySnapshot,
    CopySnapshot,

    -- * Request Lenses
    csTagSpecifications,
    csDestinationRegion,
    csDryRun,
    csEncrypted,
    csKMSKeyId,
    csDestinationOutpostARN,
    csPresignedURL,
    csDescription,
    csSourceRegion,
    csSourceSnapshotId,

    -- * Destructuring the Response
    copySnapshotResponse,
    CopySnapshotResponse,

    -- * Response Lenses
    csrrsSnapshotId,
    csrrsTags,
    csrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'copySnapshot' smart constructor.
data CopySnapshot = CopySnapshot'
  { _csTagSpecifications ::
      !(Maybe [TagSpecification]),
    _csDestinationRegion :: !(Maybe Text),
    _csDryRun :: !(Maybe Bool),
    _csEncrypted :: !(Maybe Bool),
    _csKMSKeyId :: !(Maybe Text),
    _csDestinationOutpostARN :: !(Maybe Text),
    _csPresignedURL :: !(Maybe Text),
    _csDescription :: !(Maybe Text),
    _csSourceRegion :: !Text,
    _csSourceSnapshotId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopySnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csTagSpecifications' - The tags to apply to the new snapshot.
--
-- * 'csDestinationRegion' - The destination Region to use in the @PresignedUrl@ parameter of a snapshot copy operation. This parameter is only valid for specifying the destination Region in a @PresignedUrl@ parameter, where it is required. The snapshot copy is sent to the regional endpoint that you sent the HTTP request to (for example, @ec2.us-east-1.amazonaws.com@ ). With the AWS CLI, this is specified using the @--region@ parameter or the default Region in your AWS configuration file.
--
-- * 'csDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'csEncrypted' - To encrypt a copy of an unencrypted snapshot if encryption by default is not enabled, enable encryption using this parameter. Otherwise, omit this parameter. Encrypted snapshots are encrypted, even if you omit this parameter and encryption by default is not enabled. You cannot set this parameter to false. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS encryption> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'csKMSKeyId' - The identifier of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for Amazon EBS encryption. If this parameter is not specified, your AWS managed CMK for EBS is used. If @KmsKeyId@ is specified, the encrypted state must be @true@ . You can specify the CMK using any of the following:     * Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.     * Key alias. For example, alias/ExampleAlias.     * Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.     * Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias. AWS authenticates the CMK asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails.
--
-- * 'csDestinationOutpostARN' - The Amazon Resource Name (ARN) of the Outpost to which to copy the snapshot. Only specify this parameter when copying a snapshot from an AWS Region to an Outpost. The snapshot must be in the Region for the destination Outpost. You cannot copy a snapshot from an Outpost to a Region, from one Outpost to another, or within the same Outpost. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-snapshots Copying snapshots from an AWS Region to an Outpost> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'csPresignedURL' - When you copy an encrypted source snapshot using the Amazon EC2 Query API, you must supply a pre-signed URL. This parameter is optional for unencrypted snapshots. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html Query requests> . The @PresignedUrl@ should use the snapshot source endpoint, the @CopySnapshot@ action, and include the @SourceRegion@ , @SourceSnapshotId@ , and @DestinationRegion@ parameters. The @PresignedUrl@ must be signed using AWS Signature Version 4. Because EBS snapshots are stored in Amazon S3, the signing algorithm for this parameter uses the same logic that is described in <https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html Authenticating Requests: Using Query Parameters (AWS Signature Version 4)> in the /Amazon Simple Storage Service API Reference/ . An invalid or improperly signed @PresignedUrl@ will cause the copy operation to fail asynchronously, and the snapshot will move to an @error@ state.
--
-- * 'csDescription' - A description for the EBS snapshot.
--
-- * 'csSourceRegion' - The ID of the Region that contains the snapshot to be copied.
--
-- * 'csSourceSnapshotId' - The ID of the EBS snapshot to copy.
copySnapshot ::
  -- | 'csSourceRegion'
  Text ->
  -- | 'csSourceSnapshotId'
  Text ->
  CopySnapshot
copySnapshot pSourceRegion_ pSourceSnapshotId_ =
  CopySnapshot'
    { _csTagSpecifications = Nothing,
      _csDestinationRegion = Nothing,
      _csDryRun = Nothing,
      _csEncrypted = Nothing,
      _csKMSKeyId = Nothing,
      _csDestinationOutpostARN = Nothing,
      _csPresignedURL = Nothing,
      _csDescription = Nothing,
      _csSourceRegion = pSourceRegion_,
      _csSourceSnapshotId = pSourceSnapshotId_
    }

-- | The tags to apply to the new snapshot.
csTagSpecifications :: Lens' CopySnapshot [TagSpecification]
csTagSpecifications = lens _csTagSpecifications (\s a -> s {_csTagSpecifications = a}) . _Default . _Coerce

-- | The destination Region to use in the @PresignedUrl@ parameter of a snapshot copy operation. This parameter is only valid for specifying the destination Region in a @PresignedUrl@ parameter, where it is required. The snapshot copy is sent to the regional endpoint that you sent the HTTP request to (for example, @ec2.us-east-1.amazonaws.com@ ). With the AWS CLI, this is specified using the @--region@ parameter or the default Region in your AWS configuration file.
csDestinationRegion :: Lens' CopySnapshot (Maybe Text)
csDestinationRegion = lens _csDestinationRegion (\s a -> s {_csDestinationRegion = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
csDryRun :: Lens' CopySnapshot (Maybe Bool)
csDryRun = lens _csDryRun (\s a -> s {_csDryRun = a})

-- | To encrypt a copy of an unencrypted snapshot if encryption by default is not enabled, enable encryption using this parameter. Otherwise, omit this parameter. Encrypted snapshots are encrypted, even if you omit this parameter and encryption by default is not enabled. You cannot set this parameter to false. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS encryption> in the /Amazon Elastic Compute Cloud User Guide/ .
csEncrypted :: Lens' CopySnapshot (Maybe Bool)
csEncrypted = lens _csEncrypted (\s a -> s {_csEncrypted = a})

-- | The identifier of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for Amazon EBS encryption. If this parameter is not specified, your AWS managed CMK for EBS is used. If @KmsKeyId@ is specified, the encrypted state must be @true@ . You can specify the CMK using any of the following:     * Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.     * Key alias. For example, alias/ExampleAlias.     * Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.     * Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias. AWS authenticates the CMK asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails.
csKMSKeyId :: Lens' CopySnapshot (Maybe Text)
csKMSKeyId = lens _csKMSKeyId (\s a -> s {_csKMSKeyId = a})

-- | The Amazon Resource Name (ARN) of the Outpost to which to copy the snapshot. Only specify this parameter when copying a snapshot from an AWS Region to an Outpost. The snapshot must be in the Region for the destination Outpost. You cannot copy a snapshot from an Outpost to a Region, from one Outpost to another, or within the same Outpost. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-snapshots Copying snapshots from an AWS Region to an Outpost> in the /Amazon Elastic Compute Cloud User Guide/ .
csDestinationOutpostARN :: Lens' CopySnapshot (Maybe Text)
csDestinationOutpostARN = lens _csDestinationOutpostARN (\s a -> s {_csDestinationOutpostARN = a})

-- | When you copy an encrypted source snapshot using the Amazon EC2 Query API, you must supply a pre-signed URL. This parameter is optional for unencrypted snapshots. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html Query requests> . The @PresignedUrl@ should use the snapshot source endpoint, the @CopySnapshot@ action, and include the @SourceRegion@ , @SourceSnapshotId@ , and @DestinationRegion@ parameters. The @PresignedUrl@ must be signed using AWS Signature Version 4. Because EBS snapshots are stored in Amazon S3, the signing algorithm for this parameter uses the same logic that is described in <https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html Authenticating Requests: Using Query Parameters (AWS Signature Version 4)> in the /Amazon Simple Storage Service API Reference/ . An invalid or improperly signed @PresignedUrl@ will cause the copy operation to fail asynchronously, and the snapshot will move to an @error@ state.
csPresignedURL :: Lens' CopySnapshot (Maybe Text)
csPresignedURL = lens _csPresignedURL (\s a -> s {_csPresignedURL = a})

-- | A description for the EBS snapshot.
csDescription :: Lens' CopySnapshot (Maybe Text)
csDescription = lens _csDescription (\s a -> s {_csDescription = a})

-- | The ID of the Region that contains the snapshot to be copied.
csSourceRegion :: Lens' CopySnapshot Text
csSourceRegion = lens _csSourceRegion (\s a -> s {_csSourceRegion = a})

-- | The ID of the EBS snapshot to copy.
csSourceSnapshotId :: Lens' CopySnapshot Text
csSourceSnapshotId = lens _csSourceSnapshotId (\s a -> s {_csSourceSnapshotId = a})

instance AWSRequest CopySnapshot where
  type Rs CopySnapshot = CopySnapshotResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CopySnapshotResponse'
            <$> (x .@? "snapshotId")
            <*> ( x .@? "tagSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable CopySnapshot

instance NFData CopySnapshot

instance ToHeaders CopySnapshot where
  toHeaders = const mempty

instance ToPath CopySnapshot where
  toPath = const "/"

instance ToQuery CopySnapshot where
  toQuery CopySnapshot' {..} =
    mconcat
      [ "Action" =: ("CopySnapshot" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _csTagSpecifications
          ),
        "DestinationRegion" =: _csDestinationRegion,
        "DryRun" =: _csDryRun,
        "Encrypted" =: _csEncrypted,
        "KmsKeyId" =: _csKMSKeyId,
        "DestinationOutpostArn" =: _csDestinationOutpostARN,
        "PresignedUrl" =: _csPresignedURL,
        "Description" =: _csDescription,
        "SourceRegion" =: _csSourceRegion,
        "SourceSnapshotId" =: _csSourceSnapshotId
      ]

-- | /See:/ 'copySnapshotResponse' smart constructor.
data CopySnapshotResponse = CopySnapshotResponse'
  { _csrrsSnapshotId ::
      !(Maybe Text),
    _csrrsTags :: !(Maybe [Tag]),
    _csrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopySnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsSnapshotId' - The ID of the new snapshot.
--
-- * 'csrrsTags' - Any tags applied to the new snapshot.
--
-- * 'csrrsResponseStatus' - -- | The response status code.
copySnapshotResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CopySnapshotResponse
copySnapshotResponse pResponseStatus_ =
  CopySnapshotResponse'
    { _csrrsSnapshotId = Nothing,
      _csrrsTags = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the new snapshot.
csrrsSnapshotId :: Lens' CopySnapshotResponse (Maybe Text)
csrrsSnapshotId = lens _csrrsSnapshotId (\s a -> s {_csrrsSnapshotId = a})

-- | Any tags applied to the new snapshot.
csrrsTags :: Lens' CopySnapshotResponse [Tag]
csrrsTags = lens _csrrsTags (\s a -> s {_csrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CopySnapshotResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CopySnapshotResponse
