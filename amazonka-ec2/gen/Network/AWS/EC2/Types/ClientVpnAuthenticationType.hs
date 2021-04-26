{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVpnAuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVpnAuthenticationType
  ( ClientVpnAuthenticationType
      ( ..,
        ClientVpnAuthenticationTypeCertificateAuthentication,
        ClientVpnAuthenticationTypeDirectoryServiceAuthentication,
        ClientVpnAuthenticationTypeFederatedAuthentication
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ClientVpnAuthenticationType = ClientVpnAuthenticationType'
  { fromClientVpnAuthenticationType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ClientVpnAuthenticationTypeCertificateAuthentication :: ClientVpnAuthenticationType
pattern ClientVpnAuthenticationTypeCertificateAuthentication = ClientVpnAuthenticationType' "certificate-authentication"

pattern ClientVpnAuthenticationTypeDirectoryServiceAuthentication :: ClientVpnAuthenticationType
pattern ClientVpnAuthenticationTypeDirectoryServiceAuthentication = ClientVpnAuthenticationType' "directory-service-authentication"

pattern ClientVpnAuthenticationTypeFederatedAuthentication :: ClientVpnAuthenticationType
pattern ClientVpnAuthenticationTypeFederatedAuthentication = ClientVpnAuthenticationType' "federated-authentication"

{-# COMPLETE
  ClientVpnAuthenticationTypeCertificateAuthentication,
  ClientVpnAuthenticationTypeDirectoryServiceAuthentication,
  ClientVpnAuthenticationTypeFederatedAuthentication,
  ClientVpnAuthenticationType'
  #-}

instance Prelude.FromText ClientVpnAuthenticationType where
  parser = ClientVpnAuthenticationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClientVpnAuthenticationType where
  toText (ClientVpnAuthenticationType' x) = x

instance Prelude.Hashable ClientVpnAuthenticationType

instance Prelude.NFData ClientVpnAuthenticationType

instance Prelude.ToByteString ClientVpnAuthenticationType

instance Prelude.ToQuery ClientVpnAuthenticationType

instance Prelude.ToHeader ClientVpnAuthenticationType

instance Prelude.FromXML ClientVpnAuthenticationType where
  parseXML = Prelude.parseXMLText "ClientVpnAuthenticationType"
