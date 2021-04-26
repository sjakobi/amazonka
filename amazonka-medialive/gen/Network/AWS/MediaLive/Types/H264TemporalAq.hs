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
-- Module      : Network.AWS.MediaLive.Types.H264TemporalAq
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264TemporalAq
  ( H264TemporalAq
      ( ..,
        H264TemporalAqDISABLED,
        H264TemporalAqENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Temporal Aq
newtype H264TemporalAq = H264TemporalAq'
  { fromH264TemporalAq ::
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

pattern H264TemporalAqDISABLED :: H264TemporalAq
pattern H264TemporalAqDISABLED = H264TemporalAq' "DISABLED"

pattern H264TemporalAqENABLED :: H264TemporalAq
pattern H264TemporalAqENABLED = H264TemporalAq' "ENABLED"

{-# COMPLETE
  H264TemporalAqDISABLED,
  H264TemporalAqENABLED,
  H264TemporalAq'
  #-}

instance Prelude.FromText H264TemporalAq where
  parser = H264TemporalAq' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264TemporalAq where
  toText (H264TemporalAq' x) = x

instance Prelude.Hashable H264TemporalAq

instance Prelude.NFData H264TemporalAq

instance Prelude.ToByteString H264TemporalAq

instance Prelude.ToQuery H264TemporalAq

instance Prelude.ToHeader H264TemporalAq

instance Prelude.ToJSON H264TemporalAq where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264TemporalAq where
  parseJSON = Prelude.parseJSONText "H264TemporalAq"
