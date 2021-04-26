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
-- Module      : Network.AWS.SWF.Types.StartTimerFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.StartTimerFailedCause
  ( StartTimerFailedCause
      ( ..,
        StartTimerFailedCauseOPENTIMERSLIMITEXCEEDED,
        StartTimerFailedCauseOPERATIONNOTPERMITTED,
        StartTimerFailedCauseTIMERCREATIONRATEEXCEEDED,
        StartTimerFailedCauseTIMERIDALREADYINUSE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StartTimerFailedCause = StartTimerFailedCause'
  { fromStartTimerFailedCause ::
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

pattern StartTimerFailedCauseOPENTIMERSLIMITEXCEEDED :: StartTimerFailedCause
pattern StartTimerFailedCauseOPENTIMERSLIMITEXCEEDED = StartTimerFailedCause' "OPEN_TIMERS_LIMIT_EXCEEDED"

pattern StartTimerFailedCauseOPERATIONNOTPERMITTED :: StartTimerFailedCause
pattern StartTimerFailedCauseOPERATIONNOTPERMITTED = StartTimerFailedCause' "OPERATION_NOT_PERMITTED"

pattern StartTimerFailedCauseTIMERCREATIONRATEEXCEEDED :: StartTimerFailedCause
pattern StartTimerFailedCauseTIMERCREATIONRATEEXCEEDED = StartTimerFailedCause' "TIMER_CREATION_RATE_EXCEEDED"

pattern StartTimerFailedCauseTIMERIDALREADYINUSE :: StartTimerFailedCause
pattern StartTimerFailedCauseTIMERIDALREADYINUSE = StartTimerFailedCause' "TIMER_ID_ALREADY_IN_USE"

{-# COMPLETE
  StartTimerFailedCauseOPENTIMERSLIMITEXCEEDED,
  StartTimerFailedCauseOPERATIONNOTPERMITTED,
  StartTimerFailedCauseTIMERCREATIONRATEEXCEEDED,
  StartTimerFailedCauseTIMERIDALREADYINUSE,
  StartTimerFailedCause'
  #-}

instance Prelude.FromText StartTimerFailedCause where
  parser = StartTimerFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText StartTimerFailedCause where
  toText (StartTimerFailedCause' x) = x

instance Prelude.Hashable StartTimerFailedCause

instance Prelude.NFData StartTimerFailedCause

instance Prelude.ToByteString StartTimerFailedCause

instance Prelude.ToQuery StartTimerFailedCause

instance Prelude.ToHeader StartTimerFailedCause

instance Prelude.FromJSON StartTimerFailedCause where
  parseJSON = Prelude.parseJSONText "StartTimerFailedCause"
