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
-- Module      : Network.AWS.MediaConvert.Types.AacCodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AacCodingMode
  ( AacCodingMode
      ( ..,
        AacCodingModeADRECEIVERMIX,
        AacCodingModeCODINGMODE10,
        AacCodingModeCODINGMODE11,
        AacCodingModeCODINGMODE20,
        AacCodingModeCODINGMODE51
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid
-- values depend on rate control mode and profile. \"1.0 - Audio
-- Description (Receiver Mix)\" setting receives a stereo description plus
-- control track and emits a mono AAC encode of the description track, with
-- control data emitted in the PES header as per ETSI TS 101 154 Annex E.
newtype AacCodingMode = AacCodingMode'
  { fromAacCodingMode ::
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

pattern AacCodingModeADRECEIVERMIX :: AacCodingMode
pattern AacCodingModeADRECEIVERMIX = AacCodingMode' "AD_RECEIVER_MIX"

pattern AacCodingModeCODINGMODE10 :: AacCodingMode
pattern AacCodingModeCODINGMODE10 = AacCodingMode' "CODING_MODE_1_0"

pattern AacCodingModeCODINGMODE11 :: AacCodingMode
pattern AacCodingModeCODINGMODE11 = AacCodingMode' "CODING_MODE_1_1"

pattern AacCodingModeCODINGMODE20 :: AacCodingMode
pattern AacCodingModeCODINGMODE20 = AacCodingMode' "CODING_MODE_2_0"

pattern AacCodingModeCODINGMODE51 :: AacCodingMode
pattern AacCodingModeCODINGMODE51 = AacCodingMode' "CODING_MODE_5_1"

{-# COMPLETE
  AacCodingModeADRECEIVERMIX,
  AacCodingModeCODINGMODE10,
  AacCodingModeCODINGMODE11,
  AacCodingModeCODINGMODE20,
  AacCodingModeCODINGMODE51,
  AacCodingMode'
  #-}

instance Prelude.FromText AacCodingMode where
  parser = AacCodingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacCodingMode where
  toText (AacCodingMode' x) = x

instance Prelude.Hashable AacCodingMode

instance Prelude.NFData AacCodingMode

instance Prelude.ToByteString AacCodingMode

instance Prelude.ToQuery AacCodingMode

instance Prelude.ToHeader AacCodingMode

instance Prelude.ToJSON AacCodingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacCodingMode where
  parseJSON = Prelude.parseJSONText "AacCodingMode"
