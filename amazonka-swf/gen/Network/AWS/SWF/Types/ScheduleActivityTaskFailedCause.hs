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
-- Module      : Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause
  ( ScheduleActivityTaskFailedCause
      ( ..,
        ScheduleActivityTaskFailedCauseACTIVITYCREATIONRATEEXCEEDED,
        ScheduleActivityTaskFailedCauseACTIVITYIDALREADYINUSE,
        ScheduleActivityTaskFailedCauseACTIVITYTYPEDEPRECATED,
        ScheduleActivityTaskFailedCauseACTIVITYTYPEDOESNOTEXIST,
        ScheduleActivityTaskFailedCauseDEFAULTHEARTBEATTIMEOUTUNDEFINED,
        ScheduleActivityTaskFailedCauseDEFAULTSCHEDULETOCLOSETIMEOUTUNDEFINED,
        ScheduleActivityTaskFailedCauseDEFAULTSCHEDULETOSTARTTIMEOUTUNDEFINED,
        ScheduleActivityTaskFailedCauseDEFAULTSTARTTOCLOSETIMEOUTUNDEFINED,
        ScheduleActivityTaskFailedCauseDEFAULTTASKLISTUNDEFINED,
        ScheduleActivityTaskFailedCauseOPENACTIVITIESLIMITEXCEEDED,
        ScheduleActivityTaskFailedCauseOPERATIONNOTPERMITTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScheduleActivityTaskFailedCause = ScheduleActivityTaskFailedCause'
  { fromScheduleActivityTaskFailedCause ::
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

pattern ScheduleActivityTaskFailedCauseACTIVITYCREATIONRATEEXCEEDED :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseACTIVITYCREATIONRATEEXCEEDED = ScheduleActivityTaskFailedCause' "ACTIVITY_CREATION_RATE_EXCEEDED"

pattern ScheduleActivityTaskFailedCauseACTIVITYIDALREADYINUSE :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseACTIVITYIDALREADYINUSE = ScheduleActivityTaskFailedCause' "ACTIVITY_ID_ALREADY_IN_USE"

pattern ScheduleActivityTaskFailedCauseACTIVITYTYPEDEPRECATED :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseACTIVITYTYPEDEPRECATED = ScheduleActivityTaskFailedCause' "ACTIVITY_TYPE_DEPRECATED"

pattern ScheduleActivityTaskFailedCauseACTIVITYTYPEDOESNOTEXIST :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseACTIVITYTYPEDOESNOTEXIST = ScheduleActivityTaskFailedCause' "ACTIVITY_TYPE_DOES_NOT_EXIST"

pattern ScheduleActivityTaskFailedCauseDEFAULTHEARTBEATTIMEOUTUNDEFINED :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseDEFAULTHEARTBEATTIMEOUTUNDEFINED = ScheduleActivityTaskFailedCause' "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED"

pattern ScheduleActivityTaskFailedCauseDEFAULTSCHEDULETOCLOSETIMEOUTUNDEFINED :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseDEFAULTSCHEDULETOCLOSETIMEOUTUNDEFINED = ScheduleActivityTaskFailedCause' "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern ScheduleActivityTaskFailedCauseDEFAULTSCHEDULETOSTARTTIMEOUTUNDEFINED :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseDEFAULTSCHEDULETOSTARTTIMEOUTUNDEFINED = ScheduleActivityTaskFailedCause' "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED"

pattern ScheduleActivityTaskFailedCauseDEFAULTSTARTTOCLOSETIMEOUTUNDEFINED :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseDEFAULTSTARTTOCLOSETIMEOUTUNDEFINED = ScheduleActivityTaskFailedCause' "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern ScheduleActivityTaskFailedCauseDEFAULTTASKLISTUNDEFINED :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseDEFAULTTASKLISTUNDEFINED = ScheduleActivityTaskFailedCause' "DEFAULT_TASK_LIST_UNDEFINED"

pattern ScheduleActivityTaskFailedCauseOPENACTIVITIESLIMITEXCEEDED :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseOPENACTIVITIESLIMITEXCEEDED = ScheduleActivityTaskFailedCause' "OPEN_ACTIVITIES_LIMIT_EXCEEDED"

pattern ScheduleActivityTaskFailedCauseOPERATIONNOTPERMITTED :: ScheduleActivityTaskFailedCause
pattern ScheduleActivityTaskFailedCauseOPERATIONNOTPERMITTED = ScheduleActivityTaskFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  ScheduleActivityTaskFailedCauseACTIVITYCREATIONRATEEXCEEDED,
  ScheduleActivityTaskFailedCauseACTIVITYIDALREADYINUSE,
  ScheduleActivityTaskFailedCauseACTIVITYTYPEDEPRECATED,
  ScheduleActivityTaskFailedCauseACTIVITYTYPEDOESNOTEXIST,
  ScheduleActivityTaskFailedCauseDEFAULTHEARTBEATTIMEOUTUNDEFINED,
  ScheduleActivityTaskFailedCauseDEFAULTSCHEDULETOCLOSETIMEOUTUNDEFINED,
  ScheduleActivityTaskFailedCauseDEFAULTSCHEDULETOSTARTTIMEOUTUNDEFINED,
  ScheduleActivityTaskFailedCauseDEFAULTSTARTTOCLOSETIMEOUTUNDEFINED,
  ScheduleActivityTaskFailedCauseDEFAULTTASKLISTUNDEFINED,
  ScheduleActivityTaskFailedCauseOPENACTIVITIESLIMITEXCEEDED,
  ScheduleActivityTaskFailedCauseOPERATIONNOTPERMITTED,
  ScheduleActivityTaskFailedCause'
  #-}

instance Prelude.FromText ScheduleActivityTaskFailedCause where
  parser = ScheduleActivityTaskFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScheduleActivityTaskFailedCause where
  toText (ScheduleActivityTaskFailedCause' x) = x

instance Prelude.Hashable ScheduleActivityTaskFailedCause

instance Prelude.NFData ScheduleActivityTaskFailedCause

instance Prelude.ToByteString ScheduleActivityTaskFailedCause

instance Prelude.ToQuery ScheduleActivityTaskFailedCause

instance Prelude.ToHeader ScheduleActivityTaskFailedCause

instance Prelude.FromJSON ScheduleActivityTaskFailedCause where
  parseJSON = Prelude.parseJSONText "ScheduleActivityTaskFailedCause"
