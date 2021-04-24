{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MotionImagePlayback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MotionImagePlayback
  ( MotionImagePlayback
      ( ..,
        Once,
        Repeat
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify whether your motion graphic overlay repeats on a loop or plays only once.
data MotionImagePlayback
  = MotionImagePlayback'
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

pattern Once :: MotionImagePlayback
pattern Once = MotionImagePlayback' "ONCE"

pattern Repeat :: MotionImagePlayback
pattern Repeat = MotionImagePlayback' "REPEAT"

{-# COMPLETE
  Once,
  Repeat,
  MotionImagePlayback'
  #-}

instance FromText MotionImagePlayback where
  parser = (MotionImagePlayback' . mk) <$> takeText

instance ToText MotionImagePlayback where
  toText (MotionImagePlayback' ci) = original ci

instance Hashable MotionImagePlayback

instance NFData MotionImagePlayback

instance ToByteString MotionImagePlayback

instance ToQuery MotionImagePlayback

instance ToHeader MotionImagePlayback

instance ToJSON MotionImagePlayback where
  toJSON = toJSONText

instance FromJSON MotionImagePlayback where
  parseJSON = parseJSONText "MotionImagePlayback"
