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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UsernameAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UsernameAttributeType
  ( UsernameAttributeType
      ( ..,
        UsernameAttributeTypeEmail,
        UsernameAttributeTypePhoneNumber
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UsernameAttributeType = UsernameAttributeType'
  { fromUsernameAttributeType ::
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

pattern UsernameAttributeTypeEmail :: UsernameAttributeType
pattern UsernameAttributeTypeEmail = UsernameAttributeType' "email"

pattern UsernameAttributeTypePhoneNumber :: UsernameAttributeType
pattern UsernameAttributeTypePhoneNumber = UsernameAttributeType' "phone_number"

{-# COMPLETE
  UsernameAttributeTypeEmail,
  UsernameAttributeTypePhoneNumber,
  UsernameAttributeType'
  #-}

instance Prelude.FromText UsernameAttributeType where
  parser = UsernameAttributeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UsernameAttributeType where
  toText (UsernameAttributeType' x) = x

instance Prelude.Hashable UsernameAttributeType

instance Prelude.NFData UsernameAttributeType

instance Prelude.ToByteString UsernameAttributeType

instance Prelude.ToQuery UsernameAttributeType

instance Prelude.ToHeader UsernameAttributeType

instance Prelude.ToJSON UsernameAttributeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON UsernameAttributeType where
  parseJSON = Prelude.parseJSONText "UsernameAttributeType"
