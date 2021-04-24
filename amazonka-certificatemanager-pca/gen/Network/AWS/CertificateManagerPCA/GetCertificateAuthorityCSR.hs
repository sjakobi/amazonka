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
-- Module      : Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCSR
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the certificate signing request (CSR) for your private certificate authority (CA). The CSR is created when you call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> action. Sign the CSR with your ACM Private CA-hosted or on-premises root or subordinate CA. Then import the signed certificate back into ACM Private CA by calling the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html ImportCertificateAuthorityCertificate> action. The CSR is returned as a base64 PEM-encoded string.
module Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCSR
  ( -- * Creating a Request
    getCertificateAuthorityCSR,
    GetCertificateAuthorityCSR,

    -- * Request Lenses
    gcacsrCertificateAuthorityARN,

    -- * Destructuring the Response
    getCertificateAuthorityCSRResponse,
    GetCertificateAuthorityCSRResponse,

    -- * Response Lenses
    gcacsrrrsCSR,
    gcacsrrrsResponseStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCertificateAuthorityCSR' smart constructor.
newtype GetCertificateAuthorityCSR = GetCertificateAuthorityCSR'
  { _gcacsrCertificateAuthorityARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCertificateAuthorityCSR' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcacsrCertificateAuthorityARN' - The Amazon Resource Name (ARN) that was returned when you called the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> action. This must be of the form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @
getCertificateAuthorityCSR ::
  -- | 'gcacsrCertificateAuthorityARN'
  Text ->
  GetCertificateAuthorityCSR
getCertificateAuthorityCSR pCertificateAuthorityARN_ =
  GetCertificateAuthorityCSR'
    { _gcacsrCertificateAuthorityARN =
        pCertificateAuthorityARN_
    }

-- | The Amazon Resource Name (ARN) that was returned when you called the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> action. This must be of the form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @
gcacsrCertificateAuthorityARN :: Lens' GetCertificateAuthorityCSR Text
gcacsrCertificateAuthorityARN = lens _gcacsrCertificateAuthorityARN (\s a -> s {_gcacsrCertificateAuthorityARN = a})

instance AWSRequest GetCertificateAuthorityCSR where
  type
    Rs GetCertificateAuthorityCSR =
      GetCertificateAuthorityCSRResponse
  request = postJSON certificateManagerPCA
  response =
    receiveJSON
      ( \s h x ->
          GetCertificateAuthorityCSRResponse'
            <$> (x .?> "Csr") <*> (pure (fromEnum s))
      )

instance Hashable GetCertificateAuthorityCSR

instance NFData GetCertificateAuthorityCSR

instance ToHeaders GetCertificateAuthorityCSR where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ACMPrivateCA.GetCertificateAuthorityCsr" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCertificateAuthorityCSR where
  toJSON GetCertificateAuthorityCSR' {..} =
    object
      ( catMaybes
          [ Just
              ( "CertificateAuthorityArn"
                  .= _gcacsrCertificateAuthorityARN
              )
          ]
      )

instance ToPath GetCertificateAuthorityCSR where
  toPath = const "/"

instance ToQuery GetCertificateAuthorityCSR where
  toQuery = const mempty

-- | /See:/ 'getCertificateAuthorityCSRResponse' smart constructor.
data GetCertificateAuthorityCSRResponse = GetCertificateAuthorityCSRResponse'
  { _gcacsrrrsCSR ::
      !( Maybe
           Text
       ),
    _gcacsrrrsResponseStatus ::
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

-- | Creates a value of 'GetCertificateAuthorityCSRResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcacsrrrsCSR' - The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
--
-- * 'gcacsrrrsResponseStatus' - -- | The response status code.
getCertificateAuthorityCSRResponse ::
  -- | 'gcacsrrrsResponseStatus'
  Int ->
  GetCertificateAuthorityCSRResponse
getCertificateAuthorityCSRResponse pResponseStatus_ =
  GetCertificateAuthorityCSRResponse'
    { _gcacsrrrsCSR =
        Nothing,
      _gcacsrrrsResponseStatus =
        pResponseStatus_
    }

-- | The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
gcacsrrrsCSR :: Lens' GetCertificateAuthorityCSRResponse (Maybe Text)
gcacsrrrsCSR = lens _gcacsrrrsCSR (\s a -> s {_gcacsrrrsCSR = a})

-- | -- | The response status code.
gcacsrrrsResponseStatus :: Lens' GetCertificateAuthorityCSRResponse Int
gcacsrrrsResponseStatus = lens _gcacsrrrsResponseStatus (\s a -> s {_gcacsrrrsResponseStatus = a})

instance NFData GetCertificateAuthorityCSRResponse
