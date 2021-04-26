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
-- Module      : Network.AWS.ServiceCatalog.Types.RecordStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.RecordStatus
  ( RecordStatus
      ( ..,
        RecordStatusCREATED,
        RecordStatusFAILED,
        RecordStatusINPROGRESS,
        RecordStatusINPROGRESSINERROR,
        RecordStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecordStatus = RecordStatus'
  { fromRecordStatus ::
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

pattern RecordStatusCREATED :: RecordStatus
pattern RecordStatusCREATED = RecordStatus' "CREATED"

pattern RecordStatusFAILED :: RecordStatus
pattern RecordStatusFAILED = RecordStatus' "FAILED"

pattern RecordStatusINPROGRESS :: RecordStatus
pattern RecordStatusINPROGRESS = RecordStatus' "IN_PROGRESS"

pattern RecordStatusINPROGRESSINERROR :: RecordStatus
pattern RecordStatusINPROGRESSINERROR = RecordStatus' "IN_PROGRESS_IN_ERROR"

pattern RecordStatusSUCCEEDED :: RecordStatus
pattern RecordStatusSUCCEEDED = RecordStatus' "SUCCEEDED"

{-# COMPLETE
  RecordStatusCREATED,
  RecordStatusFAILED,
  RecordStatusINPROGRESS,
  RecordStatusINPROGRESSINERROR,
  RecordStatusSUCCEEDED,
  RecordStatus'
  #-}

instance Prelude.FromText RecordStatus where
  parser = RecordStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecordStatus where
  toText (RecordStatus' x) = x

instance Prelude.Hashable RecordStatus

instance Prelude.NFData RecordStatus

instance Prelude.ToByteString RecordStatus

instance Prelude.ToQuery RecordStatus

instance Prelude.ToHeader RecordStatus

instance Prelude.FromJSON RecordStatus where
  parseJSON = Prelude.parseJSONText "RecordStatus"
