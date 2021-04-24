{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mpeg2GopSizeUnits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2GopSizeUnits
  ( Mpeg2GopSizeUnits
      ( ..,
        MGSUFrames,
        MGSUSeconds
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Mpeg2 Gop Size Units
data Mpeg2GopSizeUnits = Mpeg2GopSizeUnits' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MGSUFrames :: Mpeg2GopSizeUnits
pattern MGSUFrames = Mpeg2GopSizeUnits' "FRAMES"

pattern MGSUSeconds :: Mpeg2GopSizeUnits
pattern MGSUSeconds = Mpeg2GopSizeUnits' "SECONDS"

{-# COMPLETE
  MGSUFrames,
  MGSUSeconds,
  Mpeg2GopSizeUnits'
  #-}

instance FromText Mpeg2GopSizeUnits where
  parser = (Mpeg2GopSizeUnits' . mk) <$> takeText

instance ToText Mpeg2GopSizeUnits where
  toText (Mpeg2GopSizeUnits' ci) = original ci

instance Hashable Mpeg2GopSizeUnits

instance NFData Mpeg2GopSizeUnits

instance ToByteString Mpeg2GopSizeUnits

instance ToQuery Mpeg2GopSizeUnits

instance ToHeader Mpeg2GopSizeUnits

instance ToJSON Mpeg2GopSizeUnits where
  toJSON = toJSONText

instance FromJSON Mpeg2GopSizeUnits where
  parseJSON = parseJSONText "Mpeg2GopSizeUnits"
