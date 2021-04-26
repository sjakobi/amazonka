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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2IntraDcPrecision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2IntraDcPrecision
  ( Mpeg2IntraDcPrecision
      ( ..,
        Mpeg2IntraDcPrecisionAUTO,
        Mpeg2IntraDcPrecisionINTRADCPRECISION10,
        Mpeg2IntraDcPrecisionINTRADCPRECISION11,
        Mpeg2IntraDcPrecisionINTRADCPRECISION8,
        Mpeg2IntraDcPrecisionINTRADCPRECISION9
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization
-- precision for intra-block DC coefficients. If you choose the value auto,
-- the service will automatically select the precision based on the
-- per-frame compression ratio.
newtype Mpeg2IntraDcPrecision = Mpeg2IntraDcPrecision'
  { fromMpeg2IntraDcPrecision ::
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

pattern Mpeg2IntraDcPrecisionAUTO :: Mpeg2IntraDcPrecision
pattern Mpeg2IntraDcPrecisionAUTO = Mpeg2IntraDcPrecision' "AUTO"

pattern Mpeg2IntraDcPrecisionINTRADCPRECISION10 :: Mpeg2IntraDcPrecision
pattern Mpeg2IntraDcPrecisionINTRADCPRECISION10 = Mpeg2IntraDcPrecision' "INTRA_DC_PRECISION_10"

pattern Mpeg2IntraDcPrecisionINTRADCPRECISION11 :: Mpeg2IntraDcPrecision
pattern Mpeg2IntraDcPrecisionINTRADCPRECISION11 = Mpeg2IntraDcPrecision' "INTRA_DC_PRECISION_11"

pattern Mpeg2IntraDcPrecisionINTRADCPRECISION8 :: Mpeg2IntraDcPrecision
pattern Mpeg2IntraDcPrecisionINTRADCPRECISION8 = Mpeg2IntraDcPrecision' "INTRA_DC_PRECISION_8"

pattern Mpeg2IntraDcPrecisionINTRADCPRECISION9 :: Mpeg2IntraDcPrecision
pattern Mpeg2IntraDcPrecisionINTRADCPRECISION9 = Mpeg2IntraDcPrecision' "INTRA_DC_PRECISION_9"

{-# COMPLETE
  Mpeg2IntraDcPrecisionAUTO,
  Mpeg2IntraDcPrecisionINTRADCPRECISION10,
  Mpeg2IntraDcPrecisionINTRADCPRECISION11,
  Mpeg2IntraDcPrecisionINTRADCPRECISION8,
  Mpeg2IntraDcPrecisionINTRADCPRECISION9,
  Mpeg2IntraDcPrecision'
  #-}

instance Prelude.FromText Mpeg2IntraDcPrecision where
  parser = Mpeg2IntraDcPrecision' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2IntraDcPrecision where
  toText (Mpeg2IntraDcPrecision' x) = x

instance Prelude.Hashable Mpeg2IntraDcPrecision

instance Prelude.NFData Mpeg2IntraDcPrecision

instance Prelude.ToByteString Mpeg2IntraDcPrecision

instance Prelude.ToQuery Mpeg2IntraDcPrecision

instance Prelude.ToHeader Mpeg2IntraDcPrecision

instance Prelude.ToJSON Mpeg2IntraDcPrecision where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2IntraDcPrecision where
  parseJSON = Prelude.parseJSONText "Mpeg2IntraDcPrecision"
