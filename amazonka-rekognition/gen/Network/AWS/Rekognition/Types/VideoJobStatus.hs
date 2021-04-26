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
-- Module      : Network.AWS.Rekognition.Types.VideoJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.VideoJobStatus
  ( VideoJobStatus
      ( ..,
        VideoJobStatusFAILED,
        VideoJobStatusINPROGRESS,
        VideoJobStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VideoJobStatus = VideoJobStatus'
  { fromVideoJobStatus ::
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

pattern VideoJobStatusFAILED :: VideoJobStatus
pattern VideoJobStatusFAILED = VideoJobStatus' "FAILED"

pattern VideoJobStatusINPROGRESS :: VideoJobStatus
pattern VideoJobStatusINPROGRESS = VideoJobStatus' "IN_PROGRESS"

pattern VideoJobStatusSUCCEEDED :: VideoJobStatus
pattern VideoJobStatusSUCCEEDED = VideoJobStatus' "SUCCEEDED"

{-# COMPLETE
  VideoJobStatusFAILED,
  VideoJobStatusINPROGRESS,
  VideoJobStatusSUCCEEDED,
  VideoJobStatus'
  #-}

instance Prelude.FromText VideoJobStatus where
  parser = VideoJobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText VideoJobStatus where
  toText (VideoJobStatus' x) = x

instance Prelude.Hashable VideoJobStatus

instance Prelude.NFData VideoJobStatus

instance Prelude.ToByteString VideoJobStatus

instance Prelude.ToQuery VideoJobStatus

instance Prelude.ToHeader VideoJobStatus

instance Prelude.FromJSON VideoJobStatus where
  parseJSON = Prelude.parseJSONText "VideoJobStatus"
