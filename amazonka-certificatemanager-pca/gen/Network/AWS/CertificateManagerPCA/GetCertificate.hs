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
-- Module      : Network.AWS.CertificateManagerPCA.GetCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a certificate from your private CA or one that has been shared with you. The ARN of the certificate is returned when you call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html IssueCertificate> action. You must specify both the ARN of your private CA and the ARN of the issued certificate when calling the __GetCertificate__ action. You can retrieve the certificate if it is in the __ISSUED__ state. You can call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html CreateCertificateAuthorityAuditReport> action to create a report that contains information about all of the certificates issued and revoked by your private CA.
module Network.AWS.CertificateManagerPCA.GetCertificate
  ( -- * Creating a Request
    getCertificate,
    GetCertificate,

    -- * Request Lenses
    gcCertificateAuthorityARN,
    gcCertificateARN,

    -- * Destructuring the Response
    getCertificateResponse,
    GetCertificateResponse,

    -- * Response Lenses
    gcrrsCertificateChain,
    gcrrsCertificate,
    gcrrsResponseStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCertificate' smart constructor.
data GetCertificate = GetCertificate'
  { _gcCertificateAuthorityARN ::
      !Text,
    _gcCertificateARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcCertificateAuthorityARN' - The Amazon Resource Name (ARN) that was returned when you called <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> . This must be of the form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @ .
--
-- * 'gcCertificateARN' - The ARN of the issued certificate. The ARN contains the certificate serial number and must be in the following form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ /certificate//286535153982981100925020015808220737245/ @
getCertificate ::
  -- | 'gcCertificateAuthorityARN'
  Text ->
  -- | 'gcCertificateARN'
  Text ->
  GetCertificate
getCertificate
  pCertificateAuthorityARN_
  pCertificateARN_ =
    GetCertificate'
      { _gcCertificateAuthorityARN =
          pCertificateAuthorityARN_,
        _gcCertificateARN = pCertificateARN_
      }

-- | The Amazon Resource Name (ARN) that was returned when you called <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> . This must be of the form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @ .
gcCertificateAuthorityARN :: Lens' GetCertificate Text
gcCertificateAuthorityARN = lens _gcCertificateAuthorityARN (\s a -> s {_gcCertificateAuthorityARN = a})

-- | The ARN of the issued certificate. The ARN contains the certificate serial number and must be in the following form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ /certificate//286535153982981100925020015808220737245/ @
gcCertificateARN :: Lens' GetCertificate Text
gcCertificateARN = lens _gcCertificateARN (\s a -> s {_gcCertificateARN = a})

instance AWSRequest GetCertificate where
  type Rs GetCertificate = GetCertificateResponse
  request = postJSON certificateManagerPCA
  response =
    receiveJSON
      ( \s h x ->
          GetCertificateResponse'
            <$> (x .?> "CertificateChain")
            <*> (x .?> "Certificate")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCertificate

instance NFData GetCertificate

instance ToHeaders GetCertificate where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ACMPrivateCA.GetCertificate" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCertificate where
  toJSON GetCertificate' {..} =
    object
      ( catMaybes
          [ Just
              ( "CertificateAuthorityArn"
                  .= _gcCertificateAuthorityARN
              ),
            Just ("CertificateArn" .= _gcCertificateARN)
          ]
      )

instance ToPath GetCertificate where
  toPath = const "/"

instance ToQuery GetCertificate where
  toQuery = const mempty

-- | /See:/ 'getCertificateResponse' smart constructor.
data GetCertificateResponse = GetCertificateResponse'
  { _gcrrsCertificateChain ::
      !(Maybe Text),
    _gcrrsCertificate ::
      !(Maybe Text),
    _gcrrsResponseStatus ::
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

-- | Creates a value of 'GetCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrsCertificateChain' - The base64 PEM-encoded certificate chain that chains up to the root CA certificate that you used to sign your private CA certificate.
--
-- * 'gcrrsCertificate' - The base64 PEM-encoded certificate specified by the @CertificateArn@ parameter.
--
-- * 'gcrrsResponseStatus' - -- | The response status code.
getCertificateResponse ::
  -- | 'gcrrsResponseStatus'
  Int ->
  GetCertificateResponse
getCertificateResponse pResponseStatus_ =
  GetCertificateResponse'
    { _gcrrsCertificateChain =
        Nothing,
      _gcrrsCertificate = Nothing,
      _gcrrsResponseStatus = pResponseStatus_
    }

-- | The base64 PEM-encoded certificate chain that chains up to the root CA certificate that you used to sign your private CA certificate.
gcrrsCertificateChain :: Lens' GetCertificateResponse (Maybe Text)
gcrrsCertificateChain = lens _gcrrsCertificateChain (\s a -> s {_gcrrsCertificateChain = a})

-- | The base64 PEM-encoded certificate specified by the @CertificateArn@ parameter.
gcrrsCertificate :: Lens' GetCertificateResponse (Maybe Text)
gcrrsCertificate = lens _gcrrsCertificate (\s a -> s {_gcrrsCertificate = a})

-- | -- | The response status code.
gcrrsResponseStatus :: Lens' GetCertificateResponse Int
gcrrsResponseStatus = lens _gcrrsResponseStatus (\s a -> s {_gcrrsResponseStatus = a})

instance NFData GetCertificateResponse
