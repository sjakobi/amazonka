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
-- Module      : Network.AWS.Config.Types.ConfigRuleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigRuleState
  ( ConfigRuleState
      ( ..,
        ConfigRuleStateACTIVE,
        ConfigRuleStateDELETING,
        ConfigRuleStateDELETINGRESULTS,
        ConfigRuleStateEVALUATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConfigRuleState = ConfigRuleState'
  { fromConfigRuleState ::
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

pattern ConfigRuleStateACTIVE :: ConfigRuleState
pattern ConfigRuleStateACTIVE = ConfigRuleState' "ACTIVE"

pattern ConfigRuleStateDELETING :: ConfigRuleState
pattern ConfigRuleStateDELETING = ConfigRuleState' "DELETING"

pattern ConfigRuleStateDELETINGRESULTS :: ConfigRuleState
pattern ConfigRuleStateDELETINGRESULTS = ConfigRuleState' "DELETING_RESULTS"

pattern ConfigRuleStateEVALUATING :: ConfigRuleState
pattern ConfigRuleStateEVALUATING = ConfigRuleState' "EVALUATING"

{-# COMPLETE
  ConfigRuleStateACTIVE,
  ConfigRuleStateDELETING,
  ConfigRuleStateDELETINGRESULTS,
  ConfigRuleStateEVALUATING,
  ConfigRuleState'
  #-}

instance Prelude.FromText ConfigRuleState where
  parser = ConfigRuleState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConfigRuleState where
  toText (ConfigRuleState' x) = x

instance Prelude.Hashable ConfigRuleState

instance Prelude.NFData ConfigRuleState

instance Prelude.ToByteString ConfigRuleState

instance Prelude.ToQuery ConfigRuleState

instance Prelude.ToHeader ConfigRuleState

instance Prelude.ToJSON ConfigRuleState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConfigRuleState where
  parseJSON = Prelude.parseJSONText "ConfigRuleState"
