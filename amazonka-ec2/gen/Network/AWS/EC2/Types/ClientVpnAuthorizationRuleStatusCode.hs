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
-- Module      : Network.AWS.EC2.Types.ClientVpnAuthorizationRuleStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVpnAuthorizationRuleStatusCode
  ( ClientVpnAuthorizationRuleStatusCode
      ( ..,
        ClientVpnAuthorizationRuleStatusCodeActive,
        ClientVpnAuthorizationRuleStatusCodeAuthorizing,
        ClientVpnAuthorizationRuleStatusCodeFailed,
        ClientVpnAuthorizationRuleStatusCodeRevoking
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ClientVpnAuthorizationRuleStatusCode = ClientVpnAuthorizationRuleStatusCode'
  { fromClientVpnAuthorizationRuleStatusCode ::
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

pattern ClientVpnAuthorizationRuleStatusCodeActive :: ClientVpnAuthorizationRuleStatusCode
pattern ClientVpnAuthorizationRuleStatusCodeActive = ClientVpnAuthorizationRuleStatusCode' "active"

pattern ClientVpnAuthorizationRuleStatusCodeAuthorizing :: ClientVpnAuthorizationRuleStatusCode
pattern ClientVpnAuthorizationRuleStatusCodeAuthorizing = ClientVpnAuthorizationRuleStatusCode' "authorizing"

pattern ClientVpnAuthorizationRuleStatusCodeFailed :: ClientVpnAuthorizationRuleStatusCode
pattern ClientVpnAuthorizationRuleStatusCodeFailed = ClientVpnAuthorizationRuleStatusCode' "failed"

pattern ClientVpnAuthorizationRuleStatusCodeRevoking :: ClientVpnAuthorizationRuleStatusCode
pattern ClientVpnAuthorizationRuleStatusCodeRevoking = ClientVpnAuthorizationRuleStatusCode' "revoking"

{-# COMPLETE
  ClientVpnAuthorizationRuleStatusCodeActive,
  ClientVpnAuthorizationRuleStatusCodeAuthorizing,
  ClientVpnAuthorizationRuleStatusCodeFailed,
  ClientVpnAuthorizationRuleStatusCodeRevoking,
  ClientVpnAuthorizationRuleStatusCode'
  #-}

instance Prelude.FromText ClientVpnAuthorizationRuleStatusCode where
  parser = ClientVpnAuthorizationRuleStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClientVpnAuthorizationRuleStatusCode where
  toText (ClientVpnAuthorizationRuleStatusCode' x) = x

instance Prelude.Hashable ClientVpnAuthorizationRuleStatusCode

instance Prelude.NFData ClientVpnAuthorizationRuleStatusCode

instance Prelude.ToByteString ClientVpnAuthorizationRuleStatusCode

instance Prelude.ToQuery ClientVpnAuthorizationRuleStatusCode

instance Prelude.ToHeader ClientVpnAuthorizationRuleStatusCode

instance Prelude.FromXML ClientVpnAuthorizationRuleStatusCode where
  parseXML = Prelude.parseXMLText "ClientVpnAuthorizationRuleStatusCode"
