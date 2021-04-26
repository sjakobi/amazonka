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
-- Module      : Network.AWS.MediaConvert.Types.NoiseReducerFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NoiseReducerFilter
  ( NoiseReducerFilter
      ( ..,
        NoiseReducerFilterBILATERAL,
        NoiseReducerFilterCONSERVE,
        NoiseReducerFilterGAUSSIAN,
        NoiseReducerFilterLANCZOS,
        NoiseReducerFilterMEAN,
        NoiseReducerFilterSHARPEN,
        NoiseReducerFilterSPATIAL,
        NoiseReducerFilterTEMPORAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Noise reducer filter (NoiseReducerFilter) to select one of the
-- following spatial image filtering functions. To use this setting, you
-- must also enable Noise reducer (NoiseReducer). * Bilateral preserves
-- edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and
-- Sharpen (sharpest) do convolution filtering. * Conserve does min\/max
-- noise reduction. * Spatial does frequency-domain filtering based on JND
-- principles. * Temporal optimizes video quality for complex motion.
newtype NoiseReducerFilter = NoiseReducerFilter'
  { fromNoiseReducerFilter ::
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

pattern NoiseReducerFilterBILATERAL :: NoiseReducerFilter
pattern NoiseReducerFilterBILATERAL = NoiseReducerFilter' "BILATERAL"

pattern NoiseReducerFilterCONSERVE :: NoiseReducerFilter
pattern NoiseReducerFilterCONSERVE = NoiseReducerFilter' "CONSERVE"

pattern NoiseReducerFilterGAUSSIAN :: NoiseReducerFilter
pattern NoiseReducerFilterGAUSSIAN = NoiseReducerFilter' "GAUSSIAN"

pattern NoiseReducerFilterLANCZOS :: NoiseReducerFilter
pattern NoiseReducerFilterLANCZOS = NoiseReducerFilter' "LANCZOS"

pattern NoiseReducerFilterMEAN :: NoiseReducerFilter
pattern NoiseReducerFilterMEAN = NoiseReducerFilter' "MEAN"

pattern NoiseReducerFilterSHARPEN :: NoiseReducerFilter
pattern NoiseReducerFilterSHARPEN = NoiseReducerFilter' "SHARPEN"

pattern NoiseReducerFilterSPATIAL :: NoiseReducerFilter
pattern NoiseReducerFilterSPATIAL = NoiseReducerFilter' "SPATIAL"

pattern NoiseReducerFilterTEMPORAL :: NoiseReducerFilter
pattern NoiseReducerFilterTEMPORAL = NoiseReducerFilter' "TEMPORAL"

{-# COMPLETE
  NoiseReducerFilterBILATERAL,
  NoiseReducerFilterCONSERVE,
  NoiseReducerFilterGAUSSIAN,
  NoiseReducerFilterLANCZOS,
  NoiseReducerFilterMEAN,
  NoiseReducerFilterSHARPEN,
  NoiseReducerFilterSPATIAL,
  NoiseReducerFilterTEMPORAL,
  NoiseReducerFilter'
  #-}

instance Prelude.FromText NoiseReducerFilter where
  parser = NoiseReducerFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText NoiseReducerFilter where
  toText (NoiseReducerFilter' x) = x

instance Prelude.Hashable NoiseReducerFilter

instance Prelude.NFData NoiseReducerFilter

instance Prelude.ToByteString NoiseReducerFilter

instance Prelude.ToQuery NoiseReducerFilter

instance Prelude.ToHeader NoiseReducerFilter

instance Prelude.ToJSON NoiseReducerFilter where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NoiseReducerFilter where
  parseJSON = Prelude.parseJSONText "NoiseReducerFilter"
