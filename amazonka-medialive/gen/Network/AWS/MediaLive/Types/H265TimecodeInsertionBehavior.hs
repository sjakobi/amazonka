{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265TimecodeInsertionBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265TimecodeInsertionBehavior
  ( H265TimecodeInsertionBehavior
      ( ..,
        HTIBTDisabled,
        HTIBTPicTimingSei
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Timecode Insertion Behavior
data H265TimecodeInsertionBehavior
  = H265TimecodeInsertionBehavior'
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

pattern HTIBTDisabled :: H265TimecodeInsertionBehavior
pattern HTIBTDisabled = H265TimecodeInsertionBehavior' "DISABLED"

pattern HTIBTPicTimingSei :: H265TimecodeInsertionBehavior
pattern HTIBTPicTimingSei = H265TimecodeInsertionBehavior' "PIC_TIMING_SEI"

{-# COMPLETE
  HTIBTDisabled,
  HTIBTPicTimingSei,
  H265TimecodeInsertionBehavior'
  #-}

instance FromText H265TimecodeInsertionBehavior where
  parser = (H265TimecodeInsertionBehavior' . mk) <$> takeText

instance ToText H265TimecodeInsertionBehavior where
  toText (H265TimecodeInsertionBehavior' ci) = original ci

instance Hashable H265TimecodeInsertionBehavior

instance NFData H265TimecodeInsertionBehavior

instance ToByteString H265TimecodeInsertionBehavior

instance ToQuery H265TimecodeInsertionBehavior

instance ToHeader H265TimecodeInsertionBehavior

instance ToJSON H265TimecodeInsertionBehavior where
  toJSON = toJSONText

instance FromJSON H265TimecodeInsertionBehavior where
  parseJSON = parseJSONText "H265TimecodeInsertionBehavior"
