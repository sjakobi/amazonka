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
-- Module      : Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the certificate and certificate chain for your private certificate authority (CA) or one that has been shared with you. Both the certificate and the chain are base64 PEM-encoded. The chain does not include the CA certificate. Each certificate in the chain signs the one before it.
module Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCertificate
  ( -- * Creating a Request
    getCertificateAuthorityCertificate,
    GetCertificateAuthorityCertificate,

    -- * Request Lenses
    gcacCertificateAuthorityARN,

    -- * Destructuring the Response
    getCertificateAuthorityCertificateResponse,
    GetCertificateAuthorityCertificateResponse,

    -- * Response Lenses
    gcacrrsCertificateChain,
    gcacrrsCertificate,
    gcacrrsResponseStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCertificateAuthorityCertificate' smart constructor.
newtype GetCertificateAuthorityCertificate = GetCertificateAuthorityCertificate'
  { _gcacCertificateAuthorityARN ::
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

-- | Creates a value of 'GetCertificateAuthorityCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcacCertificateAuthorityARN' - The Amazon Resource Name (ARN) of your private CA. This is of the form: @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @ .
getCertificateAuthorityCertificate ::
  -- | 'gcacCertificateAuthorityARN'
  Text ->
  GetCertificateAuthorityCertificate
getCertificateAuthorityCertificate
  pCertificateAuthorityARN_ =
    GetCertificateAuthorityCertificate'
      { _gcacCertificateAuthorityARN =
          pCertificateAuthorityARN_
      }

-- | The Amazon Resource Name (ARN) of your private CA. This is of the form: @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @ .
gcacCertificateAuthorityARN :: Lens' GetCertificateAuthorityCertificate Text
gcacCertificateAuthorityARN = lens _gcacCertificateAuthorityARN (\s a -> s {_gcacCertificateAuthorityARN = a})

instance
  AWSRequest
    GetCertificateAuthorityCertificate
  where
  type
    Rs GetCertificateAuthorityCertificate =
      GetCertificateAuthorityCertificateResponse
  request = postJSON certificateManagerPCA
  response =
    receiveJSON
      ( \s h x ->
          GetCertificateAuthorityCertificateResponse'
            <$> (x .?> "CertificateChain")
            <*> (x .?> "Certificate")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCertificateAuthorityCertificate

instance NFData GetCertificateAuthorityCertificate

instance ToHeaders GetCertificateAuthorityCertificate where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ACMPrivateCA.GetCertificateAuthorityCertificate" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCertificateAuthorityCertificate where
  toJSON GetCertificateAuthorityCertificate' {..} =
    object
      ( catMaybes
          [ Just
              ( "CertificateAuthorityArn"
                  .= _gcacCertificateAuthorityARN
              )
          ]
      )

instance ToPath GetCertificateAuthorityCertificate where
  toPath = const "/"

instance ToQuery GetCertificateAuthorityCertificate where
  toQuery = const mempty

-- | /See:/ 'getCertificateAuthorityCertificateResponse' smart constructor.
data GetCertificateAuthorityCertificateResponse = GetCertificateAuthorityCertificateResponse'
  { _gcacrrsCertificateChain ::
      !( Maybe
           Text
       ),
    _gcacrrsCertificate ::
      !( Maybe
           Text
       ),
    _gcacrrsResponseStatus ::
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

-- | Creates a value of 'GetCertificateAuthorityCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcacrrsCertificateChain' - Base64-encoded certificate chain that includes any intermediate certificates and chains up to root certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. If this is a root CA, the value will be null.
--
-- * 'gcacrrsCertificate' - Base64-encoded certificate authority (CA) certificate.
--
-- * 'gcacrrsResponseStatus' - -- | The response status code.
getCertificateAuthorityCertificateResponse ::
  -- | 'gcacrrsResponseStatus'
  Int ->
  GetCertificateAuthorityCertificateResponse
getCertificateAuthorityCertificateResponse
  pResponseStatus_ =
    GetCertificateAuthorityCertificateResponse'
      { _gcacrrsCertificateChain =
          Nothing,
        _gcacrrsCertificate = Nothing,
        _gcacrrsResponseStatus =
          pResponseStatus_
      }

-- | Base64-encoded certificate chain that includes any intermediate certificates and chains up to root certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. If this is a root CA, the value will be null.
gcacrrsCertificateChain :: Lens' GetCertificateAuthorityCertificateResponse (Maybe Text)
gcacrrsCertificateChain = lens _gcacrrsCertificateChain (\s a -> s {_gcacrrsCertificateChain = a})

-- | Base64-encoded certificate authority (CA) certificate.
gcacrrsCertificate :: Lens' GetCertificateAuthorityCertificateResponse (Maybe Text)
gcacrrsCertificate = lens _gcacrrsCertificate (\s a -> s {_gcacrrsCertificate = a})

-- | -- | The response status code.
gcacrrsResponseStatus :: Lens' GetCertificateAuthorityCertificateResponse Int
gcacrrsResponseStatus = lens _gcacrrsResponseStatus (\s a -> s {_gcacrrsResponseStatus = a})

instance
  NFData
    GetCertificateAuthorityCertificateResponse
