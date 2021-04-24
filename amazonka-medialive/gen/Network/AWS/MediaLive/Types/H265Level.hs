{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265Level
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265Level
  ( H265Level
      ( ..,
        H265Level1,
        H265Level2,
        H265Level21,
        H265Level3,
        H265Level31,
        H265Level4,
        H265Level41,
        H265Level5,
        H265Level51,
        H265Level52,
        H265Level6,
        H265Level61,
        H265Level62,
        H265LevelAuto
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Level
data H265Level = H265Level' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern H265Level1 :: H265Level
pattern H265Level1 = H265Level' "H265_LEVEL_1"

pattern H265Level2 :: H265Level
pattern H265Level2 = H265Level' "H265_LEVEL_2"

pattern H265Level21 :: H265Level
pattern H265Level21 = H265Level' "H265_LEVEL_2_1"

pattern H265Level3 :: H265Level
pattern H265Level3 = H265Level' "H265_LEVEL_3"

pattern H265Level31 :: H265Level
pattern H265Level31 = H265Level' "H265_LEVEL_3_1"

pattern H265Level4 :: H265Level
pattern H265Level4 = H265Level' "H265_LEVEL_4"

pattern H265Level41 :: H265Level
pattern H265Level41 = H265Level' "H265_LEVEL_4_1"

pattern H265Level5 :: H265Level
pattern H265Level5 = H265Level' "H265_LEVEL_5"

pattern H265Level51 :: H265Level
pattern H265Level51 = H265Level' "H265_LEVEL_5_1"

pattern H265Level52 :: H265Level
pattern H265Level52 = H265Level' "H265_LEVEL_5_2"

pattern H265Level6 :: H265Level
pattern H265Level6 = H265Level' "H265_LEVEL_6"

pattern H265Level61 :: H265Level
pattern H265Level61 = H265Level' "H265_LEVEL_6_1"

pattern H265Level62 :: H265Level
pattern H265Level62 = H265Level' "H265_LEVEL_6_2"

pattern H265LevelAuto :: H265Level
pattern H265LevelAuto = H265Level' "H265_LEVEL_AUTO"

{-# COMPLETE
  H265Level1,
  H265Level2,
  H265Level21,
  H265Level3,
  H265Level31,
  H265Level4,
  H265Level41,
  H265Level5,
  H265Level51,
  H265Level52,
  H265Level6,
  H265Level61,
  H265Level62,
  H265LevelAuto,
  H265Level'
  #-}

instance FromText H265Level where
  parser = (H265Level' . mk) <$> takeText

instance ToText H265Level where
  toText (H265Level' ci) = original ci

instance Hashable H265Level

instance NFData H265Level

instance ToByteString H265Level

instance ToQuery H265Level

instance ToHeader H265Level

instance ToJSON H265Level where
  toJSON = toJSONText

instance FromJSON H265Level where
  parseJSON = parseJSONText "H265Level"
