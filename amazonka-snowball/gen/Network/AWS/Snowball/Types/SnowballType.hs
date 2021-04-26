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
-- Module      : Network.AWS.Snowball.Types.SnowballType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.SnowballType
  ( SnowballType
      ( ..,
        SnowballTypeEDGE,
        SnowballTypeEDGEC,
        SnowballTypeEDGECG,
        SnowballTypeEDGES,
        SnowballTypeSNC1HDD,
        SnowballTypeSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SnowballType = SnowballType'
  { fromSnowballType ::
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

pattern SnowballTypeEDGE :: SnowballType
pattern SnowballTypeEDGE = SnowballType' "EDGE"

pattern SnowballTypeEDGEC :: SnowballType
pattern SnowballTypeEDGEC = SnowballType' "EDGE_C"

pattern SnowballTypeEDGECG :: SnowballType
pattern SnowballTypeEDGECG = SnowballType' "EDGE_CG"

pattern SnowballTypeEDGES :: SnowballType
pattern SnowballTypeEDGES = SnowballType' "EDGE_S"

pattern SnowballTypeSNC1HDD :: SnowballType
pattern SnowballTypeSNC1HDD = SnowballType' "SNC1_HDD"

pattern SnowballTypeSTANDARD :: SnowballType
pattern SnowballTypeSTANDARD = SnowballType' "STANDARD"

{-# COMPLETE
  SnowballTypeEDGE,
  SnowballTypeEDGEC,
  SnowballTypeEDGECG,
  SnowballTypeEDGES,
  SnowballTypeSNC1HDD,
  SnowballTypeSTANDARD,
  SnowballType'
  #-}

instance Prelude.FromText SnowballType where
  parser = SnowballType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SnowballType where
  toText (SnowballType' x) = x

instance Prelude.Hashable SnowballType

instance Prelude.NFData SnowballType

instance Prelude.ToByteString SnowballType

instance Prelude.ToQuery SnowballType

instance Prelude.ToHeader SnowballType

instance Prelude.ToJSON SnowballType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SnowballType where
  parseJSON = Prelude.parseJSONText "SnowballType"
