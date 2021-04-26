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
-- Module      : Network.AWS.MediaConvert.Types.Ac3DynamicRangeCompressionProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Ac3DynamicRangeCompressionProfile
  ( Ac3DynamicRangeCompressionProfile
      ( ..,
        Ac3DynamicRangeCompressionProfileFILMSTANDARD,
        Ac3DynamicRangeCompressionProfileNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If set to FILM_STANDARD, adds dynamic range compression signaling to the
-- output bitstream as defined in the Dolby Digital specification.
newtype Ac3DynamicRangeCompressionProfile = Ac3DynamicRangeCompressionProfile'
  { fromAc3DynamicRangeCompressionProfile ::
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

pattern Ac3DynamicRangeCompressionProfileFILMSTANDARD :: Ac3DynamicRangeCompressionProfile
pattern Ac3DynamicRangeCompressionProfileFILMSTANDARD = Ac3DynamicRangeCompressionProfile' "FILM_STANDARD"

pattern Ac3DynamicRangeCompressionProfileNONE :: Ac3DynamicRangeCompressionProfile
pattern Ac3DynamicRangeCompressionProfileNONE = Ac3DynamicRangeCompressionProfile' "NONE"

{-# COMPLETE
  Ac3DynamicRangeCompressionProfileFILMSTANDARD,
  Ac3DynamicRangeCompressionProfileNONE,
  Ac3DynamicRangeCompressionProfile'
  #-}

instance Prelude.FromText Ac3DynamicRangeCompressionProfile where
  parser = Ac3DynamicRangeCompressionProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText Ac3DynamicRangeCompressionProfile where
  toText (Ac3DynamicRangeCompressionProfile' x) = x

instance Prelude.Hashable Ac3DynamicRangeCompressionProfile

instance Prelude.NFData Ac3DynamicRangeCompressionProfile

instance Prelude.ToByteString Ac3DynamicRangeCompressionProfile

instance Prelude.ToQuery Ac3DynamicRangeCompressionProfile

instance Prelude.ToHeader Ac3DynamicRangeCompressionProfile

instance Prelude.ToJSON Ac3DynamicRangeCompressionProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Ac3DynamicRangeCompressionProfile where
  parseJSON = Prelude.parseJSONText "Ac3DynamicRangeCompressionProfile"
