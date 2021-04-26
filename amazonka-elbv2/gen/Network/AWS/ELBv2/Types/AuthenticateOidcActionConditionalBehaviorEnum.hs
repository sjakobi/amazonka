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
-- Module      : Network.AWS.ELBv2.Types.AuthenticateOidcActionConditionalBehaviorEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.AuthenticateOidcActionConditionalBehaviorEnum
  ( AuthenticateOidcActionConditionalBehaviorEnum
      ( ..,
        AuthenticateOidcActionConditionalBehaviorEnumAllow,
        AuthenticateOidcActionConditionalBehaviorEnumAuthenticate,
        AuthenticateOidcActionConditionalBehaviorEnumDeny
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthenticateOidcActionConditionalBehaviorEnum = AuthenticateOidcActionConditionalBehaviorEnum'
  { fromAuthenticateOidcActionConditionalBehaviorEnum ::
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

pattern AuthenticateOidcActionConditionalBehaviorEnumAllow :: AuthenticateOidcActionConditionalBehaviorEnum
pattern AuthenticateOidcActionConditionalBehaviorEnumAllow = AuthenticateOidcActionConditionalBehaviorEnum' "allow"

pattern AuthenticateOidcActionConditionalBehaviorEnumAuthenticate :: AuthenticateOidcActionConditionalBehaviorEnum
pattern AuthenticateOidcActionConditionalBehaviorEnumAuthenticate = AuthenticateOidcActionConditionalBehaviorEnum' "authenticate"

pattern AuthenticateOidcActionConditionalBehaviorEnumDeny :: AuthenticateOidcActionConditionalBehaviorEnum
pattern AuthenticateOidcActionConditionalBehaviorEnumDeny = AuthenticateOidcActionConditionalBehaviorEnum' "deny"

{-# COMPLETE
  AuthenticateOidcActionConditionalBehaviorEnumAllow,
  AuthenticateOidcActionConditionalBehaviorEnumAuthenticate,
  AuthenticateOidcActionConditionalBehaviorEnumDeny,
  AuthenticateOidcActionConditionalBehaviorEnum'
  #-}

instance Prelude.FromText AuthenticateOidcActionConditionalBehaviorEnum where
  parser = AuthenticateOidcActionConditionalBehaviorEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthenticateOidcActionConditionalBehaviorEnum where
  toText (AuthenticateOidcActionConditionalBehaviorEnum' x) = x

instance Prelude.Hashable AuthenticateOidcActionConditionalBehaviorEnum

instance Prelude.NFData AuthenticateOidcActionConditionalBehaviorEnum

instance Prelude.ToByteString AuthenticateOidcActionConditionalBehaviorEnum

instance Prelude.ToQuery AuthenticateOidcActionConditionalBehaviorEnum

instance Prelude.ToHeader AuthenticateOidcActionConditionalBehaviorEnum

instance Prelude.FromXML AuthenticateOidcActionConditionalBehaviorEnum where
  parseXML = Prelude.parseXMLText "AuthenticateOidcActionConditionalBehaviorEnum"
