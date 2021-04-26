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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.RecoveryOptionNameType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.RecoveryOptionNameType
  ( RecoveryOptionNameType
      ( ..,
        RecoveryOptionNameTypeAdminOnly,
        RecoveryOptionNameTypeVerifiedEmail,
        RecoveryOptionNameTypeVerifiedPhoneNumber
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecoveryOptionNameType = RecoveryOptionNameType'
  { fromRecoveryOptionNameType ::
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

pattern RecoveryOptionNameTypeAdminOnly :: RecoveryOptionNameType
pattern RecoveryOptionNameTypeAdminOnly = RecoveryOptionNameType' "admin_only"

pattern RecoveryOptionNameTypeVerifiedEmail :: RecoveryOptionNameType
pattern RecoveryOptionNameTypeVerifiedEmail = RecoveryOptionNameType' "verified_email"

pattern RecoveryOptionNameTypeVerifiedPhoneNumber :: RecoveryOptionNameType
pattern RecoveryOptionNameTypeVerifiedPhoneNumber = RecoveryOptionNameType' "verified_phone_number"

{-# COMPLETE
  RecoveryOptionNameTypeAdminOnly,
  RecoveryOptionNameTypeVerifiedEmail,
  RecoveryOptionNameTypeVerifiedPhoneNumber,
  RecoveryOptionNameType'
  #-}

instance Prelude.FromText RecoveryOptionNameType where
  parser = RecoveryOptionNameType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecoveryOptionNameType where
  toText (RecoveryOptionNameType' x) = x

instance Prelude.Hashable RecoveryOptionNameType

instance Prelude.NFData RecoveryOptionNameType

instance Prelude.ToByteString RecoveryOptionNameType

instance Prelude.ToQuery RecoveryOptionNameType

instance Prelude.ToHeader RecoveryOptionNameType

instance Prelude.ToJSON RecoveryOptionNameType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RecoveryOptionNameType where
  parseJSON = Prelude.parseJSONText "RecoveryOptionNameType"
