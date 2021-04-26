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
-- Module      : Network.AWS.MediaConvert.Types.DeinterlaceAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DeinterlaceAlgorithm
  ( DeinterlaceAlgorithm
      ( ..,
        DeinterlaceAlgorithmBLEND,
        DeinterlaceAlgorithmBLENDTICKER,
        DeinterlaceAlgorithmINTERPOLATE,
        DeinterlaceAlgorithmINTERPOLATETICKER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace
-- (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate
-- (INTERPOLATE) produces sharper pictures, while blend (BLEND) produces
-- smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your
-- source file includes a ticker, such as a scrolling headline at the
-- bottom of the frame.
newtype DeinterlaceAlgorithm = DeinterlaceAlgorithm'
  { fromDeinterlaceAlgorithm ::
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

pattern DeinterlaceAlgorithmBLEND :: DeinterlaceAlgorithm
pattern DeinterlaceAlgorithmBLEND = DeinterlaceAlgorithm' "BLEND"

pattern DeinterlaceAlgorithmBLENDTICKER :: DeinterlaceAlgorithm
pattern DeinterlaceAlgorithmBLENDTICKER = DeinterlaceAlgorithm' "BLEND_TICKER"

pattern DeinterlaceAlgorithmINTERPOLATE :: DeinterlaceAlgorithm
pattern DeinterlaceAlgorithmINTERPOLATE = DeinterlaceAlgorithm' "INTERPOLATE"

pattern DeinterlaceAlgorithmINTERPOLATETICKER :: DeinterlaceAlgorithm
pattern DeinterlaceAlgorithmINTERPOLATETICKER = DeinterlaceAlgorithm' "INTERPOLATE_TICKER"

{-# COMPLETE
  DeinterlaceAlgorithmBLEND,
  DeinterlaceAlgorithmBLENDTICKER,
  DeinterlaceAlgorithmINTERPOLATE,
  DeinterlaceAlgorithmINTERPOLATETICKER,
  DeinterlaceAlgorithm'
  #-}

instance Prelude.FromText DeinterlaceAlgorithm where
  parser = DeinterlaceAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeinterlaceAlgorithm where
  toText (DeinterlaceAlgorithm' x) = x

instance Prelude.Hashable DeinterlaceAlgorithm

instance Prelude.NFData DeinterlaceAlgorithm

instance Prelude.ToByteString DeinterlaceAlgorithm

instance Prelude.ToQuery DeinterlaceAlgorithm

instance Prelude.ToHeader DeinterlaceAlgorithm

instance Prelude.ToJSON DeinterlaceAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeinterlaceAlgorithm where
  parseJSON = Prelude.parseJSONText "DeinterlaceAlgorithm"
