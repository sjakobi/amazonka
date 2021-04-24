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
-- Module      : Network.AWS.IAM.UploadSigningCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an X.509 signing certificate and associates it with the specified IAM user. Some AWS services require you to use certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is @Active@ .
--
--
-- For information about when you would use an X.509 signing certificate, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html Managing server certificates in IAM> in the /IAM User Guide/ .
--
-- If the @UserName@ is not specified, the IAM user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.
module Network.AWS.IAM.UploadSigningCertificate
  ( -- * Creating a Request
    uploadSigningCertificate,
    UploadSigningCertificate,

    -- * Request Lenses
    uscUserName,
    uscCertificateBody,

    -- * Destructuring the Response
    uploadSigningCertificateResponse,
    UploadSigningCertificateResponse,

    -- * Response Lenses
    ursResponseStatus,
    ursCertificate,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'uploadSigningCertificate' smart constructor.
data UploadSigningCertificate = UploadSigningCertificate'
  { _uscUserName ::
      !(Maybe Text),
    _uscCertificateBody ::
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

-- | Creates a value of 'UploadSigningCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uscUserName' - The name of the user the signing certificate is for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'uscCertificateBody' - The contents of the signing certificate. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
uploadSigningCertificate ::
  -- | 'uscCertificateBody'
  Text ->
  UploadSigningCertificate
uploadSigningCertificate pCertificateBody_ =
  UploadSigningCertificate'
    { _uscUserName = Nothing,
      _uscCertificateBody = pCertificateBody_
    }

-- | The name of the user the signing certificate is for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
uscUserName :: Lens' UploadSigningCertificate (Maybe Text)
uscUserName = lens _uscUserName (\s a -> s {_uscUserName = a})

-- | The contents of the signing certificate. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
uscCertificateBody :: Lens' UploadSigningCertificate Text
uscCertificateBody = lens _uscCertificateBody (\s a -> s {_uscCertificateBody = a})

instance AWSRequest UploadSigningCertificate where
  type
    Rs UploadSigningCertificate =
      UploadSigningCertificateResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "UploadSigningCertificateResult"
      ( \s h x ->
          UploadSigningCertificateResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "Certificate")
      )

instance Hashable UploadSigningCertificate

instance NFData UploadSigningCertificate

instance ToHeaders UploadSigningCertificate where
  toHeaders = const mempty

instance ToPath UploadSigningCertificate where
  toPath = const "/"

instance ToQuery UploadSigningCertificate where
  toQuery UploadSigningCertificate' {..} =
    mconcat
      [ "Action"
          =: ("UploadSigningCertificate" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "UserName" =: _uscUserName,
        "CertificateBody" =: _uscCertificateBody
      ]

-- | Contains the response to a successful 'UploadSigningCertificate' request.
--
--
--
-- /See:/ 'uploadSigningCertificateResponse' smart constructor.
data UploadSigningCertificateResponse = UploadSigningCertificateResponse'
  { _ursResponseStatus ::
      !Int,
    _ursCertificate ::
      !SigningCertificate
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UploadSigningCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursResponseStatus' - -- | The response status code.
--
-- * 'ursCertificate' - Information about the certificate.
uploadSigningCertificateResponse ::
  -- | 'ursResponseStatus'
  Int ->
  -- | 'ursCertificate'
  SigningCertificate ->
  UploadSigningCertificateResponse
uploadSigningCertificateResponse
  pResponseStatus_
  pCertificate_ =
    UploadSigningCertificateResponse'
      { _ursResponseStatus =
          pResponseStatus_,
        _ursCertificate = pCertificate_
      }

-- | -- | The response status code.
ursResponseStatus :: Lens' UploadSigningCertificateResponse Int
ursResponseStatus = lens _ursResponseStatus (\s a -> s {_ursResponseStatus = a})

-- | Information about the certificate.
ursCertificate :: Lens' UploadSigningCertificateResponse SigningCertificate
ursCertificate = lens _ursCertificate (\s a -> s {_ursCertificate = a})

instance NFData UploadSigningCertificateResponse
