{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264Profile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264Profile
  ( H264Profile
      ( ..,
        Baseline,
        High,
        High10BIT,
        High422,
        High42210BIT,
        Main
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Profile
data H264Profile = H264Profile' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Baseline :: H264Profile
pattern Baseline = H264Profile' "BASELINE"

pattern High :: H264Profile
pattern High = H264Profile' "HIGH"

pattern High10BIT :: H264Profile
pattern High10BIT = H264Profile' "HIGH_10BIT"

pattern High422 :: H264Profile
pattern High422 = H264Profile' "HIGH_422"

pattern High42210BIT :: H264Profile
pattern High42210BIT = H264Profile' "HIGH_422_10BIT"

pattern Main :: H264Profile
pattern Main = H264Profile' "MAIN"

{-# COMPLETE
  Baseline,
  High,
  High10BIT,
  High422,
  High42210BIT,
  Main,
  H264Profile'
  #-}

instance FromText H264Profile where
  parser = (H264Profile' . mk) <$> takeText

instance ToText H264Profile where
  toText (H264Profile' ci) = original ci

instance Hashable H264Profile

instance NFData H264Profile

instance ToByteString H264Profile

instance ToQuery H264Profile

instance ToHeader H264Profile

instance ToJSON H264Profile where
  toJSON = toJSONText

instance FromJSON H264Profile where
  parseJSON = parseJSONText "H264Profile"
