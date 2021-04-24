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
-- Module      : Network.AWS.EC2.AssociateEnclaveCertificateIAMRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates an AWS Identity and Access Management (IAM) role with an AWS Certificate Manager (ACM) certificate. This enables the certificate to be used by the ACM for Nitro Enclaves application inside an enclave. For more information, see <https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html AWS Certificate Manager for Nitro Enclaves> in the /AWS Nitro Enclaves User Guide/ .
--
--
-- When the IAM role is associated with the ACM certificate, places the certificate, certificate chain, and encrypted private key in an Amazon S3 bucket that only the associated IAM role can access. The private key of the certificate is encrypted with an AWS-managed KMS customer master (CMK) that has an attached attestation-based CMK policy.
--
-- To enable the IAM role to access the Amazon S3 object, you must grant it permission to call @s3:GetObject@ on the Amazon S3 bucket returned by the command. To enable the IAM role to access the AWS KMS CMK, you must grant it permission to call @kms:Decrypt@ on AWS KMS CMK returned by the command. For more information, see <https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html#add-policy Grant the role permission to access the certificate and encryption key> in the /AWS Nitro Enclaves User Guide/ .
module Network.AWS.EC2.AssociateEnclaveCertificateIAMRole
  ( -- * Creating a Request
    associateEnclaveCertificateIAMRole,
    AssociateEnclaveCertificateIAMRole,

    -- * Request Lenses
    aecirRoleARN,
    aecirDryRun,
    aecirCertificateARN,

    -- * Destructuring the Response
    associateEnclaveCertificateIAMRoleResponse,
    AssociateEnclaveCertificateIAMRoleResponse,

    -- * Response Lenses
    aecirrrsCertificateS3ObjectKey,
    aecirrrsEncryptionKMSKeyId,
    aecirrrsCertificateS3BucketName,
    aecirrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateEnclaveCertificateIAMRole' smart constructor.
data AssociateEnclaveCertificateIAMRole = AssociateEnclaveCertificateIAMRole'
  { _aecirRoleARN ::
      !( Maybe
           Text
       ),
    _aecirDryRun ::
      !( Maybe
           Bool
       ),
    _aecirCertificateARN ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AssociateEnclaveCertificateIAMRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aecirRoleARN' - The ARN of the IAM role to associate with the ACM certificate. You can associate up to 16 IAM roles with an ACM certificate.
--
-- * 'aecirDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'aecirCertificateARN' - The ARN of the ACM certificate with which to associate the IAM role.
associateEnclaveCertificateIAMRole ::
  AssociateEnclaveCertificateIAMRole
associateEnclaveCertificateIAMRole =
  AssociateEnclaveCertificateIAMRole'
    { _aecirRoleARN =
        Nothing,
      _aecirDryRun = Nothing,
      _aecirCertificateARN = Nothing
    }

-- | The ARN of the IAM role to associate with the ACM certificate. You can associate up to 16 IAM roles with an ACM certificate.
aecirRoleARN :: Lens' AssociateEnclaveCertificateIAMRole (Maybe Text)
aecirRoleARN = lens _aecirRoleARN (\s a -> s {_aecirRoleARN = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
aecirDryRun :: Lens' AssociateEnclaveCertificateIAMRole (Maybe Bool)
aecirDryRun = lens _aecirDryRun (\s a -> s {_aecirDryRun = a})

-- | The ARN of the ACM certificate with which to associate the IAM role.
aecirCertificateARN :: Lens' AssociateEnclaveCertificateIAMRole (Maybe Text)
aecirCertificateARN = lens _aecirCertificateARN (\s a -> s {_aecirCertificateARN = a})

instance
  AWSRequest
    AssociateEnclaveCertificateIAMRole
  where
  type
    Rs AssociateEnclaveCertificateIAMRole =
      AssociateEnclaveCertificateIAMRoleResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AssociateEnclaveCertificateIAMRoleResponse'
            <$> (x .@? "certificateS3ObjectKey")
            <*> (x .@? "encryptionKmsKeyId")
            <*> (x .@? "certificateS3BucketName")
            <*> (pure (fromEnum s))
      )

instance Hashable AssociateEnclaveCertificateIAMRole

instance NFData AssociateEnclaveCertificateIAMRole

instance ToHeaders AssociateEnclaveCertificateIAMRole where
  toHeaders = const mempty

instance ToPath AssociateEnclaveCertificateIAMRole where
  toPath = const "/"

instance ToQuery AssociateEnclaveCertificateIAMRole where
  toQuery AssociateEnclaveCertificateIAMRole' {..} =
    mconcat
      [ "Action"
          =: ("AssociateEnclaveCertificateIamRole" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "RoleArn" =: _aecirRoleARN,
        "DryRun" =: _aecirDryRun,
        "CertificateArn" =: _aecirCertificateARN
      ]

-- | /See:/ 'associateEnclaveCertificateIAMRoleResponse' smart constructor.
data AssociateEnclaveCertificateIAMRoleResponse = AssociateEnclaveCertificateIAMRoleResponse'
  { _aecirrrsCertificateS3ObjectKey ::
      !( Maybe
           Text
       ),
    _aecirrrsEncryptionKMSKeyId ::
      !( Maybe
           Text
       ),
    _aecirrrsCertificateS3BucketName ::
      !( Maybe
           Text
       ),
    _aecirrrsResponseStatus ::
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

-- | Creates a value of 'AssociateEnclaveCertificateIAMRoleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aecirrrsCertificateS3ObjectKey' - The Amazon S3 object key where the certificate, certificate chain, and encrypted private key bundle are stored. The object key is formatted as follows: @role_arn@ /@certificate_arn@ .
--
-- * 'aecirrrsEncryptionKMSKeyId' - The ID of the AWS KMS CMK used to encrypt the private key of the certificate.
--
-- * 'aecirrrsCertificateS3BucketName' - The name of the Amazon S3 bucket to which the certificate was uploaded.
--
-- * 'aecirrrsResponseStatus' - -- | The response status code.
associateEnclaveCertificateIAMRoleResponse ::
  -- | 'aecirrrsResponseStatus'
  Int ->
  AssociateEnclaveCertificateIAMRoleResponse
associateEnclaveCertificateIAMRoleResponse
  pResponseStatus_ =
    AssociateEnclaveCertificateIAMRoleResponse'
      { _aecirrrsCertificateS3ObjectKey =
          Nothing,
        _aecirrrsEncryptionKMSKeyId =
          Nothing,
        _aecirrrsCertificateS3BucketName =
          Nothing,
        _aecirrrsResponseStatus =
          pResponseStatus_
      }

-- | The Amazon S3 object key where the certificate, certificate chain, and encrypted private key bundle are stored. The object key is formatted as follows: @role_arn@ /@certificate_arn@ .
aecirrrsCertificateS3ObjectKey :: Lens' AssociateEnclaveCertificateIAMRoleResponse (Maybe Text)
aecirrrsCertificateS3ObjectKey = lens _aecirrrsCertificateS3ObjectKey (\s a -> s {_aecirrrsCertificateS3ObjectKey = a})

-- | The ID of the AWS KMS CMK used to encrypt the private key of the certificate.
aecirrrsEncryptionKMSKeyId :: Lens' AssociateEnclaveCertificateIAMRoleResponse (Maybe Text)
aecirrrsEncryptionKMSKeyId = lens _aecirrrsEncryptionKMSKeyId (\s a -> s {_aecirrrsEncryptionKMSKeyId = a})

-- | The name of the Amazon S3 bucket to which the certificate was uploaded.
aecirrrsCertificateS3BucketName :: Lens' AssociateEnclaveCertificateIAMRoleResponse (Maybe Text)
aecirrrsCertificateS3BucketName = lens _aecirrrsCertificateS3BucketName (\s a -> s {_aecirrrsCertificateS3BucketName = a})

-- | -- | The response status code.
aecirrrsResponseStatus :: Lens' AssociateEnclaveCertificateIAMRoleResponse Int
aecirrrsResponseStatus = lens _aecirrrsResponseStatus (\s a -> s {_aecirrrsResponseStatus = a})

instance
  NFData
    AssociateEnclaveCertificateIAMRoleResponse
