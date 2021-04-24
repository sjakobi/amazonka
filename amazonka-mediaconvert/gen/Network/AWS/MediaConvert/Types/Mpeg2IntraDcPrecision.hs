{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2IntraDcPrecision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2IntraDcPrecision
  ( Mpeg2IntraDcPrecision
      ( ..,
        Auto,
        IntraDcPrecision10,
        IntraDcPrecision11,
        IntraDcPrecision8,
        IntraDcPrecision9
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.
data Mpeg2IntraDcPrecision
  = Mpeg2IntraDcPrecision'
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

pattern Auto :: Mpeg2IntraDcPrecision
pattern Auto = Mpeg2IntraDcPrecision' "AUTO"

pattern IntraDcPrecision10 :: Mpeg2IntraDcPrecision
pattern IntraDcPrecision10 = Mpeg2IntraDcPrecision' "INTRA_DC_PRECISION_10"

pattern IntraDcPrecision11 :: Mpeg2IntraDcPrecision
pattern IntraDcPrecision11 = Mpeg2IntraDcPrecision' "INTRA_DC_PRECISION_11"

pattern IntraDcPrecision8 :: Mpeg2IntraDcPrecision
pattern IntraDcPrecision8 = Mpeg2IntraDcPrecision' "INTRA_DC_PRECISION_8"

pattern IntraDcPrecision9 :: Mpeg2IntraDcPrecision
pattern IntraDcPrecision9 = Mpeg2IntraDcPrecision' "INTRA_DC_PRECISION_9"

{-# COMPLETE
  Auto,
  IntraDcPrecision10,
  IntraDcPrecision11,
  IntraDcPrecision8,
  IntraDcPrecision9,
  Mpeg2IntraDcPrecision'
  #-}

instance FromText Mpeg2IntraDcPrecision where
  parser = (Mpeg2IntraDcPrecision' . mk) <$> takeText

instance ToText Mpeg2IntraDcPrecision where
  toText (Mpeg2IntraDcPrecision' ci) = original ci

instance Hashable Mpeg2IntraDcPrecision

instance NFData Mpeg2IntraDcPrecision

instance ToByteString Mpeg2IntraDcPrecision

instance ToQuery Mpeg2IntraDcPrecision

instance ToHeader Mpeg2IntraDcPrecision

instance ToJSON Mpeg2IntraDcPrecision where
  toJSON = toJSONText

instance FromJSON Mpeg2IntraDcPrecision where
  parseJSON = parseJSONText "Mpeg2IntraDcPrecision"
