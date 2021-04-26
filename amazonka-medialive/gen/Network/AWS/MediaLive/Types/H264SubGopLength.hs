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
-- Module      : Network.AWS.MediaLive.Types.H264SubGopLength
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264SubGopLength
  ( H264SubGopLength
      ( ..,
        H264SubGopLengthDYNAMIC,
        H264SubGopLengthFIXED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Sub Gop Length
newtype H264SubGopLength = H264SubGopLength'
  { fromH264SubGopLength ::
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

pattern H264SubGopLengthDYNAMIC :: H264SubGopLength
pattern H264SubGopLengthDYNAMIC = H264SubGopLength' "DYNAMIC"

pattern H264SubGopLengthFIXED :: H264SubGopLength
pattern H264SubGopLengthFIXED = H264SubGopLength' "FIXED"

{-# COMPLETE
  H264SubGopLengthDYNAMIC,
  H264SubGopLengthFIXED,
  H264SubGopLength'
  #-}

instance Prelude.FromText H264SubGopLength where
  parser = H264SubGopLength' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264SubGopLength where
  toText (H264SubGopLength' x) = x

instance Prelude.Hashable H264SubGopLength

instance Prelude.NFData H264SubGopLength

instance Prelude.ToByteString H264SubGopLength

instance Prelude.ToQuery H264SubGopLength

instance Prelude.ToHeader H264SubGopLength

instance Prelude.ToJSON H264SubGopLength where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264SubGopLength where
  parseJSON = Prelude.parseJSONText "H264SubGopLength"
