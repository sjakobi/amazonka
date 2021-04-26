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
-- Module      : Network.AWS.AlexaBusiness.Types.DistanceUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DistanceUnit
  ( DistanceUnit
      ( ..,
        DistanceUnitIMPERIAL,
        DistanceUnitMETRIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DistanceUnit = DistanceUnit'
  { fromDistanceUnit ::
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

pattern DistanceUnitIMPERIAL :: DistanceUnit
pattern DistanceUnitIMPERIAL = DistanceUnit' "IMPERIAL"

pattern DistanceUnitMETRIC :: DistanceUnit
pattern DistanceUnitMETRIC = DistanceUnit' "METRIC"

{-# COMPLETE
  DistanceUnitIMPERIAL,
  DistanceUnitMETRIC,
  DistanceUnit'
  #-}

instance Prelude.FromText DistanceUnit where
  parser = DistanceUnit' Prelude.<$> Prelude.takeText

instance Prelude.ToText DistanceUnit where
  toText (DistanceUnit' x) = x

instance Prelude.Hashable DistanceUnit

instance Prelude.NFData DistanceUnit

instance Prelude.ToByteString DistanceUnit

instance Prelude.ToQuery DistanceUnit

instance Prelude.ToHeader DistanceUnit

instance Prelude.ToJSON DistanceUnit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DistanceUnit where
  parseJSON = Prelude.parseJSONText "DistanceUnit"
