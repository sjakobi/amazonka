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
-- Module      : Network.AWS.DMS.ImportCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads the specified certificate.
module Network.AWS.DMS.ImportCertificate
  ( -- * Creating a Request
    importCertificate,
    ImportCertificate,

    -- * Request Lenses
    icCertificateWallet,
    icTags,
    icCertificatePem,
    icCertificateIdentifier,

    -- * Destructuring the Response
    importCertificateResponse,
    ImportCertificateResponse,

    -- * Response Lenses
    icrrsCertificate,
    icrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'importCertificate' smart constructor.
data ImportCertificate = ImportCertificate'
  { _icCertificateWallet ::
      !(Maybe Base64),
    _icTags :: !(Maybe [Tag]),
    _icCertificatePem :: !(Maybe Text),
    _icCertificateIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icCertificateWallet' - The location of an imported Oracle Wallet certificate for use with SSL.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'icTags' - The tags associated with the certificate.
--
-- * 'icCertificatePem' - The contents of a @.pem@ file, which contains an X.509 certificate.
--
-- * 'icCertificateIdentifier' - A customer-assigned name for the certificate. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
importCertificate ::
  -- | 'icCertificateIdentifier'
  Text ->
  ImportCertificate
importCertificate pCertificateIdentifier_ =
  ImportCertificate'
    { _icCertificateWallet = Nothing,
      _icTags = Nothing,
      _icCertificatePem = Nothing,
      _icCertificateIdentifier = pCertificateIdentifier_
    }

-- | The location of an imported Oracle Wallet certificate for use with SSL.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
icCertificateWallet :: Lens' ImportCertificate (Maybe ByteString)
icCertificateWallet = lens _icCertificateWallet (\s a -> s {_icCertificateWallet = a}) . mapping _Base64

-- | The tags associated with the certificate.
icTags :: Lens' ImportCertificate [Tag]
icTags = lens _icTags (\s a -> s {_icTags = a}) . _Default . _Coerce

-- | The contents of a @.pem@ file, which contains an X.509 certificate.
icCertificatePem :: Lens' ImportCertificate (Maybe Text)
icCertificatePem = lens _icCertificatePem (\s a -> s {_icCertificatePem = a})

-- | A customer-assigned name for the certificate. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
icCertificateIdentifier :: Lens' ImportCertificate Text
icCertificateIdentifier = lens _icCertificateIdentifier (\s a -> s {_icCertificateIdentifier = a})

instance AWSRequest ImportCertificate where
  type Rs ImportCertificate = ImportCertificateResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          ImportCertificateResponse'
            <$> (x .?> "Certificate") <*> (pure (fromEnum s))
      )

instance Hashable ImportCertificate

instance NFData ImportCertificate

instance ToHeaders ImportCertificate where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.ImportCertificate" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ImportCertificate where
  toJSON ImportCertificate' {..} =
    object
      ( catMaybes
          [ ("CertificateWallet" .=) <$> _icCertificateWallet,
            ("Tags" .=) <$> _icTags,
            ("CertificatePem" .=) <$> _icCertificatePem,
            Just
              ( "CertificateIdentifier"
                  .= _icCertificateIdentifier
              )
          ]
      )

instance ToPath ImportCertificate where
  toPath = const "/"

instance ToQuery ImportCertificate where
  toQuery = const mempty

-- | /See:/ 'importCertificateResponse' smart constructor.
data ImportCertificateResponse = ImportCertificateResponse'
  { _icrrsCertificate ::
      !( Maybe
           Certificate
       ),
    _icrrsResponseStatus ::
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

-- | Creates a value of 'ImportCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icrrsCertificate' - The certificate to be uploaded.
--
-- * 'icrrsResponseStatus' - -- | The response status code.
importCertificateResponse ::
  -- | 'icrrsResponseStatus'
  Int ->
  ImportCertificateResponse
importCertificateResponse pResponseStatus_ =
  ImportCertificateResponse'
    { _icrrsCertificate =
        Nothing,
      _icrrsResponseStatus = pResponseStatus_
    }

-- | The certificate to be uploaded.
icrrsCertificate :: Lens' ImportCertificateResponse (Maybe Certificate)
icrrsCertificate = lens _icrrsCertificate (\s a -> s {_icrrsCertificate = a})

-- | -- | The response status code.
icrrsResponseStatus :: Lens' ImportCertificateResponse Int
icrrsResponseStatus = lens _icrrsResponseStatus (\s a -> s {_icrrsResponseStatus = a})

instance NFData ImportCertificateResponse
