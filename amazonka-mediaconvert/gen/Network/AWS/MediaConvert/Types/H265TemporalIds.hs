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
-- Module      : Network.AWS.MediaConvert.Types.H265TemporalIds
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265TemporalIds
  ( H265TemporalIds
      ( ..,
        H265TemporalIdsDISABLED,
        H265TemporalIdsENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enables temporal layer identifiers in the encoded bitstream. Up to 3
-- layers are supported depending on GOP structure: I- and P-frames form
-- one layer, reference B-frames can form a second layer and non-reference
-- b-frames can form a third layer. Decoders can optionally decode only the
-- lower temporal layers to generate a lower frame rate output. For
-- example, given a bitstream with temporal IDs and with b-frames = 1 (i.e.
-- IbPbPb display order), a decoder could decode all the frames for full
-- frame rate output or only the I and P frames (lowest temporal layer) for
-- a half frame rate output.
newtype H265TemporalIds = H265TemporalIds'
  { fromH265TemporalIds ::
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

pattern H265TemporalIdsDISABLED :: H265TemporalIds
pattern H265TemporalIdsDISABLED = H265TemporalIds' "DISABLED"

pattern H265TemporalIdsENABLED :: H265TemporalIds
pattern H265TemporalIdsENABLED = H265TemporalIds' "ENABLED"

{-# COMPLETE
  H265TemporalIdsDISABLED,
  H265TemporalIdsENABLED,
  H265TemporalIds'
  #-}

instance Prelude.FromText H265TemporalIds where
  parser = H265TemporalIds' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265TemporalIds where
  toText (H265TemporalIds' x) = x

instance Prelude.Hashable H265TemporalIds

instance Prelude.NFData H265TemporalIds

instance Prelude.ToByteString H265TemporalIds

instance Prelude.ToQuery H265TemporalIds

instance Prelude.ToHeader H265TemporalIds

instance Prelude.ToJSON H265TemporalIds where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265TemporalIds where
  parseJSON = Prelude.parseJSONText "H265TemporalIds"
