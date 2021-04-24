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
-- Module      : Network.AWS.IoT.DescribeCACertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a registered CA certificate.
module Network.AWS.IoT.DescribeCACertificate
  ( -- * Creating a Request
    describeCACertificate,
    DescribeCACertificate,

    -- * Request Lenses
    desCertificateId,

    -- * Destructuring the Response
    describeCACertificateResponse,
    DescribeCACertificateResponse,

    -- * Response Lenses
    dcacrrsCertificateDescription,
    dcacrrsRegistrationConfig,
    dcacrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the DescribeCACertificate operation.
--
--
--
-- /See:/ 'describeCACertificate' smart constructor.
newtype DescribeCACertificate = DescribeCACertificate'
  { _desCertificateId ::
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

-- | Creates a value of 'DescribeCACertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desCertificateId' - The CA certificate identifier.
describeCACertificate ::
  -- | 'desCertificateId'
  Text ->
  DescribeCACertificate
describeCACertificate pCertificateId_ =
  DescribeCACertificate'
    { _desCertificateId =
        pCertificateId_
    }

-- | The CA certificate identifier.
desCertificateId :: Lens' DescribeCACertificate Text
desCertificateId = lens _desCertificateId (\s a -> s {_desCertificateId = a})

instance AWSRequest DescribeCACertificate where
  type
    Rs DescribeCACertificate =
      DescribeCACertificateResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeCACertificateResponse'
            <$> (x .?> "certificateDescription")
            <*> (x .?> "registrationConfig")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCACertificate

instance NFData DescribeCACertificate

instance ToHeaders DescribeCACertificate where
  toHeaders = const mempty

instance ToPath DescribeCACertificate where
  toPath DescribeCACertificate' {..} =
    mconcat ["/cacertificate/", toBS _desCertificateId]

instance ToQuery DescribeCACertificate where
  toQuery = const mempty

-- | The output from the DescribeCACertificate operation.
--
--
--
-- /See:/ 'describeCACertificateResponse' smart constructor.
data DescribeCACertificateResponse = DescribeCACertificateResponse'
  { _dcacrrsCertificateDescription ::
      !( Maybe
           CACertificateDescription
       ),
    _dcacrrsRegistrationConfig ::
      !( Maybe
           RegistrationConfig
       ),
    _dcacrrsResponseStatus ::
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

-- | Creates a value of 'DescribeCACertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcacrrsCertificateDescription' - The CA certificate description.
--
-- * 'dcacrrsRegistrationConfig' - Information about the registration configuration.
--
-- * 'dcacrrsResponseStatus' - -- | The response status code.
describeCACertificateResponse ::
  -- | 'dcacrrsResponseStatus'
  Int ->
  DescribeCACertificateResponse
describeCACertificateResponse pResponseStatus_ =
  DescribeCACertificateResponse'
    { _dcacrrsCertificateDescription =
        Nothing,
      _dcacrrsRegistrationConfig = Nothing,
      _dcacrrsResponseStatus = pResponseStatus_
    }

-- | The CA certificate description.
dcacrrsCertificateDescription :: Lens' DescribeCACertificateResponse (Maybe CACertificateDescription)
dcacrrsCertificateDescription = lens _dcacrrsCertificateDescription (\s a -> s {_dcacrrsCertificateDescription = a})

-- | Information about the registration configuration.
dcacrrsRegistrationConfig :: Lens' DescribeCACertificateResponse (Maybe RegistrationConfig)
dcacrrsRegistrationConfig = lens _dcacrrsRegistrationConfig (\s a -> s {_dcacrrsRegistrationConfig = a})

-- | -- | The response status code.
dcacrrsResponseStatus :: Lens' DescribeCACertificateResponse Int
dcacrrsResponseStatus = lens _dcacrrsResponseStatus (\s a -> s {_dcacrrsResponseStatus = a})

instance NFData DescribeCACertificateResponse
