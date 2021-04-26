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
-- Module      : Network.AWS.EMR.Types.CancelStepsRequestStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.CancelStepsRequestStatus
  ( CancelStepsRequestStatus
      ( ..,
        CancelStepsRequestStatusFAILED,
        CancelStepsRequestStatusSUBMITTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CancelStepsRequestStatus = CancelStepsRequestStatus'
  { fromCancelStepsRequestStatus ::
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

pattern CancelStepsRequestStatusFAILED :: CancelStepsRequestStatus
pattern CancelStepsRequestStatusFAILED = CancelStepsRequestStatus' "FAILED"

pattern CancelStepsRequestStatusSUBMITTED :: CancelStepsRequestStatus
pattern CancelStepsRequestStatusSUBMITTED = CancelStepsRequestStatus' "SUBMITTED"

{-# COMPLETE
  CancelStepsRequestStatusFAILED,
  CancelStepsRequestStatusSUBMITTED,
  CancelStepsRequestStatus'
  #-}

instance Prelude.FromText CancelStepsRequestStatus where
  parser = CancelStepsRequestStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CancelStepsRequestStatus where
  toText (CancelStepsRequestStatus' x) = x

instance Prelude.Hashable CancelStepsRequestStatus

instance Prelude.NFData CancelStepsRequestStatus

instance Prelude.ToByteString CancelStepsRequestStatus

instance Prelude.ToQuery CancelStepsRequestStatus

instance Prelude.ToHeader CancelStepsRequestStatus

instance Prelude.FromJSON CancelStepsRequestStatus where
  parseJSON = Prelude.parseJSONText "CancelStepsRequestStatus"
