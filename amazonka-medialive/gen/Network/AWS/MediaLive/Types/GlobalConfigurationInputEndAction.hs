{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.GlobalConfigurationInputEndAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.GlobalConfigurationInputEndAction
  ( GlobalConfigurationInputEndAction
      ( ..,
        GCIEANone,
        GCIEASwitchAndLoopInputs
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Global Configuration Input End Action
data GlobalConfigurationInputEndAction
  = GlobalConfigurationInputEndAction'
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

pattern GCIEANone :: GlobalConfigurationInputEndAction
pattern GCIEANone = GlobalConfigurationInputEndAction' "NONE"

pattern GCIEASwitchAndLoopInputs :: GlobalConfigurationInputEndAction
pattern GCIEASwitchAndLoopInputs = GlobalConfigurationInputEndAction' "SWITCH_AND_LOOP_INPUTS"

{-# COMPLETE
  GCIEANone,
  GCIEASwitchAndLoopInputs,
  GlobalConfigurationInputEndAction'
  #-}

instance FromText GlobalConfigurationInputEndAction where
  parser = (GlobalConfigurationInputEndAction' . mk) <$> takeText

instance ToText GlobalConfigurationInputEndAction where
  toText (GlobalConfigurationInputEndAction' ci) = original ci

instance Hashable GlobalConfigurationInputEndAction

instance NFData GlobalConfigurationInputEndAction

instance ToByteString GlobalConfigurationInputEndAction

instance ToQuery GlobalConfigurationInputEndAction

instance ToHeader GlobalConfigurationInputEndAction

instance ToJSON GlobalConfigurationInputEndAction where
  toJSON = toJSONText

instance FromJSON GlobalConfigurationInputEndAction where
  parseJSON = parseJSONText "GlobalConfigurationInputEndAction"
