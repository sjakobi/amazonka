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
-- Module      : Network.AWS.Budgets.Types.TimeUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.TimeUnit
  ( TimeUnit
      ( ..,
        TimeUnitANNUALLY,
        TimeUnitDAILY,
        TimeUnitMONTHLY,
        TimeUnitQUARTERLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The time unit of the budget, such as MONTHLY or QUARTERLY.
newtype TimeUnit = TimeUnit'
  { fromTimeUnit ::
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

pattern TimeUnitANNUALLY :: TimeUnit
pattern TimeUnitANNUALLY = TimeUnit' "ANNUALLY"

pattern TimeUnitDAILY :: TimeUnit
pattern TimeUnitDAILY = TimeUnit' "DAILY"

pattern TimeUnitMONTHLY :: TimeUnit
pattern TimeUnitMONTHLY = TimeUnit' "MONTHLY"

pattern TimeUnitQUARTERLY :: TimeUnit
pattern TimeUnitQUARTERLY = TimeUnit' "QUARTERLY"

{-# COMPLETE
  TimeUnitANNUALLY,
  TimeUnitDAILY,
  TimeUnitMONTHLY,
  TimeUnitQUARTERLY,
  TimeUnit'
  #-}

instance Prelude.FromText TimeUnit where
  parser = TimeUnit' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimeUnit where
  toText (TimeUnit' x) = x

instance Prelude.Hashable TimeUnit

instance Prelude.NFData TimeUnit

instance Prelude.ToByteString TimeUnit

instance Prelude.ToQuery TimeUnit

instance Prelude.ToHeader TimeUnit

instance Prelude.ToJSON TimeUnit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TimeUnit where
  parseJSON = Prelude.parseJSONText "TimeUnit"
