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
-- Module      : Network.AWS.MediaLive.Types.H265Level
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265Level
  ( H265Level
      ( ..,
        H265LevelH265LEVEL1,
        H265LevelH265LEVEL2,
        H265LevelH265LEVEL21,
        H265LevelH265LEVEL3,
        H265LevelH265LEVEL31,
        H265LevelH265LEVEL4,
        H265LevelH265LEVEL41,
        H265LevelH265LEVEL5,
        H265LevelH265LEVEL51,
        H265LevelH265LEVEL52,
        H265LevelH265LEVEL6,
        H265LevelH265LEVEL61,
        H265LevelH265LEVEL62,
        H265LevelH265LEVELAUTO
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Level
newtype H265Level = H265Level'
  { fromH265Level ::
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

pattern H265LevelH265LEVEL1 :: H265Level
pattern H265LevelH265LEVEL1 = H265Level' "H265_LEVEL_1"

pattern H265LevelH265LEVEL2 :: H265Level
pattern H265LevelH265LEVEL2 = H265Level' "H265_LEVEL_2"

pattern H265LevelH265LEVEL21 :: H265Level
pattern H265LevelH265LEVEL21 = H265Level' "H265_LEVEL_2_1"

pattern H265LevelH265LEVEL3 :: H265Level
pattern H265LevelH265LEVEL3 = H265Level' "H265_LEVEL_3"

pattern H265LevelH265LEVEL31 :: H265Level
pattern H265LevelH265LEVEL31 = H265Level' "H265_LEVEL_3_1"

pattern H265LevelH265LEVEL4 :: H265Level
pattern H265LevelH265LEVEL4 = H265Level' "H265_LEVEL_4"

pattern H265LevelH265LEVEL41 :: H265Level
pattern H265LevelH265LEVEL41 = H265Level' "H265_LEVEL_4_1"

pattern H265LevelH265LEVEL5 :: H265Level
pattern H265LevelH265LEVEL5 = H265Level' "H265_LEVEL_5"

pattern H265LevelH265LEVEL51 :: H265Level
pattern H265LevelH265LEVEL51 = H265Level' "H265_LEVEL_5_1"

pattern H265LevelH265LEVEL52 :: H265Level
pattern H265LevelH265LEVEL52 = H265Level' "H265_LEVEL_5_2"

pattern H265LevelH265LEVEL6 :: H265Level
pattern H265LevelH265LEVEL6 = H265Level' "H265_LEVEL_6"

pattern H265LevelH265LEVEL61 :: H265Level
pattern H265LevelH265LEVEL61 = H265Level' "H265_LEVEL_6_1"

pattern H265LevelH265LEVEL62 :: H265Level
pattern H265LevelH265LEVEL62 = H265Level' "H265_LEVEL_6_2"

pattern H265LevelH265LEVELAUTO :: H265Level
pattern H265LevelH265LEVELAUTO = H265Level' "H265_LEVEL_AUTO"

{-# COMPLETE
  H265LevelH265LEVEL1,
  H265LevelH265LEVEL2,
  H265LevelH265LEVEL21,
  H265LevelH265LEVEL3,
  H265LevelH265LEVEL31,
  H265LevelH265LEVEL4,
  H265LevelH265LEVEL41,
  H265LevelH265LEVEL5,
  H265LevelH265LEVEL51,
  H265LevelH265LEVEL52,
  H265LevelH265LEVEL6,
  H265LevelH265LEVEL61,
  H265LevelH265LEVEL62,
  H265LevelH265LEVELAUTO,
  H265Level'
  #-}

instance Prelude.FromText H265Level where
  parser = H265Level' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265Level where
  toText (H265Level' x) = x

instance Prelude.Hashable H265Level

instance Prelude.NFData H265Level

instance Prelude.ToByteString H265Level

instance Prelude.ToQuery H265Level

instance Prelude.ToHeader H265Level

instance Prelude.ToJSON H265Level where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265Level where
  parseJSON = Prelude.parseJSONText "H265Level"
