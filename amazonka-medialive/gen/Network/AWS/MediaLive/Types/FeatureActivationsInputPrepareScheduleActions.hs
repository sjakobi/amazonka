{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FAIPSADisabled,
        FAIPSAEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Feature Activations Input Prepare Schedule Actions
data FeatureActivationsInputPrepareScheduleActions
  = FeatureActivationsInputPrepareScheduleActions'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FAIPSADisabled :: FeatureActivationsInputPrepareScheduleActions
pattern FAIPSADisabled = FeatureActivationsInputPrepareScheduleActions' "DISABLED"

pattern FAIPSAEnabled :: FeatureActivationsInputPrepareScheduleActions
pattern FAIPSAEnabled = FeatureActivationsInputPrepareScheduleActions' "ENABLED"

{-# COMPLETE
  FAIPSADisabled,
  FAIPSAEnabled,
  FeatureActivationsInputPrepareScheduleActions'
  #-}

instance FromText FeatureActivationsInputPrepareScheduleActions where
  parser = (FeatureActivationsInputPrepareScheduleActions' . mk) <$> takeText

instance ToText FeatureActivationsInputPrepareScheduleActions where
  toText (FeatureActivationsInputPrepareScheduleActions' ci) = original ci

instance Hashable FeatureActivationsInputPrepareScheduleActions

instance NFData FeatureActivationsInputPrepareScheduleActions

instance ToByteString FeatureActivationsInputPrepareScheduleActions

instance ToQuery FeatureActivationsInputPrepareScheduleActions

instance ToHeader FeatureActivationsInputPrepareScheduleActions

instance ToJSON FeatureActivationsInputPrepareScheduleActions where
  toJSON = toJSONText

instance FromJSON FeatureActivationsInputPrepareScheduleActions where
  parseJSON = parseJSONText "FeatureActivationsInputPrepareScheduleActions"
