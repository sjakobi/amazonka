{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mpeg2DisplayRatio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2DisplayRatio
  ( Mpeg2DisplayRatio
      ( ..,
        DISPLAYRATIO16X9,
        DISPLAYRATIO4X3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Mpeg2 Display Ratio
data Mpeg2DisplayRatio = Mpeg2DisplayRatio' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DISPLAYRATIO16X9 :: Mpeg2DisplayRatio
pattern DISPLAYRATIO16X9 = Mpeg2DisplayRatio' "DISPLAYRATIO16X9"

pattern DISPLAYRATIO4X3 :: Mpeg2DisplayRatio
pattern DISPLAYRATIO4X3 = Mpeg2DisplayRatio' "DISPLAYRATIO4X3"

{-# COMPLETE
  DISPLAYRATIO16X9,
  DISPLAYRATIO4X3,
  Mpeg2DisplayRatio'
  #-}

instance FromText Mpeg2DisplayRatio where
  parser = (Mpeg2DisplayRatio' . mk) <$> takeText

instance ToText Mpeg2DisplayRatio where
  toText (Mpeg2DisplayRatio' ci) = original ci

instance Hashable Mpeg2DisplayRatio

instance NFData Mpeg2DisplayRatio

instance ToByteString Mpeg2DisplayRatio

instance ToQuery Mpeg2DisplayRatio

instance ToHeader Mpeg2DisplayRatio

instance ToJSON Mpeg2DisplayRatio where
  toJSON = toJSONText

instance FromJSON Mpeg2DisplayRatio where
  parseJSON = parseJSONText "Mpeg2DisplayRatio"
