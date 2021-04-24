{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.EmbeddedScte20Detection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.EmbeddedScte20Detection
  ( EmbeddedScte20Detection
      ( ..,
        ESDAuto,
        ESDOff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Embedded Scte20 Detection
data EmbeddedScte20Detection
  = EmbeddedScte20Detection'
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

pattern ESDAuto :: EmbeddedScte20Detection
pattern ESDAuto = EmbeddedScte20Detection' "AUTO"

pattern ESDOff :: EmbeddedScte20Detection
pattern ESDOff = EmbeddedScte20Detection' "OFF"

{-# COMPLETE
  ESDAuto,
  ESDOff,
  EmbeddedScte20Detection'
  #-}

instance FromText EmbeddedScte20Detection where
  parser = (EmbeddedScte20Detection' . mk) <$> takeText

instance ToText EmbeddedScte20Detection where
  toText (EmbeddedScte20Detection' ci) = original ci

instance Hashable EmbeddedScte20Detection

instance NFData EmbeddedScte20Detection

instance ToByteString EmbeddedScte20Detection

instance ToQuery EmbeddedScte20Detection

instance ToHeader EmbeddedScte20Detection

instance ToJSON EmbeddedScte20Detection where
  toJSON = toJSONText

instance FromJSON EmbeddedScte20Detection where
  parseJSON = parseJSONText "EmbeddedScte20Detection"
