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
-- Module      : Network.AWS.DirectoryService.DescribeCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays information about the certificate registered for secure LDAP or client certificate authentication.
module Network.AWS.DirectoryService.DescribeCertificate
  ( -- * Creating a Request
    describeCertificate,
    DescribeCertificate,

    -- * Request Lenses
    dDirectoryId,
    dCertificateId,

    -- * Destructuring the Response
    describeCertificateResponse,
    DescribeCertificateResponse,

    -- * Response Lenses
    drsCertificate,
    drsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCertificate' smart constructor.
data DescribeCertificate = DescribeCertificate'
  { _dDirectoryId ::
      !Text,
    _dCertificateId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDirectoryId' - The identifier of the directory.
--
-- * 'dCertificateId' - The identifier of the certificate.
describeCertificate ::
  -- | 'dDirectoryId'
  Text ->
  -- | 'dCertificateId'
  Text ->
  DescribeCertificate
describeCertificate pDirectoryId_ pCertificateId_ =
  DescribeCertificate'
    { _dDirectoryId = pDirectoryId_,
      _dCertificateId = pCertificateId_
    }

-- | The identifier of the directory.
dDirectoryId :: Lens' DescribeCertificate Text
dDirectoryId = lens _dDirectoryId (\s a -> s {_dDirectoryId = a})

-- | The identifier of the certificate.
dCertificateId :: Lens' DescribeCertificate Text
dCertificateId = lens _dCertificateId (\s a -> s {_dCertificateId = a})

instance AWSRequest DescribeCertificate where
  type
    Rs DescribeCertificate =
      DescribeCertificateResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DescribeCertificateResponse'
            <$> (x .?> "Certificate") <*> (pure (fromEnum s))
      )

instance Hashable DescribeCertificate

instance NFData DescribeCertificate

instance ToHeaders DescribeCertificate where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DescribeCertificate" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCertificate where
  toJSON DescribeCertificate' {..} =
    object
      ( catMaybes
          [ Just ("DirectoryId" .= _dDirectoryId),
            Just ("CertificateId" .= _dCertificateId)
          ]
      )

instance ToPath DescribeCertificate where
  toPath = const "/"

instance ToQuery DescribeCertificate where
  toQuery = const mempty

-- | /See:/ 'describeCertificateResponse' smart constructor.
data DescribeCertificateResponse = DescribeCertificateResponse'
  { _drsCertificate ::
      !( Maybe
           Certificate
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsCertificate' - Information about the certificate, including registered date time, certificate state, the reason for the state, expiration date time, and certificate common name.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeCertificateResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeCertificateResponse
describeCertificateResponse pResponseStatus_ =
  DescribeCertificateResponse'
    { _drsCertificate =
        Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | Information about the certificate, including registered date time, certificate state, the reason for the state, expiration date time, and certificate common name.
drsCertificate :: Lens' DescribeCertificateResponse (Maybe Certificate)
drsCertificate = lens _drsCertificate (\s a -> s {_drsCertificate = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeCertificateResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeCertificateResponse
