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
-- Module      : Network.AWS.DeviceFarm.Types.UploadStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.UploadStatus
  ( UploadStatus
      ( ..,
        UploadStatusFAILED,
        UploadStatusINITIALIZED,
        UploadStatusPROCESSING,
        UploadStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UploadStatus = UploadStatus'
  { fromUploadStatus ::
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

pattern UploadStatusFAILED :: UploadStatus
pattern UploadStatusFAILED = UploadStatus' "FAILED"

pattern UploadStatusINITIALIZED :: UploadStatus
pattern UploadStatusINITIALIZED = UploadStatus' "INITIALIZED"

pattern UploadStatusPROCESSING :: UploadStatus
pattern UploadStatusPROCESSING = UploadStatus' "PROCESSING"

pattern UploadStatusSUCCEEDED :: UploadStatus
pattern UploadStatusSUCCEEDED = UploadStatus' "SUCCEEDED"

{-# COMPLETE
  UploadStatusFAILED,
  UploadStatusINITIALIZED,
  UploadStatusPROCESSING,
  UploadStatusSUCCEEDED,
  UploadStatus'
  #-}

instance Prelude.FromText UploadStatus where
  parser = UploadStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText UploadStatus where
  toText (UploadStatus' x) = x

instance Prelude.Hashable UploadStatus

instance Prelude.NFData UploadStatus

instance Prelude.ToByteString UploadStatus

instance Prelude.ToQuery UploadStatus

instance Prelude.ToHeader UploadStatus

instance Prelude.FromJSON UploadStatus where
  parseJSON = Prelude.parseJSONText "UploadStatus"
