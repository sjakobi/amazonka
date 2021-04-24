{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Scte20Convert608To708
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte20Convert608To708
  ( Scte20Convert608To708
      ( ..,
        SCTDisabled,
        SCTUpconvert
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Scte20 Convert608 To708
data Scte20Convert608To708
  = Scte20Convert608To708'
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

pattern SCTDisabled :: Scte20Convert608To708
pattern SCTDisabled = Scte20Convert608To708' "DISABLED"

pattern SCTUpconvert :: Scte20Convert608To708
pattern SCTUpconvert = Scte20Convert608To708' "UPCONVERT"

{-# COMPLETE
  SCTDisabled,
  SCTUpconvert,
  Scte20Convert608To708'
  #-}

instance FromText Scte20Convert608To708 where
  parser = (Scte20Convert608To708' . mk) <$> takeText

instance ToText Scte20Convert608To708 where
  toText (Scte20Convert608To708' ci) = original ci

instance Hashable Scte20Convert608To708

instance NFData Scte20Convert608To708

instance ToByteString Scte20Convert608To708

instance ToQuery Scte20Convert608To708

instance ToHeader Scte20Convert608To708

instance ToJSON Scte20Convert608To708 where
  toJSON = toJSONText

instance FromJSON Scte20Convert608To708 where
  parseJSON = parseJSONText "Scte20Convert608To708"
