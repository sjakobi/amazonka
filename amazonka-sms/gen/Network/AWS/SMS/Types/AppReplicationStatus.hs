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
-- Module      : Network.AWS.SMS.Types.AppReplicationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppReplicationStatus
  ( AppReplicationStatus
      ( ..,
        AppReplicationStatusCONFIGURATIONINPROGRESS,
        AppReplicationStatusCONFIGURATIONINVALID,
        AppReplicationStatusDELTAREPLICATED,
        AppReplicationStatusDELTAREPLICATIONFAILED,
        AppReplicationStatusDELTAREPLICATIONINPROGRESS,
        AppReplicationStatusPARTIALLYREPLICATED,
        AppReplicationStatusREADYFORCONFIGURATION,
        AppReplicationStatusREADYFORREPLICATION,
        AppReplicationStatusREPLICATED,
        AppReplicationStatusREPLICATIONFAILED,
        AppReplicationStatusREPLICATIONINPROGRESS,
        AppReplicationStatusREPLICATIONPENDING,
        AppReplicationStatusREPLICATIONSTOPFAILED,
        AppReplicationStatusREPLICATIONSTOPPED,
        AppReplicationStatusREPLICATIONSTOPPING,
        AppReplicationStatusVALIDATIONINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppReplicationStatus = AppReplicationStatus'
  { fromAppReplicationStatus ::
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

pattern AppReplicationStatusCONFIGURATIONINPROGRESS :: AppReplicationStatus
pattern AppReplicationStatusCONFIGURATIONINPROGRESS = AppReplicationStatus' "CONFIGURATION_IN_PROGRESS"

pattern AppReplicationStatusCONFIGURATIONINVALID :: AppReplicationStatus
pattern AppReplicationStatusCONFIGURATIONINVALID = AppReplicationStatus' "CONFIGURATION_INVALID"

pattern AppReplicationStatusDELTAREPLICATED :: AppReplicationStatus
pattern AppReplicationStatusDELTAREPLICATED = AppReplicationStatus' "DELTA_REPLICATED"

pattern AppReplicationStatusDELTAREPLICATIONFAILED :: AppReplicationStatus
pattern AppReplicationStatusDELTAREPLICATIONFAILED = AppReplicationStatus' "DELTA_REPLICATION_FAILED"

pattern AppReplicationStatusDELTAREPLICATIONINPROGRESS :: AppReplicationStatus
pattern AppReplicationStatusDELTAREPLICATIONINPROGRESS = AppReplicationStatus' "DELTA_REPLICATION_IN_PROGRESS"

pattern AppReplicationStatusPARTIALLYREPLICATED :: AppReplicationStatus
pattern AppReplicationStatusPARTIALLYREPLICATED = AppReplicationStatus' "PARTIALLY_REPLICATED"

pattern AppReplicationStatusREADYFORCONFIGURATION :: AppReplicationStatus
pattern AppReplicationStatusREADYFORCONFIGURATION = AppReplicationStatus' "READY_FOR_CONFIGURATION"

pattern AppReplicationStatusREADYFORREPLICATION :: AppReplicationStatus
pattern AppReplicationStatusREADYFORREPLICATION = AppReplicationStatus' "READY_FOR_REPLICATION"

pattern AppReplicationStatusREPLICATED :: AppReplicationStatus
pattern AppReplicationStatusREPLICATED = AppReplicationStatus' "REPLICATED"

pattern AppReplicationStatusREPLICATIONFAILED :: AppReplicationStatus
pattern AppReplicationStatusREPLICATIONFAILED = AppReplicationStatus' "REPLICATION_FAILED"

pattern AppReplicationStatusREPLICATIONINPROGRESS :: AppReplicationStatus
pattern AppReplicationStatusREPLICATIONINPROGRESS = AppReplicationStatus' "REPLICATION_IN_PROGRESS"

pattern AppReplicationStatusREPLICATIONPENDING :: AppReplicationStatus
pattern AppReplicationStatusREPLICATIONPENDING = AppReplicationStatus' "REPLICATION_PENDING"

pattern AppReplicationStatusREPLICATIONSTOPFAILED :: AppReplicationStatus
pattern AppReplicationStatusREPLICATIONSTOPFAILED = AppReplicationStatus' "REPLICATION_STOP_FAILED"

pattern AppReplicationStatusREPLICATIONSTOPPED :: AppReplicationStatus
pattern AppReplicationStatusREPLICATIONSTOPPED = AppReplicationStatus' "REPLICATION_STOPPED"

pattern AppReplicationStatusREPLICATIONSTOPPING :: AppReplicationStatus
pattern AppReplicationStatusREPLICATIONSTOPPING = AppReplicationStatus' "REPLICATION_STOPPING"

pattern AppReplicationStatusVALIDATIONINPROGRESS :: AppReplicationStatus
pattern AppReplicationStatusVALIDATIONINPROGRESS = AppReplicationStatus' "VALIDATION_IN_PROGRESS"

{-# COMPLETE
  AppReplicationStatusCONFIGURATIONINPROGRESS,
  AppReplicationStatusCONFIGURATIONINVALID,
  AppReplicationStatusDELTAREPLICATED,
  AppReplicationStatusDELTAREPLICATIONFAILED,
  AppReplicationStatusDELTAREPLICATIONINPROGRESS,
  AppReplicationStatusPARTIALLYREPLICATED,
  AppReplicationStatusREADYFORCONFIGURATION,
  AppReplicationStatusREADYFORREPLICATION,
  AppReplicationStatusREPLICATED,
  AppReplicationStatusREPLICATIONFAILED,
  AppReplicationStatusREPLICATIONINPROGRESS,
  AppReplicationStatusREPLICATIONPENDING,
  AppReplicationStatusREPLICATIONSTOPFAILED,
  AppReplicationStatusREPLICATIONSTOPPED,
  AppReplicationStatusREPLICATIONSTOPPING,
  AppReplicationStatusVALIDATIONINPROGRESS,
  AppReplicationStatus'
  #-}

instance Prelude.FromText AppReplicationStatus where
  parser = AppReplicationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppReplicationStatus where
  toText (AppReplicationStatus' x) = x

instance Prelude.Hashable AppReplicationStatus

instance Prelude.NFData AppReplicationStatus

instance Prelude.ToByteString AppReplicationStatus

instance Prelude.ToQuery AppReplicationStatus

instance Prelude.ToHeader AppReplicationStatus

instance Prelude.FromJSON AppReplicationStatus where
  parseJSON = Prelude.parseJSONText "AppReplicationStatus"
