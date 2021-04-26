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
-- Module      : Network.AWS.GameLift.Types.BalancingStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.BalancingStrategy
  ( BalancingStrategy
      ( ..,
        BalancingStrategyONDEMANDONLY,
        BalancingStrategySPOTONLY,
        BalancingStrategySPOTPREFERRED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BalancingStrategy = BalancingStrategy'
  { fromBalancingStrategy ::
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

pattern BalancingStrategyONDEMANDONLY :: BalancingStrategy
pattern BalancingStrategyONDEMANDONLY = BalancingStrategy' "ON_DEMAND_ONLY"

pattern BalancingStrategySPOTONLY :: BalancingStrategy
pattern BalancingStrategySPOTONLY = BalancingStrategy' "SPOT_ONLY"

pattern BalancingStrategySPOTPREFERRED :: BalancingStrategy
pattern BalancingStrategySPOTPREFERRED = BalancingStrategy' "SPOT_PREFERRED"

{-# COMPLETE
  BalancingStrategyONDEMANDONLY,
  BalancingStrategySPOTONLY,
  BalancingStrategySPOTPREFERRED,
  BalancingStrategy'
  #-}

instance Prelude.FromText BalancingStrategy where
  parser = BalancingStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText BalancingStrategy where
  toText (BalancingStrategy' x) = x

instance Prelude.Hashable BalancingStrategy

instance Prelude.NFData BalancingStrategy

instance Prelude.ToByteString BalancingStrategy

instance Prelude.ToQuery BalancingStrategy

instance Prelude.ToHeader BalancingStrategy

instance Prelude.ToJSON BalancingStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BalancingStrategy where
  parseJSON = Prelude.parseJSONText "BalancingStrategy"
