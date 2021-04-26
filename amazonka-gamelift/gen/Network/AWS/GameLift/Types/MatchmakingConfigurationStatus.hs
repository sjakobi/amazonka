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
-- Module      : Network.AWS.GameLift.Types.MatchmakingConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.MatchmakingConfigurationStatus
  ( MatchmakingConfigurationStatus
      ( ..,
        MatchmakingConfigurationStatusCANCELLED,
        MatchmakingConfigurationStatusCOMPLETED,
        MatchmakingConfigurationStatusFAILED,
        MatchmakingConfigurationStatusPLACING,
        MatchmakingConfigurationStatusQUEUED,
        MatchmakingConfigurationStatusREQUIRESACCEPTANCE,
        MatchmakingConfigurationStatusSEARCHING,
        MatchmakingConfigurationStatusTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MatchmakingConfigurationStatus = MatchmakingConfigurationStatus'
  { fromMatchmakingConfigurationStatus ::
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

pattern MatchmakingConfigurationStatusCANCELLED :: MatchmakingConfigurationStatus
pattern MatchmakingConfigurationStatusCANCELLED = MatchmakingConfigurationStatus' "CANCELLED"

pattern MatchmakingConfigurationStatusCOMPLETED :: MatchmakingConfigurationStatus
pattern MatchmakingConfigurationStatusCOMPLETED = MatchmakingConfigurationStatus' "COMPLETED"

pattern MatchmakingConfigurationStatusFAILED :: MatchmakingConfigurationStatus
pattern MatchmakingConfigurationStatusFAILED = MatchmakingConfigurationStatus' "FAILED"

pattern MatchmakingConfigurationStatusPLACING :: MatchmakingConfigurationStatus
pattern MatchmakingConfigurationStatusPLACING = MatchmakingConfigurationStatus' "PLACING"

pattern MatchmakingConfigurationStatusQUEUED :: MatchmakingConfigurationStatus
pattern MatchmakingConfigurationStatusQUEUED = MatchmakingConfigurationStatus' "QUEUED"

pattern MatchmakingConfigurationStatusREQUIRESACCEPTANCE :: MatchmakingConfigurationStatus
pattern MatchmakingConfigurationStatusREQUIRESACCEPTANCE = MatchmakingConfigurationStatus' "REQUIRES_ACCEPTANCE"

pattern MatchmakingConfigurationStatusSEARCHING :: MatchmakingConfigurationStatus
pattern MatchmakingConfigurationStatusSEARCHING = MatchmakingConfigurationStatus' "SEARCHING"

pattern MatchmakingConfigurationStatusTIMEDOUT :: MatchmakingConfigurationStatus
pattern MatchmakingConfigurationStatusTIMEDOUT = MatchmakingConfigurationStatus' "TIMED_OUT"

{-# COMPLETE
  MatchmakingConfigurationStatusCANCELLED,
  MatchmakingConfigurationStatusCOMPLETED,
  MatchmakingConfigurationStatusFAILED,
  MatchmakingConfigurationStatusPLACING,
  MatchmakingConfigurationStatusQUEUED,
  MatchmakingConfigurationStatusREQUIRESACCEPTANCE,
  MatchmakingConfigurationStatusSEARCHING,
  MatchmakingConfigurationStatusTIMEDOUT,
  MatchmakingConfigurationStatus'
  #-}

instance Prelude.FromText MatchmakingConfigurationStatus where
  parser = MatchmakingConfigurationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText MatchmakingConfigurationStatus where
  toText (MatchmakingConfigurationStatus' x) = x

instance Prelude.Hashable MatchmakingConfigurationStatus

instance Prelude.NFData MatchmakingConfigurationStatus

instance Prelude.ToByteString MatchmakingConfigurationStatus

instance Prelude.ToQuery MatchmakingConfigurationStatus

instance Prelude.ToHeader MatchmakingConfigurationStatus

instance Prelude.FromJSON MatchmakingConfigurationStatus where
  parseJSON = Prelude.parseJSONText "MatchmakingConfigurationStatus"
