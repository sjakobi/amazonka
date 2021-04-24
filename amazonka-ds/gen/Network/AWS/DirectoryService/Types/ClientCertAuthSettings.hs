{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.ClientCertAuthSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.ClientCertAuthSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the client certificate authentication settings for the @RegisterCertificate@ and @DescribeCertificate@ operations.
--
--
--
-- /See:/ 'clientCertAuthSettings' smart constructor.
newtype ClientCertAuthSettings = ClientCertAuthSettings'
  { _ccasOCSPURL ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ClientCertAuthSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccasOCSPURL' - Specifies the URL of the default OCSP server used to check for revocation status. A secondary value to any OCSP address found in the AIA extension of the user certificate.
clientCertAuthSettings ::
  ClientCertAuthSettings
clientCertAuthSettings =
  ClientCertAuthSettings' {_ccasOCSPURL = Nothing}

-- | Specifies the URL of the default OCSP server used to check for revocation status. A secondary value to any OCSP address found in the AIA extension of the user certificate.
ccasOCSPURL :: Lens' ClientCertAuthSettings (Maybe Text)
ccasOCSPURL = lens _ccasOCSPURL (\s a -> s {_ccasOCSPURL = a})

instance FromJSON ClientCertAuthSettings where
  parseJSON =
    withObject
      "ClientCertAuthSettings"
      ( \x ->
          ClientCertAuthSettings' <$> (x .:? "OCSPUrl")
      )

instance Hashable ClientCertAuthSettings

instance NFData ClientCertAuthSettings

instance ToJSON ClientCertAuthSettings where
  toJSON ClientCertAuthSettings' {..} =
    object
      (catMaybes [("OCSPUrl" .=) <$> _ccasOCSPURL])
