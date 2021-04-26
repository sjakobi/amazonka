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
-- Module      : Network.AWS.MediaConvert.Types.H264RepeatPps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264RepeatPps
  ( H264RepeatPps
      ( ..,
        H264RepeatPpsDISABLED,
        H264RepeatPpsENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Places a PPS header on each encoded picture, even if repeated.
newtype H264RepeatPps = H264RepeatPps'
  { fromH264RepeatPps ::
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

pattern H264RepeatPpsDISABLED :: H264RepeatPps
pattern H264RepeatPpsDISABLED = H264RepeatPps' "DISABLED"

pattern H264RepeatPpsENABLED :: H264RepeatPps
pattern H264RepeatPpsENABLED = H264RepeatPps' "ENABLED"

{-# COMPLETE
  H264RepeatPpsDISABLED,
  H264RepeatPpsENABLED,
  H264RepeatPps'
  #-}

instance Prelude.FromText H264RepeatPps where
  parser = H264RepeatPps' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264RepeatPps where
  toText (H264RepeatPps' x) = x

instance Prelude.Hashable H264RepeatPps

instance Prelude.NFData H264RepeatPps

instance Prelude.ToByteString H264RepeatPps

instance Prelude.ToQuery H264RepeatPps

instance Prelude.ToHeader H264RepeatPps

instance Prelude.ToJSON H264RepeatPps where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264RepeatPps where
  parseJSON = Prelude.parseJSONText "H264RepeatPps"
