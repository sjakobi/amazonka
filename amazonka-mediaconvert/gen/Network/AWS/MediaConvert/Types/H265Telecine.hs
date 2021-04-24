{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265Telecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265Telecine
  ( H265Telecine
      ( ..,
        HHard,
        HNone,
        HSoft
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
data H265Telecine = H265Telecine' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HHard :: H265Telecine
pattern HHard = H265Telecine' "HARD"

pattern HNone :: H265Telecine
pattern HNone = H265Telecine' "NONE"

pattern HSoft :: H265Telecine
pattern HSoft = H265Telecine' "SOFT"

{-# COMPLETE
  HHard,
  HNone,
  HSoft,
  H265Telecine'
  #-}

instance FromText H265Telecine where
  parser = (H265Telecine' . mk) <$> takeText

instance ToText H265Telecine where
  toText (H265Telecine' ci) = original ci

instance Hashable H265Telecine

instance NFData H265Telecine

instance ToByteString H265Telecine

instance ToQuery H265Telecine

instance ToHeader H265Telecine

instance ToJSON H265Telecine where
  toJSON = toJSONText

instance FromJSON H265Telecine where
  parseJSON = parseJSONText "H265Telecine"
