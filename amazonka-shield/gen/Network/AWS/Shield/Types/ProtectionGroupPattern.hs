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
-- Module      : Network.AWS.Shield.Types.ProtectionGroupPattern
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.ProtectionGroupPattern
  ( ProtectionGroupPattern
      ( ..,
        ProtectionGroupPatternALL,
        ProtectionGroupPatternARBITRARY,
        ProtectionGroupPatternBYRESOURCETYPE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProtectionGroupPattern = ProtectionGroupPattern'
  { fromProtectionGroupPattern ::
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

pattern ProtectionGroupPatternALL :: ProtectionGroupPattern
pattern ProtectionGroupPatternALL = ProtectionGroupPattern' "ALL"

pattern ProtectionGroupPatternARBITRARY :: ProtectionGroupPattern
pattern ProtectionGroupPatternARBITRARY = ProtectionGroupPattern' "ARBITRARY"

pattern ProtectionGroupPatternBYRESOURCETYPE :: ProtectionGroupPattern
pattern ProtectionGroupPatternBYRESOURCETYPE = ProtectionGroupPattern' "BY_RESOURCE_TYPE"

{-# COMPLETE
  ProtectionGroupPatternALL,
  ProtectionGroupPatternARBITRARY,
  ProtectionGroupPatternBYRESOURCETYPE,
  ProtectionGroupPattern'
  #-}

instance Prelude.FromText ProtectionGroupPattern where
  parser = ProtectionGroupPattern' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProtectionGroupPattern where
  toText (ProtectionGroupPattern' x) = x

instance Prelude.Hashable ProtectionGroupPattern

instance Prelude.NFData ProtectionGroupPattern

instance Prelude.ToByteString ProtectionGroupPattern

instance Prelude.ToQuery ProtectionGroupPattern

instance Prelude.ToHeader ProtectionGroupPattern

instance Prelude.ToJSON ProtectionGroupPattern where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProtectionGroupPattern where
  parseJSON = Prelude.parseJSONText "ProtectionGroupPattern"
