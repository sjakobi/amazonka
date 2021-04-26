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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AliasAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AliasAttributeType
  ( AliasAttributeType
      ( ..,
        AliasAttributeTypeEmail,
        AliasAttributeTypePhoneNumber,
        AliasAttributeTypePreferredUsername
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AliasAttributeType = AliasAttributeType'
  { fromAliasAttributeType ::
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

pattern AliasAttributeTypeEmail :: AliasAttributeType
pattern AliasAttributeTypeEmail = AliasAttributeType' "email"

pattern AliasAttributeTypePhoneNumber :: AliasAttributeType
pattern AliasAttributeTypePhoneNumber = AliasAttributeType' "phone_number"

pattern AliasAttributeTypePreferredUsername :: AliasAttributeType
pattern AliasAttributeTypePreferredUsername = AliasAttributeType' "preferred_username"

{-# COMPLETE
  AliasAttributeTypeEmail,
  AliasAttributeTypePhoneNumber,
  AliasAttributeTypePreferredUsername,
  AliasAttributeType'
  #-}

instance Prelude.FromText AliasAttributeType where
  parser = AliasAttributeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AliasAttributeType where
  toText (AliasAttributeType' x) = x

instance Prelude.Hashable AliasAttributeType

instance Prelude.NFData AliasAttributeType

instance Prelude.ToByteString AliasAttributeType

instance Prelude.ToQuery AliasAttributeType

instance Prelude.ToHeader AliasAttributeType

instance Prelude.ToJSON AliasAttributeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AliasAttributeType where
  parseJSON = Prelude.parseJSONText "AliasAttributeType"
