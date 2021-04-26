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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.VerifiedAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.VerifiedAttributeType
  ( VerifiedAttributeType
      ( ..,
        VerifiedAttributeTypeEmail,
        VerifiedAttributeTypePhoneNumber
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VerifiedAttributeType = VerifiedAttributeType'
  { fromVerifiedAttributeType ::
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

pattern VerifiedAttributeTypeEmail :: VerifiedAttributeType
pattern VerifiedAttributeTypeEmail = VerifiedAttributeType' "email"

pattern VerifiedAttributeTypePhoneNumber :: VerifiedAttributeType
pattern VerifiedAttributeTypePhoneNumber = VerifiedAttributeType' "phone_number"

{-# COMPLETE
  VerifiedAttributeTypeEmail,
  VerifiedAttributeTypePhoneNumber,
  VerifiedAttributeType'
  #-}

instance Prelude.FromText VerifiedAttributeType where
  parser = VerifiedAttributeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText VerifiedAttributeType where
  toText (VerifiedAttributeType' x) = x

instance Prelude.Hashable VerifiedAttributeType

instance Prelude.NFData VerifiedAttributeType

instance Prelude.ToByteString VerifiedAttributeType

instance Prelude.ToQuery VerifiedAttributeType

instance Prelude.ToHeader VerifiedAttributeType

instance Prelude.ToJSON VerifiedAttributeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VerifiedAttributeType where
  parseJSON = Prelude.parseJSONText "VerifiedAttributeType"
