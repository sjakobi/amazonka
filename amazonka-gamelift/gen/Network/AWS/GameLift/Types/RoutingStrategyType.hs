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
-- Module      : Network.AWS.GameLift.Types.RoutingStrategyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.RoutingStrategyType
  ( RoutingStrategyType
      ( ..,
        RoutingStrategyTypeSIMPLE,
        RoutingStrategyTypeTERMINAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RoutingStrategyType = RoutingStrategyType'
  { fromRoutingStrategyType ::
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

pattern RoutingStrategyTypeSIMPLE :: RoutingStrategyType
pattern RoutingStrategyTypeSIMPLE = RoutingStrategyType' "SIMPLE"

pattern RoutingStrategyTypeTERMINAL :: RoutingStrategyType
pattern RoutingStrategyTypeTERMINAL = RoutingStrategyType' "TERMINAL"

{-# COMPLETE
  RoutingStrategyTypeSIMPLE,
  RoutingStrategyTypeTERMINAL,
  RoutingStrategyType'
  #-}

instance Prelude.FromText RoutingStrategyType where
  parser = RoutingStrategyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RoutingStrategyType where
  toText (RoutingStrategyType' x) = x

instance Prelude.Hashable RoutingStrategyType

instance Prelude.NFData RoutingStrategyType

instance Prelude.ToByteString RoutingStrategyType

instance Prelude.ToQuery RoutingStrategyType

instance Prelude.ToHeader RoutingStrategyType

instance Prelude.ToJSON RoutingStrategyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RoutingStrategyType where
  parseJSON = Prelude.parseJSONText "RoutingStrategyType"
