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
-- Module      : Network.AWS.MediaConvert.Types.H265UnregisteredSeiTimecode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265UnregisteredSeiTimecode
  ( H265UnregisteredSeiTimecode
      ( ..,
        H265UnregisteredSeiTimecodeDISABLED,
        H265UnregisteredSeiTimecodeENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Inserts timecode for each frame as 4 bytes of an unregistered SEI
-- message.
newtype H265UnregisteredSeiTimecode = H265UnregisteredSeiTimecode'
  { fromH265UnregisteredSeiTimecode ::
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

pattern H265UnregisteredSeiTimecodeDISABLED :: H265UnregisteredSeiTimecode
pattern H265UnregisteredSeiTimecodeDISABLED = H265UnregisteredSeiTimecode' "DISABLED"

pattern H265UnregisteredSeiTimecodeENABLED :: H265UnregisteredSeiTimecode
pattern H265UnregisteredSeiTimecodeENABLED = H265UnregisteredSeiTimecode' "ENABLED"

{-# COMPLETE
  H265UnregisteredSeiTimecodeDISABLED,
  H265UnregisteredSeiTimecodeENABLED,
  H265UnregisteredSeiTimecode'
  #-}

instance Prelude.FromText H265UnregisteredSeiTimecode where
  parser = H265UnregisteredSeiTimecode' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265UnregisteredSeiTimecode where
  toText (H265UnregisteredSeiTimecode' x) = x

instance Prelude.Hashable H265UnregisteredSeiTimecode

instance Prelude.NFData H265UnregisteredSeiTimecode

instance Prelude.ToByteString H265UnregisteredSeiTimecode

instance Prelude.ToQuery H265UnregisteredSeiTimecode

instance Prelude.ToHeader H265UnregisteredSeiTimecode

instance Prelude.ToJSON H265UnregisteredSeiTimecode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265UnregisteredSeiTimecode where
  parseJSON = Prelude.parseJSONText "H265UnregisteredSeiTimecode"
