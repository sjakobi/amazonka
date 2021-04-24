{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleBackgroundColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleBackgroundColor
  ( BurninSubtitleBackgroundColor
      ( ..,
        BSBCBlack,
        BSBCNone,
        BSBCWhite
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the color of the rectangle behind the captions.
--
-- All burn-in and DVB-Sub font settings must match.
data BurninSubtitleBackgroundColor
  = BurninSubtitleBackgroundColor'
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

pattern BSBCBlack :: BurninSubtitleBackgroundColor
pattern BSBCBlack = BurninSubtitleBackgroundColor' "BLACK"

pattern BSBCNone :: BurninSubtitleBackgroundColor
pattern BSBCNone = BurninSubtitleBackgroundColor' "NONE"

pattern BSBCWhite :: BurninSubtitleBackgroundColor
pattern BSBCWhite = BurninSubtitleBackgroundColor' "WHITE"

{-# COMPLETE
  BSBCBlack,
  BSBCNone,
  BSBCWhite,
  BurninSubtitleBackgroundColor'
  #-}

instance FromText BurninSubtitleBackgroundColor where
  parser = (BurninSubtitleBackgroundColor' . mk) <$> takeText

instance ToText BurninSubtitleBackgroundColor where
  toText (BurninSubtitleBackgroundColor' ci) = original ci

instance Hashable BurninSubtitleBackgroundColor

instance NFData BurninSubtitleBackgroundColor

instance ToByteString BurninSubtitleBackgroundColor

instance ToQuery BurninSubtitleBackgroundColor

instance ToHeader BurninSubtitleBackgroundColor

instance ToJSON BurninSubtitleBackgroundColor where
  toJSON = toJSONText

instance FromJSON BurninSubtitleBackgroundColor where
  parseJSON = parseJSONText "BurninSubtitleBackgroundColor"
