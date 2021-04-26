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
-- Module      : Network.AWS.GameLift.Types.ScalingAdjustmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.ScalingAdjustmentType
  ( ScalingAdjustmentType
      ( ..,
        ScalingAdjustmentTypeChangeInCapacity,
        ScalingAdjustmentTypeExactCapacity,
        ScalingAdjustmentTypePercentChangeInCapacity
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalingAdjustmentType = ScalingAdjustmentType'
  { fromScalingAdjustmentType ::
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

pattern ScalingAdjustmentTypeChangeInCapacity :: ScalingAdjustmentType
pattern ScalingAdjustmentTypeChangeInCapacity = ScalingAdjustmentType' "ChangeInCapacity"

pattern ScalingAdjustmentTypeExactCapacity :: ScalingAdjustmentType
pattern ScalingAdjustmentTypeExactCapacity = ScalingAdjustmentType' "ExactCapacity"

pattern ScalingAdjustmentTypePercentChangeInCapacity :: ScalingAdjustmentType
pattern ScalingAdjustmentTypePercentChangeInCapacity = ScalingAdjustmentType' "PercentChangeInCapacity"

{-# COMPLETE
  ScalingAdjustmentTypeChangeInCapacity,
  ScalingAdjustmentTypeExactCapacity,
  ScalingAdjustmentTypePercentChangeInCapacity,
  ScalingAdjustmentType'
  #-}

instance Prelude.FromText ScalingAdjustmentType where
  parser = ScalingAdjustmentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingAdjustmentType where
  toText (ScalingAdjustmentType' x) = x

instance Prelude.Hashable ScalingAdjustmentType

instance Prelude.NFData ScalingAdjustmentType

instance Prelude.ToByteString ScalingAdjustmentType

instance Prelude.ToQuery ScalingAdjustmentType

instance Prelude.ToHeader ScalingAdjustmentType

instance Prelude.ToJSON ScalingAdjustmentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScalingAdjustmentType where
  parseJSON = Prelude.parseJSONText "ScalingAdjustmentType"
