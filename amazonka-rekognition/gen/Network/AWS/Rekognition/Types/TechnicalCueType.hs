{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.TechnicalCueType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.TechnicalCueType
  ( TechnicalCueType
      ( ..,
        BlackFrames,
        ColorBars,
        EndCredits
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TechnicalCueType = TechnicalCueType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BlackFrames :: TechnicalCueType
pattern BlackFrames = TechnicalCueType' "BlackFrames"

pattern ColorBars :: TechnicalCueType
pattern ColorBars = TechnicalCueType' "ColorBars"

pattern EndCredits :: TechnicalCueType
pattern EndCredits = TechnicalCueType' "EndCredits"

{-# COMPLETE
  BlackFrames,
  ColorBars,
  EndCredits,
  TechnicalCueType'
  #-}

instance FromText TechnicalCueType where
  parser = (TechnicalCueType' . mk) <$> takeText

instance ToText TechnicalCueType where
  toText (TechnicalCueType' ci) = original ci

instance Hashable TechnicalCueType

instance NFData TechnicalCueType

instance ToByteString TechnicalCueType

instance ToQuery TechnicalCueType

instance ToHeader TechnicalCueType

instance FromJSON TechnicalCueType where
  parseJSON = parseJSONText "TechnicalCueType"
