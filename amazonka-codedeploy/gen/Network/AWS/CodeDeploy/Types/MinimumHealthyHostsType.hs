{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.MinimumHealthyHostsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.MinimumHealthyHostsType
  ( MinimumHealthyHostsType
      ( ..,
        FleetPercent,
        HostCount
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MinimumHealthyHostsType
  = MinimumHealthyHostsType'
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

pattern FleetPercent :: MinimumHealthyHostsType
pattern FleetPercent = MinimumHealthyHostsType' "FLEET_PERCENT"

pattern HostCount :: MinimumHealthyHostsType
pattern HostCount = MinimumHealthyHostsType' "HOST_COUNT"

{-# COMPLETE
  FleetPercent,
  HostCount,
  MinimumHealthyHostsType'
  #-}

instance FromText MinimumHealthyHostsType where
  parser = (MinimumHealthyHostsType' . mk) <$> takeText

instance ToText MinimumHealthyHostsType where
  toText (MinimumHealthyHostsType' ci) = original ci

instance Hashable MinimumHealthyHostsType

instance NFData MinimumHealthyHostsType

instance ToByteString MinimumHealthyHostsType

instance ToQuery MinimumHealthyHostsType

instance ToHeader MinimumHealthyHostsType

instance ToJSON MinimumHealthyHostsType where
  toJSON = toJSONText

instance FromJSON MinimumHealthyHostsType where
  parseJSON = parseJSONText "MinimumHealthyHostsType"
