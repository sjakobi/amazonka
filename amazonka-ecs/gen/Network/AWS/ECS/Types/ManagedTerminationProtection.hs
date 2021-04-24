{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ManagedTerminationProtection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ManagedTerminationProtection
  ( ManagedTerminationProtection
      ( ..,
        MTPDisabled,
        MTPEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ManagedTerminationProtection
  = ManagedTerminationProtection'
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

pattern MTPDisabled :: ManagedTerminationProtection
pattern MTPDisabled = ManagedTerminationProtection' "DISABLED"

pattern MTPEnabled :: ManagedTerminationProtection
pattern MTPEnabled = ManagedTerminationProtection' "ENABLED"

{-# COMPLETE
  MTPDisabled,
  MTPEnabled,
  ManagedTerminationProtection'
  #-}

instance FromText ManagedTerminationProtection where
  parser = (ManagedTerminationProtection' . mk) <$> takeText

instance ToText ManagedTerminationProtection where
  toText (ManagedTerminationProtection' ci) = original ci

instance Hashable ManagedTerminationProtection

instance NFData ManagedTerminationProtection

instance ToByteString ManagedTerminationProtection

instance ToQuery ManagedTerminationProtection

instance ToHeader ManagedTerminationProtection

instance ToJSON ManagedTerminationProtection where
  toJSON = toJSONText

instance FromJSON ManagedTerminationProtection where
  parseJSON = parseJSONText "ManagedTerminationProtection"
