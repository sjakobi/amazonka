{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264Level
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264Level
  ( H264Level
      ( ..,
        H264LevelH264LEVEL1,
        H264LevelH264LEVEL11,
        H264LevelH264LEVEL12,
        H264LevelH264LEVEL13,
        H264LevelH264LEVEL2,
        H264LevelH264LEVEL21,
        H264LevelH264LEVEL22,
        H264LevelH264LEVEL3,
        H264LevelH264LEVEL31,
        H264LevelH264LEVEL32,
        H264LevelH264LEVEL4,
        H264LevelH264LEVEL41,
        H264LevelH264LEVEL42,
        H264LevelH264LEVEL5,
        H264LevelH264LEVEL51,
        H264LevelH264LEVEL52,
        H264LevelH264LEVELAUTO
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Level
newtype H264Level = H264Level'
  { fromH264Level ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern H264LevelH264LEVEL1 :: H264Level
pattern H264LevelH264LEVEL1 = H264Level' "H264_LEVEL_1"

pattern H264LevelH264LEVEL11 :: H264Level
pattern H264LevelH264LEVEL11 = H264Level' "H264_LEVEL_1_1"

pattern H264LevelH264LEVEL12 :: H264Level
pattern H264LevelH264LEVEL12 = H264Level' "H264_LEVEL_1_2"

pattern H264LevelH264LEVEL13 :: H264Level
pattern H264LevelH264LEVEL13 = H264Level' "H264_LEVEL_1_3"

pattern H264LevelH264LEVEL2 :: H264Level
pattern H264LevelH264LEVEL2 = H264Level' "H264_LEVEL_2"

pattern H264LevelH264LEVEL21 :: H264Level
pattern H264LevelH264LEVEL21 = H264Level' "H264_LEVEL_2_1"

pattern H264LevelH264LEVEL22 :: H264Level
pattern H264LevelH264LEVEL22 = H264Level' "H264_LEVEL_2_2"

pattern H264LevelH264LEVEL3 :: H264Level
pattern H264LevelH264LEVEL3 = H264Level' "H264_LEVEL_3"

pattern H264LevelH264LEVEL31 :: H264Level
pattern H264LevelH264LEVEL31 = H264Level' "H264_LEVEL_3_1"

pattern H264LevelH264LEVEL32 :: H264Level
pattern H264LevelH264LEVEL32 = H264Level' "H264_LEVEL_3_2"

pattern H264LevelH264LEVEL4 :: H264Level
pattern H264LevelH264LEVEL4 = H264Level' "H264_LEVEL_4"

pattern H264LevelH264LEVEL41 :: H264Level
pattern H264LevelH264LEVEL41 = H264Level' "H264_LEVEL_4_1"

pattern H264LevelH264LEVEL42 :: H264Level
pattern H264LevelH264LEVEL42 = H264Level' "H264_LEVEL_4_2"

pattern H264LevelH264LEVEL5 :: H264Level
pattern H264LevelH264LEVEL5 = H264Level' "H264_LEVEL_5"

pattern H264LevelH264LEVEL51 :: H264Level
pattern H264LevelH264LEVEL51 = H264Level' "H264_LEVEL_5_1"

pattern H264LevelH264LEVEL52 :: H264Level
pattern H264LevelH264LEVEL52 = H264Level' "H264_LEVEL_5_2"

pattern H264LevelH264LEVELAUTO :: H264Level
pattern H264LevelH264LEVELAUTO = H264Level' "H264_LEVEL_AUTO"

{-# COMPLETE
  H264LevelH264LEVEL1,
  H264LevelH264LEVEL11,
  H264LevelH264LEVEL12,
  H264LevelH264LEVEL13,
  H264LevelH264LEVEL2,
  H264LevelH264LEVEL21,
  H264LevelH264LEVEL22,
  H264LevelH264LEVEL3,
  H264LevelH264LEVEL31,
  H264LevelH264LEVEL32,
  H264LevelH264LEVEL4,
  H264LevelH264LEVEL41,
  H264LevelH264LEVEL42,
  H264LevelH264LEVEL5,
  H264LevelH264LEVEL51,
  H264LevelH264LEVEL52,
  H264LevelH264LEVELAUTO,
  H264Level'
  #-}

instance Prelude.FromText H264Level where
  parser = H264Level' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264Level where
  toText (H264Level' x) = x

instance Prelude.Hashable H264Level

instance Prelude.NFData H264Level

instance Prelude.ToByteString H264Level

instance Prelude.ToQuery H264Level

instance Prelude.ToHeader H264Level

instance Prelude.ToJSON H264Level where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264Level where
  parseJSON = Prelude.parseJSONText "H264Level"
