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
-- Module      : Network.AWS.MediaLive.Types.H264SpatialAq
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264SpatialAq
  ( H264SpatialAq
      ( ..,
        H264SpatialAqDISABLED,
        H264SpatialAqENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Spatial Aq
newtype H264SpatialAq = H264SpatialAq'
  { fromH264SpatialAq ::
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

pattern H264SpatialAqDISABLED :: H264SpatialAq
pattern H264SpatialAqDISABLED = H264SpatialAq' "DISABLED"

pattern H264SpatialAqENABLED :: H264SpatialAq
pattern H264SpatialAqENABLED = H264SpatialAq' "ENABLED"

{-# COMPLETE
  H264SpatialAqDISABLED,
  H264SpatialAqENABLED,
  H264SpatialAq'
  #-}

instance Prelude.FromText H264SpatialAq where
  parser = H264SpatialAq' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264SpatialAq where
  toText (H264SpatialAq' x) = x

instance Prelude.Hashable H264SpatialAq

instance Prelude.NFData H264SpatialAq

instance Prelude.ToByteString H264SpatialAq

instance Prelude.ToQuery H264SpatialAq

instance Prelude.ToHeader H264SpatialAq

instance Prelude.ToJSON H264SpatialAq where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264SpatialAq where
  parseJSON = Prelude.parseJSONText "H264SpatialAq"
