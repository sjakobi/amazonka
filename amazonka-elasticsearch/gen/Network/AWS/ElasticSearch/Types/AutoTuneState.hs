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
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneState
  ( AutoTuneState
      ( ..,
        AutoTuneStateDISABLED,
        AutoTuneStateDISABLEDANDROLLBACKCOMPLETE,
        AutoTuneStateDISABLEDANDROLLBACKERROR,
        AutoTuneStateDISABLEDANDROLLBACKINPROGRESS,
        AutoTuneStateDISABLEDANDROLLBACKSCHEDULED,
        AutoTuneStateDISABLEINPROGRESS,
        AutoTuneStateENABLED,
        AutoTuneStateENABLEINPROGRESS,
        AutoTuneStateERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the Auto-Tune state for the Elasticsearch domain. For valid
-- states see the
-- <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide>.
newtype AutoTuneState = AutoTuneState'
  { fromAutoTuneState ::
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

pattern AutoTuneStateDISABLED :: AutoTuneState
pattern AutoTuneStateDISABLED = AutoTuneState' "DISABLED"

pattern AutoTuneStateDISABLEDANDROLLBACKCOMPLETE :: AutoTuneState
pattern AutoTuneStateDISABLEDANDROLLBACKCOMPLETE = AutoTuneState' "DISABLED_AND_ROLLBACK_COMPLETE"

pattern AutoTuneStateDISABLEDANDROLLBACKERROR :: AutoTuneState
pattern AutoTuneStateDISABLEDANDROLLBACKERROR = AutoTuneState' "DISABLED_AND_ROLLBACK_ERROR"

pattern AutoTuneStateDISABLEDANDROLLBACKINPROGRESS :: AutoTuneState
pattern AutoTuneStateDISABLEDANDROLLBACKINPROGRESS = AutoTuneState' "DISABLED_AND_ROLLBACK_IN_PROGRESS"

pattern AutoTuneStateDISABLEDANDROLLBACKSCHEDULED :: AutoTuneState
pattern AutoTuneStateDISABLEDANDROLLBACKSCHEDULED = AutoTuneState' "DISABLED_AND_ROLLBACK_SCHEDULED"

pattern AutoTuneStateDISABLEINPROGRESS :: AutoTuneState
pattern AutoTuneStateDISABLEINPROGRESS = AutoTuneState' "DISABLE_IN_PROGRESS"

pattern AutoTuneStateENABLED :: AutoTuneState
pattern AutoTuneStateENABLED = AutoTuneState' "ENABLED"

pattern AutoTuneStateENABLEINPROGRESS :: AutoTuneState
pattern AutoTuneStateENABLEINPROGRESS = AutoTuneState' "ENABLE_IN_PROGRESS"

pattern AutoTuneStateERROR :: AutoTuneState
pattern AutoTuneStateERROR = AutoTuneState' "ERROR"

{-# COMPLETE
  AutoTuneStateDISABLED,
  AutoTuneStateDISABLEDANDROLLBACKCOMPLETE,
  AutoTuneStateDISABLEDANDROLLBACKERROR,
  AutoTuneStateDISABLEDANDROLLBACKINPROGRESS,
  AutoTuneStateDISABLEDANDROLLBACKSCHEDULED,
  AutoTuneStateDISABLEINPROGRESS,
  AutoTuneStateENABLED,
  AutoTuneStateENABLEINPROGRESS,
  AutoTuneStateERROR,
  AutoTuneState'
  #-}

instance Prelude.FromText AutoTuneState where
  parser = AutoTuneState' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoTuneState where
  toText (AutoTuneState' x) = x

instance Prelude.Hashable AutoTuneState

instance Prelude.NFData AutoTuneState

instance Prelude.ToByteString AutoTuneState

instance Prelude.ToQuery AutoTuneState

instance Prelude.ToHeader AutoTuneState

instance Prelude.FromJSON AutoTuneState where
  parseJSON = Prelude.parseJSONText "AutoTuneState"
