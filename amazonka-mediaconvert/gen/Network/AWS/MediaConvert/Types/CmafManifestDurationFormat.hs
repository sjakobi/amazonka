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
-- Module      : Network.AWS.MediaConvert.Types.CmafManifestDurationFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafManifestDurationFormat
  ( CmafManifestDurationFormat
      ( ..,
        CmafManifestDurationFormatFLOATINGPOINT,
        CmafManifestDurationFormatINTEGER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Indicates whether the output manifest should use floating point values
-- for segment duration.
newtype CmafManifestDurationFormat = CmafManifestDurationFormat'
  { fromCmafManifestDurationFormat ::
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

pattern CmafManifestDurationFormatFLOATINGPOINT :: CmafManifestDurationFormat
pattern CmafManifestDurationFormatFLOATINGPOINT = CmafManifestDurationFormat' "FLOATING_POINT"

pattern CmafManifestDurationFormatINTEGER :: CmafManifestDurationFormat
pattern CmafManifestDurationFormatINTEGER = CmafManifestDurationFormat' "INTEGER"

{-# COMPLETE
  CmafManifestDurationFormatFLOATINGPOINT,
  CmafManifestDurationFormatINTEGER,
  CmafManifestDurationFormat'
  #-}

instance Prelude.FromText CmafManifestDurationFormat where
  parser = CmafManifestDurationFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafManifestDurationFormat where
  toText (CmafManifestDurationFormat' x) = x

instance Prelude.Hashable CmafManifestDurationFormat

instance Prelude.NFData CmafManifestDurationFormat

instance Prelude.ToByteString CmafManifestDurationFormat

instance Prelude.ToQuery CmafManifestDurationFormat

instance Prelude.ToHeader CmafManifestDurationFormat

instance Prelude.ToJSON CmafManifestDurationFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafManifestDurationFormat where
  parseJSON = Prelude.parseJSONText "CmafManifestDurationFormat"
