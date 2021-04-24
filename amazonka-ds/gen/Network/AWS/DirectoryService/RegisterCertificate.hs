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
-- Module      : Network.AWS.DirectoryService.RegisterCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a certificate for a secure LDAP or client certificate authentication.
module Network.AWS.DirectoryService.RegisterCertificate
  ( -- * Creating a Request
    registerCertificate,
    RegisterCertificate,

    -- * Request Lenses
    rcClientCertAuthSettings,
    rcType,
    rcDirectoryId,
    rcCertificateData,

    -- * Destructuring the Response
    registerCertificateResponse,
    RegisterCertificateResponse,

    -- * Response Lenses
    rcrrsCertificateId,
    rcrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'registerCertificate' smart constructor.
data RegisterCertificate = RegisterCertificate'
  { _rcClientCertAuthSettings ::
      !(Maybe ClientCertAuthSettings),
    _rcType ::
      !(Maybe CertificateType),
    _rcDirectoryId :: !Text,
    _rcCertificateData :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcClientCertAuthSettings' - A @ClientCertAuthSettings@ object that contains client certificate authentication settings.
--
-- * 'rcType' - The function that the registered certificate performs. Valid values include @ClientLDAPS@ or @ClientCertAuth@ . The default value is @ClientLDAPS@ .
--
-- * 'rcDirectoryId' - The identifier of the directory.
--
-- * 'rcCertificateData' - The certificate PEM string that needs to be registered.
registerCertificate ::
  -- | 'rcDirectoryId'
  Text ->
  -- | 'rcCertificateData'
  Text ->
  RegisterCertificate
registerCertificate pDirectoryId_ pCertificateData_ =
  RegisterCertificate'
    { _rcClientCertAuthSettings =
        Nothing,
      _rcType = Nothing,
      _rcDirectoryId = pDirectoryId_,
      _rcCertificateData = pCertificateData_
    }

-- | A @ClientCertAuthSettings@ object that contains client certificate authentication settings.
rcClientCertAuthSettings :: Lens' RegisterCertificate (Maybe ClientCertAuthSettings)
rcClientCertAuthSettings = lens _rcClientCertAuthSettings (\s a -> s {_rcClientCertAuthSettings = a})

-- | The function that the registered certificate performs. Valid values include @ClientLDAPS@ or @ClientCertAuth@ . The default value is @ClientLDAPS@ .
rcType :: Lens' RegisterCertificate (Maybe CertificateType)
rcType = lens _rcType (\s a -> s {_rcType = a})

-- | The identifier of the directory.
rcDirectoryId :: Lens' RegisterCertificate Text
rcDirectoryId = lens _rcDirectoryId (\s a -> s {_rcDirectoryId = a})

-- | The certificate PEM string that needs to be registered.
rcCertificateData :: Lens' RegisterCertificate Text
rcCertificateData = lens _rcCertificateData (\s a -> s {_rcCertificateData = a})

instance AWSRequest RegisterCertificate where
  type
    Rs RegisterCertificate =
      RegisterCertificateResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          RegisterCertificateResponse'
            <$> (x .?> "CertificateId") <*> (pure (fromEnum s))
      )

instance Hashable RegisterCertificate

instance NFData RegisterCertificate

instance ToHeaders RegisterCertificate where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.RegisterCertificate" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RegisterCertificate where
  toJSON RegisterCertificate' {..} =
    object
      ( catMaybes
          [ ("ClientCertAuthSettings" .=)
              <$> _rcClientCertAuthSettings,
            ("Type" .=) <$> _rcType,
            Just ("DirectoryId" .= _rcDirectoryId),
            Just ("CertificateData" .= _rcCertificateData)
          ]
      )

instance ToPath RegisterCertificate where
  toPath = const "/"

instance ToQuery RegisterCertificate where
  toQuery = const mempty

-- | /See:/ 'registerCertificateResponse' smart constructor.
data RegisterCertificateResponse = RegisterCertificateResponse'
  { _rcrrsCertificateId ::
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
-- * 'rcrrsCertificateId' - The identifier of the certificate.
--
-- * 'rcrrsResponseStatus' - -- | The response status code.
registerCertificateResponse ::
  -- | 'rcrrsResponseStatus'
  Int ->
  RegisterCertificateResponse
registerCertificateResponse pResponseStatus_ =
  RegisterCertificateResponse'
    { _rcrrsCertificateId =
        Nothing,
      _rcrrsResponseStatus = pResponseStatus_
    }

-- | The identifier of the certificate.
rcrrsCertificateId :: Lens' RegisterCertificateResponse (Maybe Text)
rcrrsCertificateId = lens _rcrrsCertificateId (\s a -> s {_rcrrsCertificateId = a})

-- | -- | The response status code.
rcrrsResponseStatus :: Lens' RegisterCertificateResponse Int
rcrrsResponseStatus = lens _rcrrsResponseStatus (\s a -> s {_rcrrsResponseStatus = a})

instance NFData RegisterCertificateResponse
