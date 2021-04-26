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
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneDesiredState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneDesiredState
  ( AutoTuneDesiredState
      ( ..,
        AutoTuneDesiredStateDISABLED,
        AutoTuneDesiredStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the Auto-Tune desired state. Valid values are ENABLED,
-- DISABLED.
newtype AutoTuneDesiredState = AutoTuneDesiredState'
  { fromAutoTuneDesiredState ::
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

pattern AutoTuneDesiredStateDISABLED :: AutoTuneDesiredState
pattern AutoTuneDesiredStateDISABLED = AutoTuneDesiredState' "DISABLED"

pattern AutoTuneDesiredStateENABLED :: AutoTuneDesiredState
pattern AutoTuneDesiredStateENABLED = AutoTuneDesiredState' "ENABLED"

{-# COMPLETE
  AutoTuneDesiredStateDISABLED,
  AutoTuneDesiredStateENABLED,
  AutoTuneDesiredState'
  #-}

instance Prelude.FromText AutoTuneDesiredState where
  parser = AutoTuneDesiredState' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoTuneDesiredState where
  toText (AutoTuneDesiredState' x) = x

instance Prelude.Hashable AutoTuneDesiredState

instance Prelude.NFData AutoTuneDesiredState

instance Prelude.ToByteString AutoTuneDesiredState

instance Prelude.ToQuery AutoTuneDesiredState

instance Prelude.ToHeader AutoTuneDesiredState

instance Prelude.ToJSON AutoTuneDesiredState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AutoTuneDesiredState where
  parseJSON = Prelude.parseJSONText "AutoTuneDesiredState"
