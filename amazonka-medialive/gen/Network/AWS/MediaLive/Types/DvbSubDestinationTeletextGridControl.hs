{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationTeletextGridControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationTeletextGridControl
  ( DvbSubDestinationTeletextGridControl
      ( ..,
        DSDTGCFixed,
        DSDTGCScaled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Dvb Sub Destination Teletext Grid Control
data DvbSubDestinationTeletextGridControl
  = DvbSubDestinationTeletextGridControl'
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

pattern DSDTGCFixed :: DvbSubDestinationTeletextGridControl
pattern DSDTGCFixed = DvbSubDestinationTeletextGridControl' "FIXED"

pattern DSDTGCScaled :: DvbSubDestinationTeletextGridControl
pattern DSDTGCScaled = DvbSubDestinationTeletextGridControl' "SCALED"

{-# COMPLETE
  DSDTGCFixed,
  DSDTGCScaled,
  DvbSubDestinationTeletextGridControl'
  #-}

instance FromText DvbSubDestinationTeletextGridControl where
  parser = (DvbSubDestinationTeletextGridControl' . mk) <$> takeText

instance ToText DvbSubDestinationTeletextGridControl where
  toText (DvbSubDestinationTeletextGridControl' ci) = original ci

instance Hashable DvbSubDestinationTeletextGridControl

instance NFData DvbSubDestinationTeletextGridControl

instance ToByteString DvbSubDestinationTeletextGridControl

instance ToQuery DvbSubDestinationTeletextGridControl

instance ToHeader DvbSubDestinationTeletextGridControl

instance ToJSON DvbSubDestinationTeletextGridControl where
  toJSON = toJSONText

instance FromJSON DvbSubDestinationTeletextGridControl where
  parseJSON = parseJSONText "DvbSubDestinationTeletextGridControl"
