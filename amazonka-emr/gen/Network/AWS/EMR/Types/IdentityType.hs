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
-- Module      : Network.AWS.EMR.Types.IdentityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.IdentityType
  ( IdentityType
      ( ..,
        IdentityTypeGROUP,
        IdentityTypeUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IdentityType = IdentityType'
  { fromIdentityType ::
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

pattern IdentityTypeGROUP :: IdentityType
pattern IdentityTypeGROUP = IdentityType' "GROUP"

pattern IdentityTypeUSER :: IdentityType
pattern IdentityTypeUSER = IdentityType' "USER"

{-# COMPLETE
  IdentityTypeGROUP,
  IdentityTypeUSER,
  IdentityType'
  #-}

instance Prelude.FromText IdentityType where
  parser = IdentityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText IdentityType where
  toText (IdentityType' x) = x

instance Prelude.Hashable IdentityType

instance Prelude.NFData IdentityType

instance Prelude.ToByteString IdentityType

instance Prelude.ToQuery IdentityType

instance Prelude.ToHeader IdentityType

instance Prelude.ToJSON IdentityType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON IdentityType where
  parseJSON = Prelude.parseJSONText "IdentityType"
