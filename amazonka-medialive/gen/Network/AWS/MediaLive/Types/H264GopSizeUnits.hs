{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264GopSizeUnits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264GopSizeUnits
  ( H264GopSizeUnits
      ( ..,
        HGSUFrames,
        HGSUSeconds
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Gop Size Units
data H264GopSizeUnits = H264GopSizeUnits' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HGSUFrames :: H264GopSizeUnits
pattern HGSUFrames = H264GopSizeUnits' "FRAMES"

pattern HGSUSeconds :: H264GopSizeUnits
pattern HGSUSeconds = H264GopSizeUnits' "SECONDS"

{-# COMPLETE
  HGSUFrames,
  HGSUSeconds,
  H264GopSizeUnits'
  #-}

instance FromText H264GopSizeUnits where
  parser = (H264GopSizeUnits' . mk) <$> takeText

instance ToText H264GopSizeUnits where
  toText (H264GopSizeUnits' ci) = original ci

instance Hashable H264GopSizeUnits

instance NFData H264GopSizeUnits

instance ToByteString H264GopSizeUnits

instance ToQuery H264GopSizeUnits

instance ToHeader H264GopSizeUnits

instance ToJSON H264GopSizeUnits where
  toJSON = toJSONText

instance FromJSON H264GopSizeUnits where
  parseJSON = parseJSONText "H264GopSizeUnits"
