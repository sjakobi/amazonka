{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetReplacementStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetReplacementStrategy
  ( FleetReplacementStrategy
      ( ..,
        FRSLaunch
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data FleetReplacementStrategy
  = FleetReplacementStrategy'
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

pattern FRSLaunch :: FleetReplacementStrategy
pattern FRSLaunch = FleetReplacementStrategy' "launch"

{-# COMPLETE
  FRSLaunch,
  FleetReplacementStrategy'
  #-}

instance FromText FleetReplacementStrategy where
  parser = (FleetReplacementStrategy' . mk) <$> takeText

instance ToText FleetReplacementStrategy where
  toText (FleetReplacementStrategy' ci) = original ci

instance Hashable FleetReplacementStrategy

instance NFData FleetReplacementStrategy

instance ToByteString FleetReplacementStrategy

instance ToQuery FleetReplacementStrategy

instance ToHeader FleetReplacementStrategy

instance FromXML FleetReplacementStrategy where
  parseXML = parseXMLText "FleetReplacementStrategy"
