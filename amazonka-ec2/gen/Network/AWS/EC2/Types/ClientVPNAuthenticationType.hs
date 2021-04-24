{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNAuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNAuthenticationType
  ( ClientVPNAuthenticationType
      ( ..,
        CertificateAuthentication,
        DirectoryServiceAuthentication,
        FederatedAuthentication
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ClientVPNAuthenticationType
  = ClientVPNAuthenticationType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CertificateAuthentication :: ClientVPNAuthenticationType
pattern CertificateAuthentication = ClientVPNAuthenticationType' "certificate-authentication"

pattern DirectoryServiceAuthentication :: ClientVPNAuthenticationType
pattern DirectoryServiceAuthentication = ClientVPNAuthenticationType' "directory-service-authentication"

pattern FederatedAuthentication :: ClientVPNAuthenticationType
pattern FederatedAuthentication = ClientVPNAuthenticationType' "federated-authentication"

{-# COMPLETE
  CertificateAuthentication,
  DirectoryServiceAuthentication,
  FederatedAuthentication,
  ClientVPNAuthenticationType'
  #-}

instance FromText ClientVPNAuthenticationType where
  parser = (ClientVPNAuthenticationType' . mk) <$> takeText

instance ToText ClientVPNAuthenticationType where
  toText (ClientVPNAuthenticationType' ci) = original ci

instance Hashable ClientVPNAuthenticationType

instance NFData ClientVPNAuthenticationType

instance ToByteString ClientVPNAuthenticationType

instance ToQuery ClientVPNAuthenticationType

instance ToHeader ClientVPNAuthenticationType

instance FromXML ClientVPNAuthenticationType where
  parseXML = parseXMLText "ClientVPNAuthenticationType"
