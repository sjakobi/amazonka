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
-- Module      : Network.AWS.EMR.Types.ComputeLimitsUnitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ComputeLimitsUnitType
  ( ComputeLimitsUnitType
      ( ..,
        ComputeLimitsUnitTypeInstanceFleetUnits,
        ComputeLimitsUnitTypeInstances,
        ComputeLimitsUnitTypeVCPU
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ComputeLimitsUnitType = ComputeLimitsUnitType'
  { fromComputeLimitsUnitType ::
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

pattern ComputeLimitsUnitTypeInstanceFleetUnits :: ComputeLimitsUnitType
pattern ComputeLimitsUnitTypeInstanceFleetUnits = ComputeLimitsUnitType' "InstanceFleetUnits"

pattern ComputeLimitsUnitTypeInstances :: ComputeLimitsUnitType
pattern ComputeLimitsUnitTypeInstances = ComputeLimitsUnitType' "Instances"

pattern ComputeLimitsUnitTypeVCPU :: ComputeLimitsUnitType
pattern ComputeLimitsUnitTypeVCPU = ComputeLimitsUnitType' "VCPU"

{-# COMPLETE
  ComputeLimitsUnitTypeInstanceFleetUnits,
  ComputeLimitsUnitTypeInstances,
  ComputeLimitsUnitTypeVCPU,
  ComputeLimitsUnitType'
  #-}

instance Prelude.FromText ComputeLimitsUnitType where
  parser = ComputeLimitsUnitType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComputeLimitsUnitType where
  toText (ComputeLimitsUnitType' x) = x

instance Prelude.Hashable ComputeLimitsUnitType

instance Prelude.NFData ComputeLimitsUnitType

instance Prelude.ToByteString ComputeLimitsUnitType

instance Prelude.ToQuery ComputeLimitsUnitType

instance Prelude.ToHeader ComputeLimitsUnitType

instance Prelude.ToJSON ComputeLimitsUnitType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ComputeLimitsUnitType where
  parseJSON = Prelude.parseJSONText "ComputeLimitsUnitType"
