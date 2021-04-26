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
-- Module      : Network.AWS.MediaConvert.Types.DolbyVisionLevel6Mode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DolbyVisionLevel6Mode
  ( DolbyVisionLevel6Mode
      ( ..,
        DolbyVisionLevel6ModePASSTHROUGH,
        DolbyVisionLevel6ModeRECALCULATE,
        DolbyVisionLevel6ModeSPECIFY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Dolby Vision Mode to choose how the service will handle Dolby Vision
-- MaxCLL and MaxFALL properies.
newtype DolbyVisionLevel6Mode = DolbyVisionLevel6Mode'
  { fromDolbyVisionLevel6Mode ::
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

pattern DolbyVisionLevel6ModePASSTHROUGH :: DolbyVisionLevel6Mode
pattern DolbyVisionLevel6ModePASSTHROUGH = DolbyVisionLevel6Mode' "PASSTHROUGH"

pattern DolbyVisionLevel6ModeRECALCULATE :: DolbyVisionLevel6Mode
pattern DolbyVisionLevel6ModeRECALCULATE = DolbyVisionLevel6Mode' "RECALCULATE"

pattern DolbyVisionLevel6ModeSPECIFY :: DolbyVisionLevel6Mode
pattern DolbyVisionLevel6ModeSPECIFY = DolbyVisionLevel6Mode' "SPECIFY"

{-# COMPLETE
  DolbyVisionLevel6ModePASSTHROUGH,
  DolbyVisionLevel6ModeRECALCULATE,
  DolbyVisionLevel6ModeSPECIFY,
  DolbyVisionLevel6Mode'
  #-}

instance Prelude.FromText DolbyVisionLevel6Mode where
  parser = DolbyVisionLevel6Mode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DolbyVisionLevel6Mode where
  toText (DolbyVisionLevel6Mode' x) = x

instance Prelude.Hashable DolbyVisionLevel6Mode

instance Prelude.NFData DolbyVisionLevel6Mode

instance Prelude.ToByteString DolbyVisionLevel6Mode

instance Prelude.ToQuery DolbyVisionLevel6Mode

instance Prelude.ToHeader DolbyVisionLevel6Mode

instance Prelude.ToJSON DolbyVisionLevel6Mode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DolbyVisionLevel6Mode where
  parseJSON = Prelude.parseJSONText "DolbyVisionLevel6Mode"
