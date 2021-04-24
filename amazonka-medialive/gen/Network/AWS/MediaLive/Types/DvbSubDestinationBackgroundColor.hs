{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationBackgroundColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationBackgroundColor
  ( DvbSubDestinationBackgroundColor
      ( ..,
        DSDBCBlack,
        DSDBCNone,
        DSDBCWhite
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Dvb Sub Destination Background Color
data DvbSubDestinationBackgroundColor
  = DvbSubDestinationBackgroundColor'
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

pattern DSDBCBlack :: DvbSubDestinationBackgroundColor
pattern DSDBCBlack = DvbSubDestinationBackgroundColor' "BLACK"

pattern DSDBCNone :: DvbSubDestinationBackgroundColor
pattern DSDBCNone = DvbSubDestinationBackgroundColor' "NONE"

pattern DSDBCWhite :: DvbSubDestinationBackgroundColor
pattern DSDBCWhite = DvbSubDestinationBackgroundColor' "WHITE"

{-# COMPLETE
  DSDBCBlack,
  DSDBCNone,
  DSDBCWhite,
  DvbSubDestinationBackgroundColor'
  #-}

instance FromText DvbSubDestinationBackgroundColor where
  parser = (DvbSubDestinationBackgroundColor' . mk) <$> takeText

instance ToText DvbSubDestinationBackgroundColor where
  toText (DvbSubDestinationBackgroundColor' ci) = original ci

instance Hashable DvbSubDestinationBackgroundColor

instance NFData DvbSubDestinationBackgroundColor

instance ToByteString DvbSubDestinationBackgroundColor

instance ToQuery DvbSubDestinationBackgroundColor

instance ToHeader DvbSubDestinationBackgroundColor

instance ToJSON DvbSubDestinationBackgroundColor where
  toJSON = toJSONText

instance FromJSON DvbSubDestinationBackgroundColor where
  parseJSON = parseJSONText "DvbSubDestinationBackgroundColor"
