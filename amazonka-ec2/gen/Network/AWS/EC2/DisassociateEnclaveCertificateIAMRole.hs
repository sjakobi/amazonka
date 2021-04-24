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
-- Module      : Network.AWS.EC2.DisassociateEnclaveCertificateIAMRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates an IAM role from an AWS Certificate Manager (ACM) certificate. Disassociating an IAM role from an ACM certificate removes the Amazon S3 object that contains the certificate, certificate chain, and encrypted private key from the Amazon S3 bucket. It also revokes the IAM role's permission to use the AWS Key Management Service (KMS) customer master key (CMK) used to encrypt the private key. This effectively revokes the role's permission to use the certificate.
module Network.AWS.EC2.DisassociateEnclaveCertificateIAMRole
  ( -- * Creating a Request
    disassociateEnclaveCertificateIAMRole,
    DisassociateEnclaveCertificateIAMRole,

    -- * Request Lenses
    decirRoleARN,
    decirDryRun,
    decirCertificateARN,

    -- * Destructuring the Response
    disassociateEnclaveCertificateIAMRoleResponse,
    DisassociateEnclaveCertificateIAMRoleResponse,

    -- * Response Lenses
    decirrrsReturn,
    decirrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateEnclaveCertificateIAMRole' smart constructor.
data DisassociateEnclaveCertificateIAMRole = DisassociateEnclaveCertificateIAMRole'
  { _decirRoleARN ::
      !( Maybe
           Text
       ),
    _decirDryRun ::
      !( Maybe
           Bool
       ),
    _decirCertificateARN ::
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

-- | Creates a value of 'DisassociateEnclaveCertificateIAMRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decirRoleARN' - The ARN of the IAM role to disassociate.
--
-- * 'decirDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'decirCertificateARN' - The ARN of the ACM certificate from which to disassociate the IAM role.
disassociateEnclaveCertificateIAMRole ::
  DisassociateEnclaveCertificateIAMRole
disassociateEnclaveCertificateIAMRole =
  DisassociateEnclaveCertificateIAMRole'
    { _decirRoleARN =
        Nothing,
      _decirDryRun = Nothing,
      _decirCertificateARN = Nothing
    }

-- | The ARN of the IAM role to disassociate.
decirRoleARN :: Lens' DisassociateEnclaveCertificateIAMRole (Maybe Text)
decirRoleARN = lens _decirRoleARN (\s a -> s {_decirRoleARN = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
decirDryRun :: Lens' DisassociateEnclaveCertificateIAMRole (Maybe Bool)
decirDryRun = lens _decirDryRun (\s a -> s {_decirDryRun = a})

-- | The ARN of the ACM certificate from which to disassociate the IAM role.
decirCertificateARN :: Lens' DisassociateEnclaveCertificateIAMRole (Maybe Text)
decirCertificateARN = lens _decirCertificateARN (\s a -> s {_decirCertificateARN = a})

instance
  AWSRequest
    DisassociateEnclaveCertificateIAMRole
  where
  type
    Rs DisassociateEnclaveCertificateIAMRole =
      DisassociateEnclaveCertificateIAMRoleResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DisassociateEnclaveCertificateIAMRoleResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance
  Hashable
    DisassociateEnclaveCertificateIAMRole

instance NFData DisassociateEnclaveCertificateIAMRole

instance
  ToHeaders
    DisassociateEnclaveCertificateIAMRole
  where
  toHeaders = const mempty

instance ToPath DisassociateEnclaveCertificateIAMRole where
  toPath = const "/"

instance
  ToQuery
    DisassociateEnclaveCertificateIAMRole
  where
  toQuery DisassociateEnclaveCertificateIAMRole' {..} =
    mconcat
      [ "Action"
          =: ( "DisassociateEnclaveCertificateIamRole" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "RoleArn" =: _decirRoleARN,
        "DryRun" =: _decirDryRun,
        "CertificateArn" =: _decirCertificateARN
      ]

-- | /See:/ 'disassociateEnclaveCertificateIAMRoleResponse' smart constructor.
data DisassociateEnclaveCertificateIAMRoleResponse = DisassociateEnclaveCertificateIAMRoleResponse'
  { _decirrrsReturn ::
      !( Maybe
           Bool
       ),
    _decirrrsResponseStatus ::
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

-- | Creates a value of 'DisassociateEnclaveCertificateIAMRoleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decirrrsReturn' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'decirrrsResponseStatus' - -- | The response status code.
disassociateEnclaveCertificateIAMRoleResponse ::
  -- | 'decirrrsResponseStatus'
  Int ->
  DisassociateEnclaveCertificateIAMRoleResponse
disassociateEnclaveCertificateIAMRoleResponse
  pResponseStatus_ =
    DisassociateEnclaveCertificateIAMRoleResponse'
      { _decirrrsReturn =
          Nothing,
        _decirrrsResponseStatus =
          pResponseStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
decirrrsReturn :: Lens' DisassociateEnclaveCertificateIAMRoleResponse (Maybe Bool)
decirrrsReturn = lens _decirrrsReturn (\s a -> s {_decirrrsReturn = a})

-- | -- | The response status code.
decirrrsResponseStatus :: Lens' DisassociateEnclaveCertificateIAMRoleResponse Int
decirrrsResponseStatus = lens _decirrrsResponseStatus (\s a -> s {_decirrrsResponseStatus = a})

instance
  NFData
    DisassociateEnclaveCertificateIAMRoleResponse
