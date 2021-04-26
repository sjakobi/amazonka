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
-- Module      : Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedCause
  ( ScheduleLambdaFunctionFailedCause
      ( ..,
        ScheduleLambdaFunctionFailedCauseIDALREADYINUSE,
        ScheduleLambdaFunctionFailedCauseLAMBDAFUNCTIONCREATIONRATEEXCEEDED,
        ScheduleLambdaFunctionFailedCauseLAMBDASERVICENOTAVAILABLEINREGION,
        ScheduleLambdaFunctionFailedCauseOPENLAMBDAFUNCTIONSLIMITEXCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScheduleLambdaFunctionFailedCause = ScheduleLambdaFunctionFailedCause'
  { fromScheduleLambdaFunctionFailedCause ::
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

pattern ScheduleLambdaFunctionFailedCauseIDALREADYINUSE :: ScheduleLambdaFunctionFailedCause
pattern ScheduleLambdaFunctionFailedCauseIDALREADYINUSE = ScheduleLambdaFunctionFailedCause' "ID_ALREADY_IN_USE"

pattern ScheduleLambdaFunctionFailedCauseLAMBDAFUNCTIONCREATIONRATEEXCEEDED :: ScheduleLambdaFunctionFailedCause
pattern ScheduleLambdaFunctionFailedCauseLAMBDAFUNCTIONCREATIONRATEEXCEEDED = ScheduleLambdaFunctionFailedCause' "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED"

pattern ScheduleLambdaFunctionFailedCauseLAMBDASERVICENOTAVAILABLEINREGION :: ScheduleLambdaFunctionFailedCause
pattern ScheduleLambdaFunctionFailedCauseLAMBDASERVICENOTAVAILABLEINREGION = ScheduleLambdaFunctionFailedCause' "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"

pattern ScheduleLambdaFunctionFailedCauseOPENLAMBDAFUNCTIONSLIMITEXCEEDED :: ScheduleLambdaFunctionFailedCause
pattern ScheduleLambdaFunctionFailedCauseOPENLAMBDAFUNCTIONSLIMITEXCEEDED = ScheduleLambdaFunctionFailedCause' "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED"

{-# COMPLETE
  ScheduleLambdaFunctionFailedCauseIDALREADYINUSE,
  ScheduleLambdaFunctionFailedCauseLAMBDAFUNCTIONCREATIONRATEEXCEEDED,
  ScheduleLambdaFunctionFailedCauseLAMBDASERVICENOTAVAILABLEINREGION,
  ScheduleLambdaFunctionFailedCauseOPENLAMBDAFUNCTIONSLIMITEXCEEDED,
  ScheduleLambdaFunctionFailedCause'
  #-}

instance Prelude.FromText ScheduleLambdaFunctionFailedCause where
  parser = ScheduleLambdaFunctionFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScheduleLambdaFunctionFailedCause where
  toText (ScheduleLambdaFunctionFailedCause' x) = x

instance Prelude.Hashable ScheduleLambdaFunctionFailedCause

instance Prelude.NFData ScheduleLambdaFunctionFailedCause

instance Prelude.ToByteString ScheduleLambdaFunctionFailedCause

instance Prelude.ToQuery ScheduleLambdaFunctionFailedCause

instance Prelude.ToHeader ScheduleLambdaFunctionFailedCause

instance Prelude.FromJSON ScheduleLambdaFunctionFailedCause where
  parseJSON = Prelude.parseJSONText "ScheduleLambdaFunctionFailedCause"
