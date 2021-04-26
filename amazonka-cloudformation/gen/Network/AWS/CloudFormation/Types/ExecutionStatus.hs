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
-- Module      : Network.AWS.CloudFormation.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        ExecutionStatusAVAILABLE,
        ExecutionStatusEXECUTECOMPLETE,
        ExecutionStatusEXECUTEFAILED,
        ExecutionStatusEXECUTEINPROGRESS,
        ExecutionStatusOBSOLETE,
        ExecutionStatusUNAVAILABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionStatus = ExecutionStatus'
  { fromExecutionStatus ::
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

pattern ExecutionStatusAVAILABLE :: ExecutionStatus
pattern ExecutionStatusAVAILABLE = ExecutionStatus' "AVAILABLE"

pattern ExecutionStatusEXECUTECOMPLETE :: ExecutionStatus
pattern ExecutionStatusEXECUTECOMPLETE = ExecutionStatus' "EXECUTE_COMPLETE"

pattern ExecutionStatusEXECUTEFAILED :: ExecutionStatus
pattern ExecutionStatusEXECUTEFAILED = ExecutionStatus' "EXECUTE_FAILED"

pattern ExecutionStatusEXECUTEINPROGRESS :: ExecutionStatus
pattern ExecutionStatusEXECUTEINPROGRESS = ExecutionStatus' "EXECUTE_IN_PROGRESS"

pattern ExecutionStatusOBSOLETE :: ExecutionStatus
pattern ExecutionStatusOBSOLETE = ExecutionStatus' "OBSOLETE"

pattern ExecutionStatusUNAVAILABLE :: ExecutionStatus
pattern ExecutionStatusUNAVAILABLE = ExecutionStatus' "UNAVAILABLE"

{-# COMPLETE
  ExecutionStatusAVAILABLE,
  ExecutionStatusEXECUTECOMPLETE,
  ExecutionStatusEXECUTEFAILED,
  ExecutionStatusEXECUTEINPROGRESS,
  ExecutionStatusOBSOLETE,
  ExecutionStatusUNAVAILABLE,
  ExecutionStatus'
  #-}

instance Prelude.FromText ExecutionStatus where
  parser = ExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutionStatus where
  toText (ExecutionStatus' x) = x

instance Prelude.Hashable ExecutionStatus

instance Prelude.NFData ExecutionStatus

instance Prelude.ToByteString ExecutionStatus

instance Prelude.ToQuery ExecutionStatus

instance Prelude.ToHeader ExecutionStatus

instance Prelude.FromXML ExecutionStatus where
  parseXML = Prelude.parseXMLText "ExecutionStatus"
