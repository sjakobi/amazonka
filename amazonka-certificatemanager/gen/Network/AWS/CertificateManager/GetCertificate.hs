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
-- Module      : Network.AWS.CertificateManager.GetCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an Amazon-issued certificate and its certificate chain. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs. All of the certificates are base64 encoded. You can use <https://wiki.openssl.org/index.php/Command_Line_Utilities OpenSSL> to decode the certificates and inspect individual fields.
module Network.AWS.CertificateManager.GetCertificate
  ( -- * Creating a Request
    getCertificate,
    GetCertificate,

    -- * Request Lenses
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

import Network.AWS.CertificateManager.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCertificate' smart constructor.
newtype GetCertificate = GetCertificate'
  { _gcCertificateARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcCertificateARN' - String that contains a certificate ARN in the following format: @arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012@  For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> .
getCertificate ::
  -- | 'gcCertificateARN'
  Text ->
  GetCertificate
getCertificate pCertificateARN_ =
  GetCertificate'
    { _gcCertificateARN =
        pCertificateARN_
    }

-- | String that contains a certificate ARN in the following format: @arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012@  For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> .
gcCertificateARN :: Lens' GetCertificate Text
gcCertificateARN = lens _gcCertificateARN (\s a -> s {_gcCertificateARN = a})

instance AWSRequest GetCertificate where
  type Rs GetCertificate = GetCertificateResponse
  request = postJSON certificateManager
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
              =# ("CertificateManager.GetCertificate" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCertificate where
  toJSON GetCertificate' {..} =
    object
      ( catMaybes
          [Just ("CertificateArn" .= _gcCertificateARN)]
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
-- * 'gcrrsCertificateChain' - Certificates forming the requested certificate's chain of trust. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs.
--
-- * 'gcrrsCertificate' - The ACM-issued certificate corresponding to the ARN specified as input.
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

-- | Certificates forming the requested certificate's chain of trust. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs.
gcrrsCertificateChain :: Lens' GetCertificateResponse (Maybe Text)
gcrrsCertificateChain = lens _gcrrsCertificateChain (\s a -> s {_gcrrsCertificateChain = a})

-- | The ACM-issued certificate corresponding to the ARN specified as input.
gcrrsCertificate :: Lens' GetCertificateResponse (Maybe Text)
gcrrsCertificate = lens _gcrrsCertificate (\s a -> s {_gcrrsCertificate = a})

-- | -- | The response status code.
gcrrsResponseStatus :: Lens' GetCertificateResponse Int
gcrrsResponseStatus = lens _gcrrsResponseStatus (\s a -> s {_gcrrsResponseStatus = a})

instance NFData GetCertificateResponse
