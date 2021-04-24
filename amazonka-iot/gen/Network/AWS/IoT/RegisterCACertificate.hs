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
-- Module      : Network.AWS.IoT.RegisterCACertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.
module Network.AWS.IoT.RegisterCACertificate
  ( -- * Creating a Request
    registerCACertificate,
    RegisterCACertificate,

    -- * Request Lenses
    rcacAllowAutoRegistration,
    rcacSetAsActive,
    rcacTags,
    rcacRegistrationConfig,
    rcacCaCertificate,
    rcacVerificationCertificate,

    -- * Destructuring the Response
    registerCACertificateResponse,
    RegisterCACertificateResponse,

    -- * Response Lenses
    rcacrrsCertificateARN,
    rcacrrsCertificateId,
    rcacrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input to the RegisterCACertificate operation.
--
--
--
-- /See:/ 'registerCACertificate' smart constructor.
data RegisterCACertificate = RegisterCACertificate'
  { _rcacAllowAutoRegistration ::
      !(Maybe Bool),
    _rcacSetAsActive ::
      !(Maybe Bool),
    _rcacTags :: !(Maybe [Tag]),
    _rcacRegistrationConfig ::
      !(Maybe RegistrationConfig),
    _rcacCaCertificate :: !Text,
    _rcacVerificationCertificate ::
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

-- | Creates a value of 'RegisterCACertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcacAllowAutoRegistration' - Allows this CA certificate to be used for auto registration of device certificates.
--
-- * 'rcacSetAsActive' - A boolean value that specifies if the CA certificate is set to active.
--
-- * 'rcacTags' - Metadata which can be used to manage the CA certificate.
--
-- * 'rcacRegistrationConfig' - Information about the registration configuration.
--
-- * 'rcacCaCertificate' - The CA certificate.
--
-- * 'rcacVerificationCertificate' - The private key verification certificate.
registerCACertificate ::
  -- | 'rcacCaCertificate'
  Text ->
  -- | 'rcacVerificationCertificate'
  Text ->
  RegisterCACertificate
registerCACertificate
  pCaCertificate_
  pVerificationCertificate_ =
    RegisterCACertificate'
      { _rcacAllowAutoRegistration =
          Nothing,
        _rcacSetAsActive = Nothing,
        _rcacTags = Nothing,
        _rcacRegistrationConfig = Nothing,
        _rcacCaCertificate = pCaCertificate_,
        _rcacVerificationCertificate =
          pVerificationCertificate_
      }

-- | Allows this CA certificate to be used for auto registration of device certificates.
rcacAllowAutoRegistration :: Lens' RegisterCACertificate (Maybe Bool)
rcacAllowAutoRegistration = lens _rcacAllowAutoRegistration (\s a -> s {_rcacAllowAutoRegistration = a})

-- | A boolean value that specifies if the CA certificate is set to active.
rcacSetAsActive :: Lens' RegisterCACertificate (Maybe Bool)
rcacSetAsActive = lens _rcacSetAsActive (\s a -> s {_rcacSetAsActive = a})

-- | Metadata which can be used to manage the CA certificate.
rcacTags :: Lens' RegisterCACertificate [Tag]
rcacTags = lens _rcacTags (\s a -> s {_rcacTags = a}) . _Default . _Coerce

-- | Information about the registration configuration.
rcacRegistrationConfig :: Lens' RegisterCACertificate (Maybe RegistrationConfig)
rcacRegistrationConfig = lens _rcacRegistrationConfig (\s a -> s {_rcacRegistrationConfig = a})

-- | The CA certificate.
rcacCaCertificate :: Lens' RegisterCACertificate Text
rcacCaCertificate = lens _rcacCaCertificate (\s a -> s {_rcacCaCertificate = a})

-- | The private key verification certificate.
rcacVerificationCertificate :: Lens' RegisterCACertificate Text
rcacVerificationCertificate = lens _rcacVerificationCertificate (\s a -> s {_rcacVerificationCertificate = a})

instance AWSRequest RegisterCACertificate where
  type
    Rs RegisterCACertificate =
      RegisterCACertificateResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          RegisterCACertificateResponse'
            <$> (x .?> "certificateArn")
            <*> (x .?> "certificateId")
            <*> (pure (fromEnum s))
      )

instance Hashable RegisterCACertificate

instance NFData RegisterCACertificate

instance ToHeaders RegisterCACertificate where
  toHeaders = const mempty

instance ToJSON RegisterCACertificate where
  toJSON RegisterCACertificate' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _rcacTags,
            ("registrationConfig" .=)
              <$> _rcacRegistrationConfig,
            Just ("caCertificate" .= _rcacCaCertificate),
            Just
              ( "verificationCertificate"
                  .= _rcacVerificationCertificate
              )
          ]
      )

instance ToPath RegisterCACertificate where
  toPath = const "/cacertificate"

instance ToQuery RegisterCACertificate where
  toQuery RegisterCACertificate' {..} =
    mconcat
      [ "allowAutoRegistration"
          =: _rcacAllowAutoRegistration,
        "setAsActive" =: _rcacSetAsActive
      ]

-- | The output from the RegisterCACertificateResponse operation.
--
--
--
-- /See:/ 'registerCACertificateResponse' smart constructor.
data RegisterCACertificateResponse = RegisterCACertificateResponse'
  { _rcacrrsCertificateARN ::
      !( Maybe
           Text
       ),
    _rcacrrsCertificateId ::
      !( Maybe
           Text
       ),
    _rcacrrsResponseStatus ::
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

-- | Creates a value of 'RegisterCACertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcacrrsCertificateARN' - The CA certificate ARN.
--
-- * 'rcacrrsCertificateId' - The CA certificate identifier.
--
-- * 'rcacrrsResponseStatus' - -- | The response status code.
registerCACertificateResponse ::
  -- | 'rcacrrsResponseStatus'
  Int ->
  RegisterCACertificateResponse
registerCACertificateResponse pResponseStatus_ =
  RegisterCACertificateResponse'
    { _rcacrrsCertificateARN =
        Nothing,
      _rcacrrsCertificateId = Nothing,
      _rcacrrsResponseStatus = pResponseStatus_
    }

-- | The CA certificate ARN.
rcacrrsCertificateARN :: Lens' RegisterCACertificateResponse (Maybe Text)
rcacrrsCertificateARN = lens _rcacrrsCertificateARN (\s a -> s {_rcacrrsCertificateARN = a})

-- | The CA certificate identifier.
rcacrrsCertificateId :: Lens' RegisterCACertificateResponse (Maybe Text)
rcacrrsCertificateId = lens _rcacrrsCertificateId (\s a -> s {_rcacrrsCertificateId = a})

-- | -- | The response status code.
rcacrrsResponseStatus :: Lens' RegisterCACertificateResponse Int
rcacrrsResponseStatus = lens _rcacrrsResponseStatus (\s a -> s {_rcacrrsResponseStatus = a})

instance NFData RegisterCACertificateResponse
