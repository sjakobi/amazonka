{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationAlignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationAlignment
  ( DvbSubDestinationAlignment
      ( ..,
        Centered,
        Left',
        Smart
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Dvb Sub Destination Alignment
data DvbSubDestinationAlignment
  = DvbSubDestinationAlignment'
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

pattern Centered :: DvbSubDestinationAlignment
pattern Centered = DvbSubDestinationAlignment' "CENTERED"

pattern Left' :: DvbSubDestinationAlignment
pattern Left' = DvbSubDestinationAlignment' "LEFT"

pattern Smart :: DvbSubDestinationAlignment
pattern Smart = DvbSubDestinationAlignment' "SMART"

{-# COMPLETE
  Centered,
  Left',
  Smart,
  DvbSubDestinationAlignment'
  #-}

instance FromText DvbSubDestinationAlignment where
  parser = (DvbSubDestinationAlignment' . mk) <$> takeText

instance ToText DvbSubDestinationAlignment where
  toText (DvbSubDestinationAlignment' ci) = original ci

instance Hashable DvbSubDestinationAlignment

instance NFData DvbSubDestinationAlignment

instance ToByteString DvbSubDestinationAlignment

instance ToQuery DvbSubDestinationAlignment

instance ToHeader DvbSubDestinationAlignment

instance ToJSON DvbSubDestinationAlignment where
  toJSON = toJSONText

instance FromJSON DvbSubDestinationAlignment where
  parseJSON = parseJSONText "DvbSubDestinationAlignment"
