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
-- Module      : Network.AWS.IoT.CreateKeysAndCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key. You can also call @CreateKeysAndCertificate@ over MQTT from a device, for more information, see <https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api Provisioning MQTT API> .
--
--
-- __Note__ This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.
module Network.AWS.IoT.CreateKeysAndCertificate
  ( -- * Creating a Request
    createKeysAndCertificate,
    CreateKeysAndCertificate,

    -- * Request Lenses
    ckacSetAsActive,

    -- * Destructuring the Response
    createKeysAndCertificateResponse,
    CreateKeysAndCertificateResponse,

    -- * Response Lenses
    ckacrrsCertificateARN,
    ckacrrsKeyPair,
    ckacrrsCertificateId,
    ckacrrsCertificatePem,
    ckacrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the CreateKeysAndCertificate operation.
--
--
--
-- /See:/ 'createKeysAndCertificate' smart constructor.
newtype CreateKeysAndCertificate = CreateKeysAndCertificate'
  { _ckacSetAsActive ::
      Maybe Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateKeysAndCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckacSetAsActive' - Specifies whether the certificate is active.
createKeysAndCertificate ::
  CreateKeysAndCertificate
createKeysAndCertificate =
  CreateKeysAndCertificate'
    { _ckacSetAsActive =
        Nothing
    }

-- | Specifies whether the certificate is active.
ckacSetAsActive :: Lens' CreateKeysAndCertificate (Maybe Bool)
ckacSetAsActive = lens _ckacSetAsActive (\s a -> s {_ckacSetAsActive = a})

instance AWSRequest CreateKeysAndCertificate where
  type
    Rs CreateKeysAndCertificate =
      CreateKeysAndCertificateResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateKeysAndCertificateResponse'
            <$> (x .?> "certificateArn")
            <*> (x .?> "keyPair")
            <*> (x .?> "certificateId")
            <*> (x .?> "certificatePem")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateKeysAndCertificate

instance NFData CreateKeysAndCertificate

instance ToHeaders CreateKeysAndCertificate where
  toHeaders = const mempty

instance ToJSON CreateKeysAndCertificate where
  toJSON = const (Object mempty)

instance ToPath CreateKeysAndCertificate where
  toPath = const "/keys-and-certificate"

instance ToQuery CreateKeysAndCertificate where
  toQuery CreateKeysAndCertificate' {..} =
    mconcat ["setAsActive" =: _ckacSetAsActive]

-- | The output of the CreateKeysAndCertificate operation.
--
--
--
-- /See:/ 'createKeysAndCertificateResponse' smart constructor.
data CreateKeysAndCertificateResponse = CreateKeysAndCertificateResponse'
  { _ckacrrsCertificateARN ::
      !( Maybe
           Text
       ),
    _ckacrrsKeyPair ::
      !( Maybe
           KeyPair
       ),
    _ckacrrsCertificateId ::
      !( Maybe
           Text
       ),
    _ckacrrsCertificatePem ::
      !( Maybe
           Text
       ),
    _ckacrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateKeysAndCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckacrrsCertificateARN' - The ARN of the certificate.
--
-- * 'ckacrrsKeyPair' - The generated key pair.
--
-- * 'ckacrrsCertificateId' - The ID of the certificate. AWS IoT issues a default subject name for the certificate (for example, AWS IoT Certificate).
--
-- * 'ckacrrsCertificatePem' - The certificate data, in PEM format.
--
-- * 'ckacrrsResponseStatus' - -- | The response status code.
createKeysAndCertificateResponse ::
  -- | 'ckacrrsResponseStatus'
  Int ->
  CreateKeysAndCertificateResponse
createKeysAndCertificateResponse pResponseStatus_ =
  CreateKeysAndCertificateResponse'
    { _ckacrrsCertificateARN =
        Nothing,
      _ckacrrsKeyPair = Nothing,
      _ckacrrsCertificateId = Nothing,
      _ckacrrsCertificatePem = Nothing,
      _ckacrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the certificate.
ckacrrsCertificateARN :: Lens' CreateKeysAndCertificateResponse (Maybe Text)
ckacrrsCertificateARN = lens _ckacrrsCertificateARN (\s a -> s {_ckacrrsCertificateARN = a})

-- | The generated key pair.
ckacrrsKeyPair :: Lens' CreateKeysAndCertificateResponse (Maybe KeyPair)
ckacrrsKeyPair = lens _ckacrrsKeyPair (\s a -> s {_ckacrrsKeyPair = a})

-- | The ID of the certificate. AWS IoT issues a default subject name for the certificate (for example, AWS IoT Certificate).
ckacrrsCertificateId :: Lens' CreateKeysAndCertificateResponse (Maybe Text)
ckacrrsCertificateId = lens _ckacrrsCertificateId (\s a -> s {_ckacrrsCertificateId = a})

-- | The certificate data, in PEM format.
ckacrrsCertificatePem :: Lens' CreateKeysAndCertificateResponse (Maybe Text)
ckacrrsCertificatePem = lens _ckacrrsCertificatePem (\s a -> s {_ckacrrsCertificatePem = a})

-- | -- | The response status code.
ckacrrsResponseStatus :: Lens' CreateKeysAndCertificateResponse Int
ckacrrsResponseStatus = lens _ckacrrsResponseStatus (\s a -> s {_ckacrrsResponseStatus = a})

instance NFData CreateKeysAndCertificateResponse
