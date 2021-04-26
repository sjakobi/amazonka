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
-- Module      : Network.AWS.MediaConvert.Types.Mp3RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mp3RateControlMode
  ( Mp3RateControlMode
      ( ..,
        Mp3RateControlModeCBR,
        Mp3RateControlModeVBR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether the service encodes this MP3 audio output with a
-- constant bitrate (CBR) or a variable bitrate (VBR).
newtype Mp3RateControlMode = Mp3RateControlMode'
  { fromMp3RateControlMode ::
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

pattern Mp3RateControlModeCBR :: Mp3RateControlMode
pattern Mp3RateControlModeCBR = Mp3RateControlMode' "CBR"

pattern Mp3RateControlModeVBR :: Mp3RateControlMode
pattern Mp3RateControlModeVBR = Mp3RateControlMode' "VBR"

{-# COMPLETE
  Mp3RateControlModeCBR,
  Mp3RateControlModeVBR,
  Mp3RateControlMode'
  #-}

instance Prelude.FromText Mp3RateControlMode where
  parser = Mp3RateControlMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mp3RateControlMode where
  toText (Mp3RateControlMode' x) = x

instance Prelude.Hashable Mp3RateControlMode

instance Prelude.NFData Mp3RateControlMode

instance Prelude.ToByteString Mp3RateControlMode

instance Prelude.ToQuery Mp3RateControlMode

instance Prelude.ToHeader Mp3RateControlMode

instance Prelude.ToJSON Mp3RateControlMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mp3RateControlMode where
  parseJSON = Prelude.parseJSONText "Mp3RateControlMode"
