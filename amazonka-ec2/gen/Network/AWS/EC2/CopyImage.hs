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
-- Module      : Network.AWS.EC2.CopyImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates the copy of an AMI. You can copy an AMI from one Region to another, or from a Region to an AWS Outpost. You can't copy an AMI from an Outpost to a Region, from one Outpost to another, or within the same Outpost.
--
--
-- To copy an AMI from one Region to another, specify the source Region using the __SourceRegion__ parameter, and specify the destination Region using its endpoint. Copies of encrypted backing snapshots for the AMI are encrypted. Copies of unencrypted backing snapshots remain unencrypted, unless you set @Encrypted@ during the copy operation. You cannot create an unencrypted copy of an encrypted backing snapshot.
--
-- To copy an AMI from a Region to an Outpost, specify the source Region using the __SourceRegion__ parameter, and specify the ARN of the destination Outpost using __DestinationOutpostArn__ . Backing snapshots copied to an Outpost are encrypted by default using the default encryption key for the Region, or a different key that you specify in the request using __KmsKeyId__ . Outposts do not support unencrypted snapshots. For more information, <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami Amazon EBS local snapshots on Outposts> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
--
-- For more information about the prerequisites and limits when copying an AMI, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html Copying an AMI> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.CopyImage
  ( -- * Creating a Request
    copyImage,
    CopyImage,

    -- * Request Lenses
    cDryRun,
    cEncrypted,
    cKMSKeyId,
    cDestinationOutpostARN,
    cDescription,
    cClientToken,
    cName,
    cSourceImageId,
    cSourceRegion,

    -- * Destructuring the Response
    copyImageResponse,
    CopyImageResponse,

    -- * Response Lenses
    cirrsImageId,
    cirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for CopyImage.
--
--
--
-- /See:/ 'copyImage' smart constructor.
data CopyImage = CopyImage'
  { _cDryRun ::
      !(Maybe Bool),
    _cEncrypted :: !(Maybe Bool),
    _cKMSKeyId :: !(Maybe Text),
    _cDestinationOutpostARN :: !(Maybe Text),
    _cDescription :: !(Maybe Text),
    _cClientToken :: !(Maybe Text),
    _cName :: !Text,
    _cSourceImageId :: !Text,
    _cSourceRegion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopyImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cEncrypted' - Specifies whether the destination snapshots of the copied image should be encrypted. You can encrypt a copy of an unencrypted snapshot, but you cannot create an unencrypted copy of an encrypted snapshot. The default CMK for EBS is used unless you specify a non-default AWS Key Management Service (AWS KMS) CMK using @KmsKeyId@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS Encryption> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'cKMSKeyId' - The identifier of the symmetric AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating encrypted volumes. If this parameter is not specified, your AWS managed CMK for EBS is used. If you specify a CMK, you must also set the encrypted state to @true@ . You can specify a CMK using any of the following:     * Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.     * Key alias. For example, alias/ExampleAlias.     * Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.     * Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias. AWS authenticates the CMK asynchronously. Therefore, if you specify an identifier that is not valid, the action can appear to complete, but eventually fails. The specified CMK must exist in the destination Region. Amazon EBS does not support asymmetric CMKs.
--
-- * 'cDestinationOutpostARN' - The Amazon Resource Name (ARN) of the Outpost to which to copy the AMI. Only specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost. You cannot copy an AMI from an Outpost to a Region, from one Outpost to another, or within the same Outpost. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-amis Copying AMIs from an AWS Region to an Outpost> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'cDescription' - A description for the new AMI in the destination Region.
--
-- * 'cClientToken' - Unique, case-sensitive identifier you provide to ensure idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring idempotency> in the /Amazon EC2 API Reference/ .
--
-- * 'cName' - The name of the new AMI in the destination Region.
--
-- * 'cSourceImageId' - The ID of the AMI to copy.
--
-- * 'cSourceRegion' - The name of the Region that contains the AMI to copy.
copyImage ::
  -- | 'cName'
  Text ->
  -- | 'cSourceImageId'
  Text ->
  -- | 'cSourceRegion'
  Text ->
  CopyImage
copyImage pName_ pSourceImageId_ pSourceRegion_ =
  CopyImage'
    { _cDryRun = Nothing,
      _cEncrypted = Nothing,
      _cKMSKeyId = Nothing,
      _cDestinationOutpostARN = Nothing,
      _cDescription = Nothing,
      _cClientToken = Nothing,
      _cName = pName_,
      _cSourceImageId = pSourceImageId_,
      _cSourceRegion = pSourceRegion_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cDryRun :: Lens' CopyImage (Maybe Bool)
cDryRun = lens _cDryRun (\s a -> s {_cDryRun = a})

-- | Specifies whether the destination snapshots of the copied image should be encrypted. You can encrypt a copy of an unencrypted snapshot, but you cannot create an unencrypted copy of an encrypted snapshot. The default CMK for EBS is used unless you specify a non-default AWS Key Management Service (AWS KMS) CMK using @KmsKeyId@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS Encryption> in the /Amazon Elastic Compute Cloud User Guide/ .
cEncrypted :: Lens' CopyImage (Maybe Bool)
cEncrypted = lens _cEncrypted (\s a -> s {_cEncrypted = a})

-- | The identifier of the symmetric AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating encrypted volumes. If this parameter is not specified, your AWS managed CMK for EBS is used. If you specify a CMK, you must also set the encrypted state to @true@ . You can specify a CMK using any of the following:     * Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.     * Key alias. For example, alias/ExampleAlias.     * Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.     * Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias. AWS authenticates the CMK asynchronously. Therefore, if you specify an identifier that is not valid, the action can appear to complete, but eventually fails. The specified CMK must exist in the destination Region. Amazon EBS does not support asymmetric CMKs.
cKMSKeyId :: Lens' CopyImage (Maybe Text)
cKMSKeyId = lens _cKMSKeyId (\s a -> s {_cKMSKeyId = a})

-- | The Amazon Resource Name (ARN) of the Outpost to which to copy the AMI. Only specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost. You cannot copy an AMI from an Outpost to a Region, from one Outpost to another, or within the same Outpost. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-amis Copying AMIs from an AWS Region to an Outpost> in the /Amazon Elastic Compute Cloud User Guide/ .
cDestinationOutpostARN :: Lens' CopyImage (Maybe Text)
cDestinationOutpostARN = lens _cDestinationOutpostARN (\s a -> s {_cDestinationOutpostARN = a})

-- | A description for the new AMI in the destination Region.
cDescription :: Lens' CopyImage (Maybe Text)
cDescription = lens _cDescription (\s a -> s {_cDescription = a})

-- | Unique, case-sensitive identifier you provide to ensure idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring idempotency> in the /Amazon EC2 API Reference/ .
cClientToken :: Lens' CopyImage (Maybe Text)
cClientToken = lens _cClientToken (\s a -> s {_cClientToken = a})

-- | The name of the new AMI in the destination Region.
cName :: Lens' CopyImage Text
cName = lens _cName (\s a -> s {_cName = a})

-- | The ID of the AMI to copy.
cSourceImageId :: Lens' CopyImage Text
cSourceImageId = lens _cSourceImageId (\s a -> s {_cSourceImageId = a})

-- | The name of the Region that contains the AMI to copy.
cSourceRegion :: Lens' CopyImage Text
cSourceRegion = lens _cSourceRegion (\s a -> s {_cSourceRegion = a})

instance AWSRequest CopyImage where
  type Rs CopyImage = CopyImageResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CopyImageResponse'
            <$> (x .@? "imageId") <*> (pure (fromEnum s))
      )

instance Hashable CopyImage

instance NFData CopyImage

instance ToHeaders CopyImage where
  toHeaders = const mempty

instance ToPath CopyImage where
  toPath = const "/"

instance ToQuery CopyImage where
  toQuery CopyImage' {..} =
    mconcat
      [ "Action" =: ("CopyImage" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _cDryRun,
        "Encrypted" =: _cEncrypted,
        "KmsKeyId" =: _cKMSKeyId,
        "DestinationOutpostArn" =: _cDestinationOutpostARN,
        "Description" =: _cDescription,
        "ClientToken" =: _cClientToken,
        "Name" =: _cName,
        "SourceImageId" =: _cSourceImageId,
        "SourceRegion" =: _cSourceRegion
      ]

-- | Contains the output of CopyImage.
--
--
--
-- /See:/ 'copyImageResponse' smart constructor.
data CopyImageResponse = CopyImageResponse'
  { _cirrsImageId ::
      !(Maybe Text),
    _cirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopyImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirrsImageId' - The ID of the new AMI.
--
-- * 'cirrsResponseStatus' - -- | The response status code.
copyImageResponse ::
  -- | 'cirrsResponseStatus'
  Int ->
  CopyImageResponse
copyImageResponse pResponseStatus_ =
  CopyImageResponse'
    { _cirrsImageId = Nothing,
      _cirrsResponseStatus = pResponseStatus_
    }

-- | The ID of the new AMI.
cirrsImageId :: Lens' CopyImageResponse (Maybe Text)
cirrsImageId = lens _cirrsImageId (\s a -> s {_cirrsImageId = a})

-- | -- | The response status code.
cirrsResponseStatus :: Lens' CopyImageResponse Int
cirrsResponseStatus = lens _cirrsResponseStatus (\s a -> s {_cirrsResponseStatus = a})

instance NFData CopyImageResponse
