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
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupAudioOnlyTimecodeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupAudioOnlyTimecodeControl
  ( SmoothGroupAudioOnlyTimecodeControl
      ( ..,
        SmoothGroupAudioOnlyTimecodeControlPASSTHROUGH,
        SmoothGroupAudioOnlyTimecodeControlUSECONFIGUREDCLOCK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smooth Group Audio Only Timecode Control
newtype SmoothGroupAudioOnlyTimecodeControl = SmoothGroupAudioOnlyTimecodeControl'
  { fromSmoothGroupAudioOnlyTimecodeControl ::
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

pattern SmoothGroupAudioOnlyTimecodeControlPASSTHROUGH :: SmoothGroupAudioOnlyTimecodeControl
pattern SmoothGroupAudioOnlyTimecodeControlPASSTHROUGH = SmoothGroupAudioOnlyTimecodeControl' "PASSTHROUGH"

pattern SmoothGroupAudioOnlyTimecodeControlUSECONFIGUREDCLOCK :: SmoothGroupAudioOnlyTimecodeControl
pattern SmoothGroupAudioOnlyTimecodeControlUSECONFIGUREDCLOCK = SmoothGroupAudioOnlyTimecodeControl' "USE_CONFIGURED_CLOCK"

{-# COMPLETE
  SmoothGroupAudioOnlyTimecodeControlPASSTHROUGH,
  SmoothGroupAudioOnlyTimecodeControlUSECONFIGUREDCLOCK,
  SmoothGroupAudioOnlyTimecodeControl'
  #-}

instance Prelude.FromText SmoothGroupAudioOnlyTimecodeControl where
  parser = SmoothGroupAudioOnlyTimecodeControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText SmoothGroupAudioOnlyTimecodeControl where
  toText (SmoothGroupAudioOnlyTimecodeControl' x) = x

instance Prelude.Hashable SmoothGroupAudioOnlyTimecodeControl

instance Prelude.NFData SmoothGroupAudioOnlyTimecodeControl

instance Prelude.ToByteString SmoothGroupAudioOnlyTimecodeControl

instance Prelude.ToQuery SmoothGroupAudioOnlyTimecodeControl

instance Prelude.ToHeader SmoothGroupAudioOnlyTimecodeControl

instance Prelude.ToJSON SmoothGroupAudioOnlyTimecodeControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SmoothGroupAudioOnlyTimecodeControl where
  parseJSON = Prelude.parseJSONText "SmoothGroupAudioOnlyTimecodeControl"
