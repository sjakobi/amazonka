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
-- Module      : Network.AWS.EC2.GetAssociatedEnclaveCertificateIAMRoles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the IAM roles that are associated with the specified AWS Certificate Manager (ACM) certificate. It also returns the name of the Amazon S3 bucket and the Amazon S3 object key where the certificate, certificate chain, and encrypted private key bundle are stored, and the ARN of the AWS Key Management Service (KMS) customer master key (CMK) that's used to encrypt the private key.
module Network.AWS.EC2.GetAssociatedEnclaveCertificateIAMRoles
  ( -- * Creating a Request
    getAssociatedEnclaveCertificateIAMRoles,
    GetAssociatedEnclaveCertificateIAMRoles,

    -- * Request Lenses
    gaecirDryRun,
    gaecirCertificateARN,

    -- * Destructuring the Response
    getAssociatedEnclaveCertificateIAMRolesResponse,
    GetAssociatedEnclaveCertificateIAMRolesResponse,

    -- * Response Lenses
    gaecirrrsAssociatedRoles,
    gaecirrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAssociatedEnclaveCertificateIAMRoles' smart constructor.
data GetAssociatedEnclaveCertificateIAMRoles = GetAssociatedEnclaveCertificateIAMRoles'
  { _gaecirDryRun ::
      !( Maybe
           Bool
       ),
    _gaecirCertificateARN ::
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

-- | Creates a value of 'GetAssociatedEnclaveCertificateIAMRoles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaecirDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gaecirCertificateARN' - The ARN of the ACM certificate for which to view the associated IAM roles, encryption keys, and Amazon S3 object information.
getAssociatedEnclaveCertificateIAMRoles ::
  GetAssociatedEnclaveCertificateIAMRoles
getAssociatedEnclaveCertificateIAMRoles =
  GetAssociatedEnclaveCertificateIAMRoles'
    { _gaecirDryRun =
        Nothing,
      _gaecirCertificateARN = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gaecirDryRun :: Lens' GetAssociatedEnclaveCertificateIAMRoles (Maybe Bool)
gaecirDryRun = lens _gaecirDryRun (\s a -> s {_gaecirDryRun = a})

-- | The ARN of the ACM certificate for which to view the associated IAM roles, encryption keys, and Amazon S3 object information.
gaecirCertificateARN :: Lens' GetAssociatedEnclaveCertificateIAMRoles (Maybe Text)
gaecirCertificateARN = lens _gaecirCertificateARN (\s a -> s {_gaecirCertificateARN = a})

instance
  AWSRequest
    GetAssociatedEnclaveCertificateIAMRoles
  where
  type
    Rs GetAssociatedEnclaveCertificateIAMRoles =
      GetAssociatedEnclaveCertificateIAMRolesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetAssociatedEnclaveCertificateIAMRolesResponse'
            <$> ( x .@? "associatedRoleSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetAssociatedEnclaveCertificateIAMRoles

instance
  NFData
    GetAssociatedEnclaveCertificateIAMRoles

instance
  ToHeaders
    GetAssociatedEnclaveCertificateIAMRoles
  where
  toHeaders = const mempty

instance
  ToPath
    GetAssociatedEnclaveCertificateIAMRoles
  where
  toPath = const "/"

instance
  ToQuery
    GetAssociatedEnclaveCertificateIAMRoles
  where
  toQuery GetAssociatedEnclaveCertificateIAMRoles' {..} =
    mconcat
      [ "Action"
          =: ( "GetAssociatedEnclaveCertificateIamRoles" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _gaecirDryRun,
        "CertificateArn" =: _gaecirCertificateARN
      ]

-- | /See:/ 'getAssociatedEnclaveCertificateIAMRolesResponse' smart constructor.
data GetAssociatedEnclaveCertificateIAMRolesResponse = GetAssociatedEnclaveCertificateIAMRolesResponse'
  { _gaecirrrsAssociatedRoles ::
      !( Maybe
           [AssociatedRole]
       ),
    _gaecirrrsResponseStatus ::
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

-- | Creates a value of 'GetAssociatedEnclaveCertificateIAMRolesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaecirrrsAssociatedRoles' - Information about the associated IAM roles.
--
-- * 'gaecirrrsResponseStatus' - -- | The response status code.
getAssociatedEnclaveCertificateIAMRolesResponse ::
  -- | 'gaecirrrsResponseStatus'
  Int ->
  GetAssociatedEnclaveCertificateIAMRolesResponse
getAssociatedEnclaveCertificateIAMRolesResponse
  pResponseStatus_ =
    GetAssociatedEnclaveCertificateIAMRolesResponse'
      { _gaecirrrsAssociatedRoles =
          Nothing,
        _gaecirrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the associated IAM roles.
gaecirrrsAssociatedRoles :: Lens' GetAssociatedEnclaveCertificateIAMRolesResponse [AssociatedRole]
gaecirrrsAssociatedRoles = lens _gaecirrrsAssociatedRoles (\s a -> s {_gaecirrrsAssociatedRoles = a}) . _Default . _Coerce

-- | -- | The response status code.
gaecirrrsResponseStatus :: Lens' GetAssociatedEnclaveCertificateIAMRolesResponse Int
gaecirrrsResponseStatus = lens _gaecirrrsResponseStatus (\s a -> s {_gaecirrrsResponseStatus = a})

instance
  NFData
    GetAssociatedEnclaveCertificateIAMRolesResponse
