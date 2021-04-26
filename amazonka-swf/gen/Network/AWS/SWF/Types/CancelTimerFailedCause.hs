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
-- Module      : Network.AWS.SWF.Types.CancelTimerFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.CancelTimerFailedCause
  ( CancelTimerFailedCause
      ( ..,
        CancelTimerFailedCauseOPERATIONNOTPERMITTED,
        CancelTimerFailedCauseTIMERIDUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CancelTimerFailedCause = CancelTimerFailedCause'
  { fromCancelTimerFailedCause ::
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

pattern CancelTimerFailedCauseOPERATIONNOTPERMITTED :: CancelTimerFailedCause
pattern CancelTimerFailedCauseOPERATIONNOTPERMITTED = CancelTimerFailedCause' "OPERATION_NOT_PERMITTED"

pattern CancelTimerFailedCauseTIMERIDUNKNOWN :: CancelTimerFailedCause
pattern CancelTimerFailedCauseTIMERIDUNKNOWN = CancelTimerFailedCause' "TIMER_ID_UNKNOWN"

{-# COMPLETE
  CancelTimerFailedCauseOPERATIONNOTPERMITTED,
  CancelTimerFailedCauseTIMERIDUNKNOWN,
  CancelTimerFailedCause'
  #-}

instance Prelude.FromText CancelTimerFailedCause where
  parser = CancelTimerFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText CancelTimerFailedCause where
  toText (CancelTimerFailedCause' x) = x

instance Prelude.Hashable CancelTimerFailedCause

instance Prelude.NFData CancelTimerFailedCause

instance Prelude.ToByteString CancelTimerFailedCause

instance Prelude.ToQuery CancelTimerFailedCause

instance Prelude.ToHeader CancelTimerFailedCause

instance Prelude.FromJSON CancelTimerFailedCause where
  parseJSON = Prelude.parseJSONText "CancelTimerFailedCause"
