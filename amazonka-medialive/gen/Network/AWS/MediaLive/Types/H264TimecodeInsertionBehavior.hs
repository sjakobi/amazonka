{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264TimecodeInsertionBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264TimecodeInsertionBehavior
  ( H264TimecodeInsertionBehavior
      ( ..,
        HTIBDisabled,
        HTIBPicTimingSei
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Timecode Insertion Behavior
data H264TimecodeInsertionBehavior
  = H264TimecodeInsertionBehavior'
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

pattern HTIBDisabled :: H264TimecodeInsertionBehavior
pattern HTIBDisabled = H264TimecodeInsertionBehavior' "DISABLED"

pattern HTIBPicTimingSei :: H264TimecodeInsertionBehavior
pattern HTIBPicTimingSei = H264TimecodeInsertionBehavior' "PIC_TIMING_SEI"

{-# COMPLETE
  HTIBDisabled,
  HTIBPicTimingSei,
  H264TimecodeInsertionBehavior'
  #-}

instance FromText H264TimecodeInsertionBehavior where
  parser = (H264TimecodeInsertionBehavior' . mk) <$> takeText

instance ToText H264TimecodeInsertionBehavior where
  toText (H264TimecodeInsertionBehavior' ci) = original ci

instance Hashable H264TimecodeInsertionBehavior

instance NFData H264TimecodeInsertionBehavior

instance ToByteString H264TimecodeInsertionBehavior

instance ToQuery H264TimecodeInsertionBehavior

instance ToHeader H264TimecodeInsertionBehavior

instance ToJSON H264TimecodeInsertionBehavior where
  toJSON = toJSONText

instance FromJSON H264TimecodeInsertionBehavior where
  parseJSON = parseJSONText "H264TimecodeInsertionBehavior"
