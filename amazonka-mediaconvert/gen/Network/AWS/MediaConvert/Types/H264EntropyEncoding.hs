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
-- Module      : Network.AWS.MediaConvert.Types.H264EntropyEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264EntropyEncoding
  ( H264EntropyEncoding
      ( ..,
        H264EntropyEncodingCABAC,
        H264EntropyEncodingCAVLC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Entropy encoding mode. Use CABAC (must be in Main or High profile) or
-- CAVLC.
newtype H264EntropyEncoding = H264EntropyEncoding'
  { fromH264EntropyEncoding ::
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

pattern H264EntropyEncodingCABAC :: H264EntropyEncoding
pattern H264EntropyEncodingCABAC = H264EntropyEncoding' "CABAC"

pattern H264EntropyEncodingCAVLC :: H264EntropyEncoding
pattern H264EntropyEncodingCAVLC = H264EntropyEncoding' "CAVLC"

{-# COMPLETE
  H264EntropyEncodingCABAC,
  H264EntropyEncodingCAVLC,
  H264EntropyEncoding'
  #-}

instance Prelude.FromText H264EntropyEncoding where
  parser = H264EntropyEncoding' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264EntropyEncoding where
  toText (H264EntropyEncoding' x) = x

instance Prelude.Hashable H264EntropyEncoding

instance Prelude.NFData H264EntropyEncoding

instance Prelude.ToByteString H264EntropyEncoding

instance Prelude.ToQuery H264EntropyEncoding

instance Prelude.ToHeader H264EntropyEncoding

instance Prelude.ToJSON H264EntropyEncoding where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264EntropyEncoding where
  parseJSON = Prelude.parseJSONText "H264EntropyEncoding"
