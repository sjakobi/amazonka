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
-- Module      : Network.AWS.ElasticSearch.Types.UpgradeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.UpgradeStatus
  ( UpgradeStatus
      ( ..,
        UpgradeStatusFAILED,
        UpgradeStatusINPROGRESS,
        UpgradeStatusSUCCEEDED,
        UpgradeStatusSUCCEEDEDWITHISSUES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UpgradeStatus = UpgradeStatus'
  { fromUpgradeStatus ::
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

pattern UpgradeStatusFAILED :: UpgradeStatus
pattern UpgradeStatusFAILED = UpgradeStatus' "FAILED"

pattern UpgradeStatusINPROGRESS :: UpgradeStatus
pattern UpgradeStatusINPROGRESS = UpgradeStatus' "IN_PROGRESS"

pattern UpgradeStatusSUCCEEDED :: UpgradeStatus
pattern UpgradeStatusSUCCEEDED = UpgradeStatus' "SUCCEEDED"

pattern UpgradeStatusSUCCEEDEDWITHISSUES :: UpgradeStatus
pattern UpgradeStatusSUCCEEDEDWITHISSUES = UpgradeStatus' "SUCCEEDED_WITH_ISSUES"

{-# COMPLETE
  UpgradeStatusFAILED,
  UpgradeStatusINPROGRESS,
  UpgradeStatusSUCCEEDED,
  UpgradeStatusSUCCEEDEDWITHISSUES,
  UpgradeStatus'
  #-}

instance Prelude.FromText UpgradeStatus where
  parser = UpgradeStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText UpgradeStatus where
  toText (UpgradeStatus' x) = x

instance Prelude.Hashable UpgradeStatus

instance Prelude.NFData UpgradeStatus

instance Prelude.ToByteString UpgradeStatus

instance Prelude.ToQuery UpgradeStatus

instance Prelude.ToHeader UpgradeStatus

instance Prelude.FromJSON UpgradeStatus where
  parseJSON = Prelude.parseJSONText "UpgradeStatus"
