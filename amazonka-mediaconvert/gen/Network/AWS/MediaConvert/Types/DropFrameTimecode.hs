{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DropFrameTimecode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DropFrameTimecode
  ( DropFrameTimecode
      ( ..,
        DFTDisabled,
        DFTEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion (TimecodeInsertion) is enabled.
data DropFrameTimecode = DropFrameTimecode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DFTDisabled :: DropFrameTimecode
pattern DFTDisabled = DropFrameTimecode' "DISABLED"

pattern DFTEnabled :: DropFrameTimecode
pattern DFTEnabled = DropFrameTimecode' "ENABLED"

{-# COMPLETE
  DFTDisabled,
  DFTEnabled,
  DropFrameTimecode'
  #-}

instance FromText DropFrameTimecode where
  parser = (DropFrameTimecode' . mk) <$> takeText

instance ToText DropFrameTimecode where
  toText (DropFrameTimecode' ci) = original ci

instance Hashable DropFrameTimecode

instance NFData DropFrameTimecode

instance ToByteString DropFrameTimecode

instance ToQuery DropFrameTimecode

instance ToHeader DropFrameTimecode

instance ToJSON DropFrameTimecode where
  toJSON = toJSONText

instance FromJSON DropFrameTimecode where
  parseJSON = parseJSONText "DropFrameTimecode"
