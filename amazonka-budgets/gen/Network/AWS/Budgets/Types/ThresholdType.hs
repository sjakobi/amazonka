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
-- Module      : Network.AWS.Budgets.Types.ThresholdType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ThresholdType
  ( ThresholdType
      ( ..,
        ThresholdTypeABSOLUTEVALUE,
        ThresholdTypePERCENTAGE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of threshold for a notification.
newtype ThresholdType = ThresholdType'
  { fromThresholdType ::
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

pattern ThresholdTypeABSOLUTEVALUE :: ThresholdType
pattern ThresholdTypeABSOLUTEVALUE = ThresholdType' "ABSOLUTE_VALUE"

pattern ThresholdTypePERCENTAGE :: ThresholdType
pattern ThresholdTypePERCENTAGE = ThresholdType' "PERCENTAGE"

{-# COMPLETE
  ThresholdTypeABSOLUTEVALUE,
  ThresholdTypePERCENTAGE,
  ThresholdType'
  #-}

instance Prelude.FromText ThresholdType where
  parser = ThresholdType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ThresholdType where
  toText (ThresholdType' x) = x

instance Prelude.Hashable ThresholdType

instance Prelude.NFData ThresholdType

instance Prelude.ToByteString ThresholdType

instance Prelude.ToQuery ThresholdType

instance Prelude.ToHeader ThresholdType

instance Prelude.ToJSON ThresholdType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ThresholdType where
  parseJSON = Prelude.parseJSONText "ThresholdType"
