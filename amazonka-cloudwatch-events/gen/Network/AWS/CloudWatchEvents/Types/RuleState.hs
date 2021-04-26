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
-- Module      : Network.AWS.CloudWatchEvents.Types.RuleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.RuleState
  ( RuleState
      ( ..,
        RuleStateDISABLED,
        RuleStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RuleState = RuleState'
  { fromRuleState ::
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

pattern RuleStateDISABLED :: RuleState
pattern RuleStateDISABLED = RuleState' "DISABLED"

pattern RuleStateENABLED :: RuleState
pattern RuleStateENABLED = RuleState' "ENABLED"

{-# COMPLETE
  RuleStateDISABLED,
  RuleStateENABLED,
  RuleState'
  #-}

instance Prelude.FromText RuleState where
  parser = RuleState' Prelude.<$> Prelude.takeText

instance Prelude.ToText RuleState where
  toText (RuleState' x) = x

instance Prelude.Hashable RuleState

instance Prelude.NFData RuleState

instance Prelude.ToByteString RuleState

instance Prelude.ToQuery RuleState

instance Prelude.ToHeader RuleState

instance Prelude.ToJSON RuleState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RuleState where
  parseJSON = Prelude.parseJSONText "RuleState"
