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
-- Module      : Network.AWS.IoT.RegisterCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.
module Network.AWS.IoT.RegisterCertificate
  ( -- * Creating a Request
    registerCertificate,
    RegisterCertificate,

    -- * Request Lenses
    rcCaCertificatePem,
    rcSetAsActive,
    rcStatus,
    rcCertificatePem,

    -- * Destructuring the Response
    registerCertificateResponse,
    RegisterCertificateResponse,

    -- * Response Lenses
    rcrrsCertificateARN,
    rcrrsCertificateId,
    rcrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input to the RegisterCertificate operation.
--
--
--
-- /See:/ 'registerCertificate' smart constructor.
data RegisterCertificate = RegisterCertificate'
  { _rcCaCertificatePem ::
      !(Maybe Text),
    _rcSetAsActive :: !(Maybe Bool),
    _rcStatus ::
      !(Maybe CertificateStatus),
    _rcCertificatePem :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcCaCertificatePem' - The CA certificate used to sign the device certificate being registered.
--
-- * 'rcSetAsActive' - A boolean value that specifies if the certificate is set to active.
--
-- * 'rcStatus' - The status of the register certificate request.
--
-- * 'rcCertificatePem' - The certificate data, in PEM format.
registerCertificate ::
  -- | 'rcCertificatePem'
  Text ->
  RegisterCertificate
registerCertificate pCertificatePem_ =
  RegisterCertificate'
    { _rcCaCertificatePem = Nothing,
      _rcSetAsActive = Nothing,
      _rcStatus = Nothing,
      _rcCertificatePem = pCertificatePem_
    }

-- | The CA certificate used to sign the device certificate being registered.
rcCaCertificatePem :: Lens' RegisterCertificate (Maybe Text)
rcCaCertificatePem = lens _rcCaCertificatePem (\s a -> s {_rcCaCertificatePem = a})

-- | A boolean value that specifies if the certificate is set to active.
rcSetAsActive :: Lens' RegisterCertificate (Maybe Bool)
rcSetAsActive = lens _rcSetAsActive (\s a -> s {_rcSetAsActive = a})

-- | The status of the register certificate request.
rcStatus :: Lens' RegisterCertificate (Maybe CertificateStatus)
rcStatus = lens _rcStatus (\s a -> s {_rcStatus = a})

-- | The certificate data, in PEM format.
rcCertificatePem :: Lens' RegisterCertificate Text
rcCertificatePem = lens _rcCertificatePem (\s a -> s {_rcCertificatePem = a})

instance AWSRequest RegisterCertificate where
  type
    Rs RegisterCertificate =
      RegisterCertificateResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          RegisterCertificateResponse'
            <$> (x .?> "certificateArn")
            <*> (x .?> "certificateId")
            <*> (pure (fromEnum s))
      )

instance Hashable RegisterCertificate

instance NFData RegisterCertificate

instance ToHeaders RegisterCertificate where
  toHeaders = const mempty

instance ToJSON RegisterCertificate where
  toJSON RegisterCertificate' {..} =
    object
      ( catMaybes
          [ ("caCertificatePem" .=) <$> _rcCaCertificatePem,
            ("status" .=) <$> _rcStatus,
            Just ("certificatePem" .= _rcCertificatePem)
          ]
      )

instance ToPath RegisterCertificate where
  toPath = const "/certificate/register"

instance ToQuery RegisterCertificate where
  toQuery RegisterCertificate' {..} =
    mconcat ["setAsActive" =: _rcSetAsActive]

-- | The output from the RegisterCertificate operation.
--
--
--
-- /See:/ 'registerCertificateResponse' smart constructor.
data RegisterCertificateResponse = RegisterCertificateResponse'
  { _rcrrsCertificateARN ::
      !(Maybe Text),
    _rcrrsCertificateId ::
      !(Maybe Text),
    _rcrrsResponseStatus ::
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

-- | Creates a value of 'RegisterCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrrsCertificateARN' - The certificate ARN.
--
-- * 'rcrrsCertificateId' - The certificate identifier.
--
-- * 'rcrrsResponseStatus' - -- | The response status code.
registerCertificateResponse ::
  -- | 'rcrrsResponseStatus'
  Int ->
  RegisterCertificateResponse
registerCertificateResponse pResponseStatus_ =
  RegisterCertificateResponse'
    { _rcrrsCertificateARN =
        Nothing,
      _rcrrsCertificateId = Nothing,
      _rcrrsResponseStatus = pResponseStatus_
    }

-- | The certificate ARN.
rcrrsCertificateARN :: Lens' RegisterCertificateResponse (Maybe Text)
rcrrsCertificateARN = lens _rcrrsCertificateARN (\s a -> s {_rcrrsCertificateARN = a})

-- | The certificate identifier.
rcrrsCertificateId :: Lens' RegisterCertificateResponse (Maybe Text)
rcrrsCertificateId = lens _rcrrsCertificateId (\s a -> s {_rcrrsCertificateId = a})

-- | -- | The response status code.
rcrrsResponseStatus :: Lens' RegisterCertificateResponse Int
rcrrsResponseStatus = lens _rcrrsResponseStatus (\s a -> s {_rcrrsResponseStatus = a})

instance NFData RegisterCertificateResponse
