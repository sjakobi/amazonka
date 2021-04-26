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
-- Module      : Network.AWS.Connect.Types.HistoricalMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HistoricalMetricName
  ( HistoricalMetricName
      ( ..,
        HistoricalMetricNameABANDONTIME,
        HistoricalMetricNameAFTERCONTACTWORKTIME,
        HistoricalMetricNameAPICONTACTSHANDLED,
        HistoricalMetricNameCALLBACKCONTACTSHANDLED,
        HistoricalMetricNameCONTACTSABANDONED,
        HistoricalMetricNameCONTACTSAGENTHUNGUPFIRST,
        HistoricalMetricNameCONTACTSCONSULTED,
        HistoricalMetricNameCONTACTSHANDLED,
        HistoricalMetricNameCONTACTSHANDLEDINCOMING,
        HistoricalMetricNameCONTACTSHANDLEDOUTBOUND,
        HistoricalMetricNameCONTACTSHOLDABANDONS,
        HistoricalMetricNameCONTACTSMISSED,
        HistoricalMetricNameCONTACTSQUEUED,
        HistoricalMetricNameCONTACTSTRANSFERREDIN,
        HistoricalMetricNameCONTACTSTRANSFERREDINFROMQUEUE,
        HistoricalMetricNameCONTACTSTRANSFERREDOUT,
        HistoricalMetricNameCONTACTSTRANSFERREDOUTFROMQUEUE,
        HistoricalMetricNameHANDLETIME,
        HistoricalMetricNameHOLDTIME,
        HistoricalMetricNameINTERACTIONANDHOLDTIME,
        HistoricalMetricNameINTERACTIONTIME,
        HistoricalMetricNameOCCUPANCY,
        HistoricalMetricNameQUEUEANSWERTIME,
        HistoricalMetricNameQUEUEDTIME,
        HistoricalMetricNameSERVICELEVEL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The historical metric names.
newtype HistoricalMetricName = HistoricalMetricName'
  { fromHistoricalMetricName ::
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

pattern HistoricalMetricNameABANDONTIME :: HistoricalMetricName
pattern HistoricalMetricNameABANDONTIME = HistoricalMetricName' "ABANDON_TIME"

pattern HistoricalMetricNameAFTERCONTACTWORKTIME :: HistoricalMetricName
pattern HistoricalMetricNameAFTERCONTACTWORKTIME = HistoricalMetricName' "AFTER_CONTACT_WORK_TIME"

pattern HistoricalMetricNameAPICONTACTSHANDLED :: HistoricalMetricName
pattern HistoricalMetricNameAPICONTACTSHANDLED = HistoricalMetricName' "API_CONTACTS_HANDLED"

pattern HistoricalMetricNameCALLBACKCONTACTSHANDLED :: HistoricalMetricName
pattern HistoricalMetricNameCALLBACKCONTACTSHANDLED = HistoricalMetricName' "CALLBACK_CONTACTS_HANDLED"

pattern HistoricalMetricNameCONTACTSABANDONED :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSABANDONED = HistoricalMetricName' "CONTACTS_ABANDONED"

pattern HistoricalMetricNameCONTACTSAGENTHUNGUPFIRST :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSAGENTHUNGUPFIRST = HistoricalMetricName' "CONTACTS_AGENT_HUNG_UP_FIRST"

pattern HistoricalMetricNameCONTACTSCONSULTED :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSCONSULTED = HistoricalMetricName' "CONTACTS_CONSULTED"

pattern HistoricalMetricNameCONTACTSHANDLED :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSHANDLED = HistoricalMetricName' "CONTACTS_HANDLED"

pattern HistoricalMetricNameCONTACTSHANDLEDINCOMING :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSHANDLEDINCOMING = HistoricalMetricName' "CONTACTS_HANDLED_INCOMING"

pattern HistoricalMetricNameCONTACTSHANDLEDOUTBOUND :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSHANDLEDOUTBOUND = HistoricalMetricName' "CONTACTS_HANDLED_OUTBOUND"

pattern HistoricalMetricNameCONTACTSHOLDABANDONS :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSHOLDABANDONS = HistoricalMetricName' "CONTACTS_HOLD_ABANDONS"

pattern HistoricalMetricNameCONTACTSMISSED :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSMISSED = HistoricalMetricName' "CONTACTS_MISSED"

pattern HistoricalMetricNameCONTACTSQUEUED :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSQUEUED = HistoricalMetricName' "CONTACTS_QUEUED"

pattern HistoricalMetricNameCONTACTSTRANSFERREDIN :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSTRANSFERREDIN = HistoricalMetricName' "CONTACTS_TRANSFERRED_IN"

pattern HistoricalMetricNameCONTACTSTRANSFERREDINFROMQUEUE :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSTRANSFERREDINFROMQUEUE = HistoricalMetricName' "CONTACTS_TRANSFERRED_IN_FROM_QUEUE"

pattern HistoricalMetricNameCONTACTSTRANSFERREDOUT :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSTRANSFERREDOUT = HistoricalMetricName' "CONTACTS_TRANSFERRED_OUT"

pattern HistoricalMetricNameCONTACTSTRANSFERREDOUTFROMQUEUE :: HistoricalMetricName
pattern HistoricalMetricNameCONTACTSTRANSFERREDOUTFROMQUEUE = HistoricalMetricName' "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE"

pattern HistoricalMetricNameHANDLETIME :: HistoricalMetricName
pattern HistoricalMetricNameHANDLETIME = HistoricalMetricName' "HANDLE_TIME"

pattern HistoricalMetricNameHOLDTIME :: HistoricalMetricName
pattern HistoricalMetricNameHOLDTIME = HistoricalMetricName' "HOLD_TIME"

pattern HistoricalMetricNameINTERACTIONANDHOLDTIME :: HistoricalMetricName
pattern HistoricalMetricNameINTERACTIONANDHOLDTIME = HistoricalMetricName' "INTERACTION_AND_HOLD_TIME"

pattern HistoricalMetricNameINTERACTIONTIME :: HistoricalMetricName
pattern HistoricalMetricNameINTERACTIONTIME = HistoricalMetricName' "INTERACTION_TIME"

pattern HistoricalMetricNameOCCUPANCY :: HistoricalMetricName
pattern HistoricalMetricNameOCCUPANCY = HistoricalMetricName' "OCCUPANCY"

pattern HistoricalMetricNameQUEUEANSWERTIME :: HistoricalMetricName
pattern HistoricalMetricNameQUEUEANSWERTIME = HistoricalMetricName' "QUEUE_ANSWER_TIME"

pattern HistoricalMetricNameQUEUEDTIME :: HistoricalMetricName
pattern HistoricalMetricNameQUEUEDTIME = HistoricalMetricName' "QUEUED_TIME"

pattern HistoricalMetricNameSERVICELEVEL :: HistoricalMetricName
pattern HistoricalMetricNameSERVICELEVEL = HistoricalMetricName' "SERVICE_LEVEL"

{-# COMPLETE
  HistoricalMetricNameABANDONTIME,
  HistoricalMetricNameAFTERCONTACTWORKTIME,
  HistoricalMetricNameAPICONTACTSHANDLED,
  HistoricalMetricNameCALLBACKCONTACTSHANDLED,
  HistoricalMetricNameCONTACTSABANDONED,
  HistoricalMetricNameCONTACTSAGENTHUNGUPFIRST,
  HistoricalMetricNameCONTACTSCONSULTED,
  HistoricalMetricNameCONTACTSHANDLED,
  HistoricalMetricNameCONTACTSHANDLEDINCOMING,
  HistoricalMetricNameCONTACTSHANDLEDOUTBOUND,
  HistoricalMetricNameCONTACTSHOLDABANDONS,
  HistoricalMetricNameCONTACTSMISSED,
  HistoricalMetricNameCONTACTSQUEUED,
  HistoricalMetricNameCONTACTSTRANSFERREDIN,
  HistoricalMetricNameCONTACTSTRANSFERREDINFROMQUEUE,
  HistoricalMetricNameCONTACTSTRANSFERREDOUT,
  HistoricalMetricNameCONTACTSTRANSFERREDOUTFROMQUEUE,
  HistoricalMetricNameHANDLETIME,
  HistoricalMetricNameHOLDTIME,
  HistoricalMetricNameINTERACTIONANDHOLDTIME,
  HistoricalMetricNameINTERACTIONTIME,
  HistoricalMetricNameOCCUPANCY,
  HistoricalMetricNameQUEUEANSWERTIME,
  HistoricalMetricNameQUEUEDTIME,
  HistoricalMetricNameSERVICELEVEL,
  HistoricalMetricName'
  #-}

instance Prelude.FromText HistoricalMetricName where
  parser = HistoricalMetricName' Prelude.<$> Prelude.takeText

instance Prelude.ToText HistoricalMetricName where
  toText (HistoricalMetricName' x) = x

instance Prelude.Hashable HistoricalMetricName

instance Prelude.NFData HistoricalMetricName

instance Prelude.ToByteString HistoricalMetricName

instance Prelude.ToQuery HistoricalMetricName

instance Prelude.ToHeader HistoricalMetricName

instance Prelude.ToJSON HistoricalMetricName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HistoricalMetricName where
  parseJSON = Prelude.parseJSONText "HistoricalMetricName"
