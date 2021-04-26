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
-- Module      : Network.AWS.MediaConvert.Types.CmfcScte35Source
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmfcScte35Source
  ( CmfcScte35Source
      ( ..,
        CmfcScte35SourceNONE,
        CmfcScte35SourcePASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ignore this setting unless you have SCTE-35 markers in your input video
-- file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that
-- appear in your input to also appear in this output. Choose None (NONE)
-- if you don\'t want those SCTE-35 markers in this output.
newtype CmfcScte35Source = CmfcScte35Source'
  { fromCmfcScte35Source ::
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

pattern CmfcScte35SourceNONE :: CmfcScte35Source
pattern CmfcScte35SourceNONE = CmfcScte35Source' "NONE"

pattern CmfcScte35SourcePASSTHROUGH :: CmfcScte35Source
pattern CmfcScte35SourcePASSTHROUGH = CmfcScte35Source' "PASSTHROUGH"

{-# COMPLETE
  CmfcScte35SourceNONE,
  CmfcScte35SourcePASSTHROUGH,
  CmfcScte35Source'
  #-}

instance Prelude.FromText CmfcScte35Source where
  parser = CmfcScte35Source' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmfcScte35Source where
  toText (CmfcScte35Source' x) = x

instance Prelude.Hashable CmfcScte35Source

instance Prelude.NFData CmfcScte35Source

instance Prelude.ToByteString CmfcScte35Source

instance Prelude.ToQuery CmfcScte35Source

instance Prelude.ToHeader CmfcScte35Source

instance Prelude.ToJSON CmfcScte35Source where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmfcScte35Source where
  parseJSON = Prelude.parseJSONText "CmfcScte35Source"
