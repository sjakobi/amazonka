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
-- Module      : Network.AWS.DirectoryService.DeregisterCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes from the system the certificate that was registered for secure LDAP or client certificate authentication.
module Network.AWS.DirectoryService.DeregisterCertificate
  ( -- * Creating a Request
    deregisterCertificate,
    DeregisterCertificate,

    -- * Request Lenses
    dccDirectoryId,
    dccCertificateId,

    -- * Destructuring the Response
    deregisterCertificateResponse,
    DeregisterCertificateResponse,

    -- * Response Lenses
    dcrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deregisterCertificate' smart constructor.
data DeregisterCertificate = DeregisterCertificate'
  { _dccDirectoryId ::
      !Text,
    _dccCertificateId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeregisterCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dccDirectoryId' - The identifier of the directory.
--
-- * 'dccCertificateId' - The identifier of the certificate.
deregisterCertificate ::
  -- | 'dccDirectoryId'
  Text ->
  -- | 'dccCertificateId'
  Text ->
  DeregisterCertificate
deregisterCertificate pDirectoryId_ pCertificateId_ =
  DeregisterCertificate'
    { _dccDirectoryId =
        pDirectoryId_,
      _dccCertificateId = pCertificateId_
    }

-- | The identifier of the directory.
dccDirectoryId :: Lens' DeregisterCertificate Text
dccDirectoryId = lens _dccDirectoryId (\s a -> s {_dccDirectoryId = a})

-- | The identifier of the certificate.
dccCertificateId :: Lens' DeregisterCertificate Text
dccCertificateId = lens _dccCertificateId (\s a -> s {_dccCertificateId = a})

instance AWSRequest DeregisterCertificate where
  type
    Rs DeregisterCertificate =
      DeregisterCertificateResponse
  request = postJSON directoryService
  response =
    receiveEmpty
      ( \s h x ->
          DeregisterCertificateResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeregisterCertificate

instance NFData DeregisterCertificate

instance ToHeaders DeregisterCertificate where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DeregisterCertificate" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeregisterCertificate where
  toJSON DeregisterCertificate' {..} =
    object
      ( catMaybes
          [ Just ("DirectoryId" .= _dccDirectoryId),
            Just ("CertificateId" .= _dccCertificateId)
          ]
      )

instance ToPath DeregisterCertificate where
  toPath = const "/"

instance ToQuery DeregisterCertificate where
  toQuery = const mempty

-- | /See:/ 'deregisterCertificateResponse' smart constructor.
newtype DeregisterCertificateResponse = DeregisterCertificateResponse'
  { _dcrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeregisterCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
deregisterCertificateResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DeregisterCertificateResponse
deregisterCertificateResponse pResponseStatus_ =
  DeregisterCertificateResponse'
    { _dcrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DeregisterCertificateResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DeregisterCertificateResponse
