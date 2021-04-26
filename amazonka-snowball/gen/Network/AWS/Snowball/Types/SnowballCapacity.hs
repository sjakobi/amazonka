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
-- Module      : Network.AWS.Snowball.Types.SnowballCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.SnowballCapacity
  ( SnowballCapacity
      ( ..,
        SnowballCapacityNoPreference,
        SnowballCapacityT100,
        SnowballCapacityT42,
        SnowballCapacityT50,
        SnowballCapacityT8,
        SnowballCapacityT80,
        SnowballCapacityT98
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SnowballCapacity = SnowballCapacity'
  { fromSnowballCapacity ::
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

pattern SnowballCapacityNoPreference :: SnowballCapacity
pattern SnowballCapacityNoPreference = SnowballCapacity' "NoPreference"

pattern SnowballCapacityT100 :: SnowballCapacity
pattern SnowballCapacityT100 = SnowballCapacity' "T100"

pattern SnowballCapacityT42 :: SnowballCapacity
pattern SnowballCapacityT42 = SnowballCapacity' "T42"

pattern SnowballCapacityT50 :: SnowballCapacity
pattern SnowballCapacityT50 = SnowballCapacity' "T50"

pattern SnowballCapacityT8 :: SnowballCapacity
pattern SnowballCapacityT8 = SnowballCapacity' "T8"

pattern SnowballCapacityT80 :: SnowballCapacity
pattern SnowballCapacityT80 = SnowballCapacity' "T80"

pattern SnowballCapacityT98 :: SnowballCapacity
pattern SnowballCapacityT98 = SnowballCapacity' "T98"

{-# COMPLETE
  SnowballCapacityNoPreference,
  SnowballCapacityT100,
  SnowballCapacityT42,
  SnowballCapacityT50,
  SnowballCapacityT8,
  SnowballCapacityT80,
  SnowballCapacityT98,
  SnowballCapacity'
  #-}

instance Prelude.FromText SnowballCapacity where
  parser = SnowballCapacity' Prelude.<$> Prelude.takeText

instance Prelude.ToText SnowballCapacity where
  toText (SnowballCapacity' x) = x

instance Prelude.Hashable SnowballCapacity

instance Prelude.NFData SnowballCapacity

instance Prelude.ToByteString SnowballCapacity

instance Prelude.ToQuery SnowballCapacity

instance Prelude.ToHeader SnowballCapacity

instance Prelude.ToJSON SnowballCapacity where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SnowballCapacity where
  parseJSON = Prelude.parseJSONText "SnowballCapacity"
