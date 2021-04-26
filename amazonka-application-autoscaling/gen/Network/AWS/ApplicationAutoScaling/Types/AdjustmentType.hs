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
-- Module      : Network.AWS.ApplicationAutoScaling.Types.AdjustmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.AdjustmentType
  ( AdjustmentType
      ( ..,
        AdjustmentTypeChangeInCapacity,
        AdjustmentTypeExactCapacity,
        AdjustmentTypePercentChangeInCapacity
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AdjustmentType = AdjustmentType'
  { fromAdjustmentType ::
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

pattern AdjustmentTypeChangeInCapacity :: AdjustmentType
pattern AdjustmentTypeChangeInCapacity = AdjustmentType' "ChangeInCapacity"

pattern AdjustmentTypeExactCapacity :: AdjustmentType
pattern AdjustmentTypeExactCapacity = AdjustmentType' "ExactCapacity"

pattern AdjustmentTypePercentChangeInCapacity :: AdjustmentType
pattern AdjustmentTypePercentChangeInCapacity = AdjustmentType' "PercentChangeInCapacity"

{-# COMPLETE
  AdjustmentTypeChangeInCapacity,
  AdjustmentTypeExactCapacity,
  AdjustmentTypePercentChangeInCapacity,
  AdjustmentType'
  #-}

instance Prelude.FromText AdjustmentType where
  parser = AdjustmentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AdjustmentType where
  toText (AdjustmentType' x) = x

instance Prelude.Hashable AdjustmentType

instance Prelude.NFData AdjustmentType

instance Prelude.ToByteString AdjustmentType

instance Prelude.ToQuery AdjustmentType

instance Prelude.ToHeader AdjustmentType

instance Prelude.ToJSON AdjustmentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AdjustmentType where
  parseJSON = Prelude.parseJSONText "AdjustmentType"
