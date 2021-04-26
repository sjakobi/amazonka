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
-- Module      : Network.AWS.Discovery.Types.ImportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ImportStatus
  ( ImportStatus
      ( ..,
        ImportStatusDELETECOMPLETE,
        ImportStatusDELETEFAILED,
        ImportStatusDELETEFAILEDLIMITEXCEEDED,
        ImportStatusDELETEINPROGRESS,
        ImportStatusIMPORTCOMPLETE,
        ImportStatusIMPORTCOMPLETEWITHERRORS,
        ImportStatusIMPORTFAILED,
        ImportStatusIMPORTFAILEDRECORDLIMITEXCEEDED,
        ImportStatusIMPORTFAILEDSERVERLIMITEXCEEDED,
        ImportStatusIMPORTINPROGRESS,
        ImportStatusINTERNALERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImportStatus = ImportStatus'
  { fromImportStatus ::
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

pattern ImportStatusDELETECOMPLETE :: ImportStatus
pattern ImportStatusDELETECOMPLETE = ImportStatus' "DELETE_COMPLETE"

pattern ImportStatusDELETEFAILED :: ImportStatus
pattern ImportStatusDELETEFAILED = ImportStatus' "DELETE_FAILED"

pattern ImportStatusDELETEFAILEDLIMITEXCEEDED :: ImportStatus
pattern ImportStatusDELETEFAILEDLIMITEXCEEDED = ImportStatus' "DELETE_FAILED_LIMIT_EXCEEDED"

pattern ImportStatusDELETEINPROGRESS :: ImportStatus
pattern ImportStatusDELETEINPROGRESS = ImportStatus' "DELETE_IN_PROGRESS"

pattern ImportStatusIMPORTCOMPLETE :: ImportStatus
pattern ImportStatusIMPORTCOMPLETE = ImportStatus' "IMPORT_COMPLETE"

pattern ImportStatusIMPORTCOMPLETEWITHERRORS :: ImportStatus
pattern ImportStatusIMPORTCOMPLETEWITHERRORS = ImportStatus' "IMPORT_COMPLETE_WITH_ERRORS"

pattern ImportStatusIMPORTFAILED :: ImportStatus
pattern ImportStatusIMPORTFAILED = ImportStatus' "IMPORT_FAILED"

pattern ImportStatusIMPORTFAILEDRECORDLIMITEXCEEDED :: ImportStatus
pattern ImportStatusIMPORTFAILEDRECORDLIMITEXCEEDED = ImportStatus' "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED"

pattern ImportStatusIMPORTFAILEDSERVERLIMITEXCEEDED :: ImportStatus
pattern ImportStatusIMPORTFAILEDSERVERLIMITEXCEEDED = ImportStatus' "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED"

pattern ImportStatusIMPORTINPROGRESS :: ImportStatus
pattern ImportStatusIMPORTINPROGRESS = ImportStatus' "IMPORT_IN_PROGRESS"

pattern ImportStatusINTERNALERROR :: ImportStatus
pattern ImportStatusINTERNALERROR = ImportStatus' "INTERNAL_ERROR"

{-# COMPLETE
  ImportStatusDELETECOMPLETE,
  ImportStatusDELETEFAILED,
  ImportStatusDELETEFAILEDLIMITEXCEEDED,
  ImportStatusDELETEINPROGRESS,
  ImportStatusIMPORTCOMPLETE,
  ImportStatusIMPORTCOMPLETEWITHERRORS,
  ImportStatusIMPORTFAILED,
  ImportStatusIMPORTFAILEDRECORDLIMITEXCEEDED,
  ImportStatusIMPORTFAILEDSERVERLIMITEXCEEDED,
  ImportStatusIMPORTINPROGRESS,
  ImportStatusINTERNALERROR,
  ImportStatus'
  #-}

instance Prelude.FromText ImportStatus where
  parser = ImportStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImportStatus where
  toText (ImportStatus' x) = x

instance Prelude.Hashable ImportStatus

instance Prelude.NFData ImportStatus

instance Prelude.ToByteString ImportStatus

instance Prelude.ToQuery ImportStatus

instance Prelude.ToHeader ImportStatus

instance Prelude.FromJSON ImportStatus where
  parseJSON = Prelude.parseJSONText "ImportStatus"
