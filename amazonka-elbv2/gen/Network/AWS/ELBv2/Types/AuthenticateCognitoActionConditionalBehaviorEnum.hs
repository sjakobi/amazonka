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
-- Module      : Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
  ( AuthenticateCognitoActionConditionalBehaviorEnum
      ( ..,
        AuthenticateCognitoActionConditionalBehaviorEnumAllow,
        AuthenticateCognitoActionConditionalBehaviorEnumAuthenticate,
        AuthenticateCognitoActionConditionalBehaviorEnumDeny
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthenticateCognitoActionConditionalBehaviorEnum = AuthenticateCognitoActionConditionalBehaviorEnum'
  { fromAuthenticateCognitoActionConditionalBehaviorEnum ::
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

pattern AuthenticateCognitoActionConditionalBehaviorEnumAllow :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern AuthenticateCognitoActionConditionalBehaviorEnumAllow = AuthenticateCognitoActionConditionalBehaviorEnum' "allow"

pattern AuthenticateCognitoActionConditionalBehaviorEnumAuthenticate :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern AuthenticateCognitoActionConditionalBehaviorEnumAuthenticate = AuthenticateCognitoActionConditionalBehaviorEnum' "authenticate"

pattern AuthenticateCognitoActionConditionalBehaviorEnumDeny :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern AuthenticateCognitoActionConditionalBehaviorEnumDeny = AuthenticateCognitoActionConditionalBehaviorEnum' "deny"

{-# COMPLETE
  AuthenticateCognitoActionConditionalBehaviorEnumAllow,
  AuthenticateCognitoActionConditionalBehaviorEnumAuthenticate,
  AuthenticateCognitoActionConditionalBehaviorEnumDeny,
  AuthenticateCognitoActionConditionalBehaviorEnum'
  #-}

instance Prelude.FromText AuthenticateCognitoActionConditionalBehaviorEnum where
  parser = AuthenticateCognitoActionConditionalBehaviorEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthenticateCognitoActionConditionalBehaviorEnum where
  toText (AuthenticateCognitoActionConditionalBehaviorEnum' x) = x

instance Prelude.Hashable AuthenticateCognitoActionConditionalBehaviorEnum

instance Prelude.NFData AuthenticateCognitoActionConditionalBehaviorEnum

instance Prelude.ToByteString AuthenticateCognitoActionConditionalBehaviorEnum

instance Prelude.ToQuery AuthenticateCognitoActionConditionalBehaviorEnum

instance Prelude.ToHeader AuthenticateCognitoActionConditionalBehaviorEnum

instance Prelude.FromXML AuthenticateCognitoActionConditionalBehaviorEnum where
  parseXML = Prelude.parseXMLText "AuthenticateCognitoActionConditionalBehaviorEnum"
