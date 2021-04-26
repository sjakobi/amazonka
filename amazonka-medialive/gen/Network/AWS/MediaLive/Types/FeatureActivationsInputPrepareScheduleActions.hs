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
-- Module      : Network.AWS.MediaLive.Types.FeatureActivationsInputPrepareScheduleActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FeatureActivationsInputPrepareScheduleActions
  ( FeatureActivationsInputPrepareScheduleActions
      ( ..,
        FeatureActivationsInputPrepareScheduleActionsDISABLED,
        FeatureActivationsInputPrepareScheduleActionsENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Feature Activations Input Prepare Schedule Actions
newtype FeatureActivationsInputPrepareScheduleActions = FeatureActivationsInputPrepareScheduleActions'
  { fromFeatureActivationsInputPrepareScheduleActions ::
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

pattern FeatureActivationsInputPrepareScheduleActionsDISABLED :: FeatureActivationsInputPrepareScheduleActions
pattern FeatureActivationsInputPrepareScheduleActionsDISABLED = FeatureActivationsInputPrepareScheduleActions' "DISABLED"

pattern FeatureActivationsInputPrepareScheduleActionsENABLED :: FeatureActivationsInputPrepareScheduleActions
pattern FeatureActivationsInputPrepareScheduleActionsENABLED = FeatureActivationsInputPrepareScheduleActions' "ENABLED"

{-# COMPLETE
  FeatureActivationsInputPrepareScheduleActionsDISABLED,
  FeatureActivationsInputPrepareScheduleActionsENABLED,
  FeatureActivationsInputPrepareScheduleActions'
  #-}

instance Prelude.FromText FeatureActivationsInputPrepareScheduleActions where
  parser = FeatureActivationsInputPrepareScheduleActions' Prelude.<$> Prelude.takeText

instance Prelude.ToText FeatureActivationsInputPrepareScheduleActions where
  toText (FeatureActivationsInputPrepareScheduleActions' x) = x

instance Prelude.Hashable FeatureActivationsInputPrepareScheduleActions

instance Prelude.NFData FeatureActivationsInputPrepareScheduleActions

instance Prelude.ToByteString FeatureActivationsInputPrepareScheduleActions

instance Prelude.ToQuery FeatureActivationsInputPrepareScheduleActions

instance Prelude.ToHeader FeatureActivationsInputPrepareScheduleActions

instance Prelude.ToJSON FeatureActivationsInputPrepareScheduleActions where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FeatureActivationsInputPrepareScheduleActions where
  parseJSON = Prelude.parseJSONText "FeatureActivationsInputPrepareScheduleActions"
