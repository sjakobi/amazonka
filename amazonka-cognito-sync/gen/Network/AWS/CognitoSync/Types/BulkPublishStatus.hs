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
-- Module      : Network.AWS.CognitoSync.Types.BulkPublishStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.BulkPublishStatus
  ( BulkPublishStatus
      ( ..,
        BulkPublishStatusFAILED,
        BulkPublishStatusINPROGRESS,
        BulkPublishStatusNOTSTARTED,
        BulkPublishStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BulkPublishStatus = BulkPublishStatus'
  { fromBulkPublishStatus ::
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

pattern BulkPublishStatusFAILED :: BulkPublishStatus
pattern BulkPublishStatusFAILED = BulkPublishStatus' "FAILED"

pattern BulkPublishStatusINPROGRESS :: BulkPublishStatus
pattern BulkPublishStatusINPROGRESS = BulkPublishStatus' "IN_PROGRESS"

pattern BulkPublishStatusNOTSTARTED :: BulkPublishStatus
pattern BulkPublishStatusNOTSTARTED = BulkPublishStatus' "NOT_STARTED"

pattern BulkPublishStatusSUCCEEDED :: BulkPublishStatus
pattern BulkPublishStatusSUCCEEDED = BulkPublishStatus' "SUCCEEDED"

{-# COMPLETE
  BulkPublishStatusFAILED,
  BulkPublishStatusINPROGRESS,
  BulkPublishStatusNOTSTARTED,
  BulkPublishStatusSUCCEEDED,
  BulkPublishStatus'
  #-}

instance Prelude.FromText BulkPublishStatus where
  parser = BulkPublishStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BulkPublishStatus where
  toText (BulkPublishStatus' x) = x

instance Prelude.Hashable BulkPublishStatus

instance Prelude.NFData BulkPublishStatus

instance Prelude.ToByteString BulkPublishStatus

instance Prelude.ToQuery BulkPublishStatus

instance Prelude.ToHeader BulkPublishStatus

instance Prelude.FromJSON BulkPublishStatus where
  parseJSON = Prelude.parseJSONText "BulkPublishStatus"
