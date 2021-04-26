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
-- Module      : Network.AWS.SageMaker.Types.CaptureStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CaptureStatus
  ( CaptureStatus
      ( ..,
        CaptureStatusStarted,
        CaptureStatusStopped
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CaptureStatus = CaptureStatus'
  { fromCaptureStatus ::
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

pattern CaptureStatusStarted :: CaptureStatus
pattern CaptureStatusStarted = CaptureStatus' "Started"

pattern CaptureStatusStopped :: CaptureStatus
pattern CaptureStatusStopped = CaptureStatus' "Stopped"

{-# COMPLETE
  CaptureStatusStarted,
  CaptureStatusStopped,
  CaptureStatus'
  #-}

instance Prelude.FromText CaptureStatus where
  parser = CaptureStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CaptureStatus where
  toText (CaptureStatus' x) = x

instance Prelude.Hashable CaptureStatus

instance Prelude.NFData CaptureStatus

instance Prelude.ToByteString CaptureStatus

instance Prelude.ToQuery CaptureStatus

instance Prelude.ToHeader CaptureStatus

instance Prelude.FromJSON CaptureStatus where
  parseJSON = Prelude.parseJSONText "CaptureStatus"
