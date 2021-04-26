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
-- Module      : Network.AWS.MediaConvert.Types.HlsManifestDurationFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsManifestDurationFormat
  ( HlsManifestDurationFormat
      ( ..,
        HlsManifestDurationFormatFLOATINGPOINT,
        HlsManifestDurationFormatINTEGER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Indicates whether the output manifest should use floating point values
-- for segment duration.
newtype HlsManifestDurationFormat = HlsManifestDurationFormat'
  { fromHlsManifestDurationFormat ::
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

pattern HlsManifestDurationFormatFLOATINGPOINT :: HlsManifestDurationFormat
pattern HlsManifestDurationFormatFLOATINGPOINT = HlsManifestDurationFormat' "FLOATING_POINT"

pattern HlsManifestDurationFormatINTEGER :: HlsManifestDurationFormat
pattern HlsManifestDurationFormatINTEGER = HlsManifestDurationFormat' "INTEGER"

{-# COMPLETE
  HlsManifestDurationFormatFLOATINGPOINT,
  HlsManifestDurationFormatINTEGER,
  HlsManifestDurationFormat'
  #-}

instance Prelude.FromText HlsManifestDurationFormat where
  parser = HlsManifestDurationFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsManifestDurationFormat where
  toText (HlsManifestDurationFormat' x) = x

instance Prelude.Hashable HlsManifestDurationFormat

instance Prelude.NFData HlsManifestDurationFormat

instance Prelude.ToByteString HlsManifestDurationFormat

instance Prelude.ToQuery HlsManifestDurationFormat

instance Prelude.ToHeader HlsManifestDurationFormat

instance Prelude.ToJSON HlsManifestDurationFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsManifestDurationFormat where
  parseJSON = Prelude.parseJSONText "HlsManifestDurationFormat"
