{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265GopSizeUnits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265GopSizeUnits
  ( H265GopSizeUnits
      ( ..,
        HFrames,
        HSeconds
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Gop Size Units
data H265GopSizeUnits = H265GopSizeUnits' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HFrames :: H265GopSizeUnits
pattern HFrames = H265GopSizeUnits' "FRAMES"

pattern HSeconds :: H265GopSizeUnits
pattern HSeconds = H265GopSizeUnits' "SECONDS"

{-# COMPLETE
  HFrames,
  HSeconds,
  H265GopSizeUnits'
  #-}

instance FromText H265GopSizeUnits where
  parser = (H265GopSizeUnits' . mk) <$> takeText

instance ToText H265GopSizeUnits where
  toText (H265GopSizeUnits' ci) = original ci

instance Hashable H265GopSizeUnits

instance NFData H265GopSizeUnits

instance ToByteString H265GopSizeUnits

instance ToQuery H265GopSizeUnits

instance ToHeader H265GopSizeUnits

instance ToJSON H265GopSizeUnits where
  toJSON = toJSONText

instance FromJSON H265GopSizeUnits where
  parseJSON = parseJSONText "H265GopSizeUnits"
