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
-- Module      : Network.AWS.WorkDocs.Types.PrincipalType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.PrincipalType
  ( PrincipalType
      ( ..,
        PrincipalTypeANONYMOUS,
        PrincipalTypeGROUP,
        PrincipalTypeINVITE,
        PrincipalTypeORGANIZATION,
        PrincipalTypeUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PrincipalType = PrincipalType'
  { fromPrincipalType ::
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

pattern PrincipalTypeANONYMOUS :: PrincipalType
pattern PrincipalTypeANONYMOUS = PrincipalType' "ANONYMOUS"

pattern PrincipalTypeGROUP :: PrincipalType
pattern PrincipalTypeGROUP = PrincipalType' "GROUP"

pattern PrincipalTypeINVITE :: PrincipalType
pattern PrincipalTypeINVITE = PrincipalType' "INVITE"

pattern PrincipalTypeORGANIZATION :: PrincipalType
pattern PrincipalTypeORGANIZATION = PrincipalType' "ORGANIZATION"

pattern PrincipalTypeUSER :: PrincipalType
pattern PrincipalTypeUSER = PrincipalType' "USER"

{-# COMPLETE
  PrincipalTypeANONYMOUS,
  PrincipalTypeGROUP,
  PrincipalTypeINVITE,
  PrincipalTypeORGANIZATION,
  PrincipalTypeUSER,
  PrincipalType'
  #-}

instance Prelude.FromText PrincipalType where
  parser = PrincipalType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PrincipalType where
  toText (PrincipalType' x) = x

instance Prelude.Hashable PrincipalType

instance Prelude.NFData PrincipalType

instance Prelude.ToByteString PrincipalType

instance Prelude.ToQuery PrincipalType

instance Prelude.ToHeader PrincipalType

instance Prelude.ToJSON PrincipalType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PrincipalType where
  parseJSON = Prelude.parseJSONText "PrincipalType"
