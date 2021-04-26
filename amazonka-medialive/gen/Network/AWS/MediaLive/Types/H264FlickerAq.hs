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
-- Module      : Network.AWS.MediaLive.Types.H264FlickerAq
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264FlickerAq
  ( H264FlickerAq
      ( ..,
        H264FlickerAqDISABLED,
        H264FlickerAqENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Flicker Aq
newtype H264FlickerAq = H264FlickerAq'
  { fromH264FlickerAq ::
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

pattern H264FlickerAqDISABLED :: H264FlickerAq
pattern H264FlickerAqDISABLED = H264FlickerAq' "DISABLED"

pattern H264FlickerAqENABLED :: H264FlickerAq
pattern H264FlickerAqENABLED = H264FlickerAq' "ENABLED"

{-# COMPLETE
  H264FlickerAqDISABLED,
  H264FlickerAqENABLED,
  H264FlickerAq'
  #-}

instance Prelude.FromText H264FlickerAq where
  parser = H264FlickerAq' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264FlickerAq where
  toText (H264FlickerAq' x) = x

instance Prelude.Hashable H264FlickerAq

instance Prelude.NFData H264FlickerAq

instance Prelude.ToByteString H264FlickerAq

instance Prelude.ToQuery H264FlickerAq

instance Prelude.ToHeader H264FlickerAq

instance Prelude.ToJSON H264FlickerAq where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264FlickerAq where
  parseJSON = Prelude.parseJSONText "H264FlickerAq"
