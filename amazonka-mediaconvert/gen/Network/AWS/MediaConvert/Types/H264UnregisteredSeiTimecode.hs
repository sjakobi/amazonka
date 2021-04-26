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
-- Module      : Network.AWS.MediaConvert.Types.H264UnregisteredSeiTimecode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264UnregisteredSeiTimecode
  ( H264UnregisteredSeiTimecode
      ( ..,
        H264UnregisteredSeiTimecodeDISABLED,
        H264UnregisteredSeiTimecodeENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Inserts timecode for each frame as 4 bytes of an unregistered SEI
-- message.
newtype H264UnregisteredSeiTimecode = H264UnregisteredSeiTimecode'
  { fromH264UnregisteredSeiTimecode ::
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

pattern H264UnregisteredSeiTimecodeDISABLED :: H264UnregisteredSeiTimecode
pattern H264UnregisteredSeiTimecodeDISABLED = H264UnregisteredSeiTimecode' "DISABLED"

pattern H264UnregisteredSeiTimecodeENABLED :: H264UnregisteredSeiTimecode
pattern H264UnregisteredSeiTimecodeENABLED = H264UnregisteredSeiTimecode' "ENABLED"

{-# COMPLETE
  H264UnregisteredSeiTimecodeDISABLED,
  H264UnregisteredSeiTimecodeENABLED,
  H264UnregisteredSeiTimecode'
  #-}

instance Prelude.FromText H264UnregisteredSeiTimecode where
  parser = H264UnregisteredSeiTimecode' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264UnregisteredSeiTimecode where
  toText (H264UnregisteredSeiTimecode' x) = x

instance Prelude.Hashable H264UnregisteredSeiTimecode

instance Prelude.NFData H264UnregisteredSeiTimecode

instance Prelude.ToByteString H264UnregisteredSeiTimecode

instance Prelude.ToQuery H264UnregisteredSeiTimecode

instance Prelude.ToHeader H264UnregisteredSeiTimecode

instance Prelude.ToJSON H264UnregisteredSeiTimecode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264UnregisteredSeiTimecode where
  parseJSON = Prelude.parseJSONText "H264UnregisteredSeiTimecode"
