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
-- Module      : Network.AWS.AlexaBusiness.Types.BusinessReportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.BusinessReportStatus
  ( BusinessReportStatus
      ( ..,
        BusinessReportStatusFAILED,
        BusinessReportStatusRUNNING,
        BusinessReportStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BusinessReportStatus = BusinessReportStatus'
  { fromBusinessReportStatus ::
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

pattern BusinessReportStatusFAILED :: BusinessReportStatus
pattern BusinessReportStatusFAILED = BusinessReportStatus' "FAILED"

pattern BusinessReportStatusRUNNING :: BusinessReportStatus
pattern BusinessReportStatusRUNNING = BusinessReportStatus' "RUNNING"

pattern BusinessReportStatusSUCCEEDED :: BusinessReportStatus
pattern BusinessReportStatusSUCCEEDED = BusinessReportStatus' "SUCCEEDED"

{-# COMPLETE
  BusinessReportStatusFAILED,
  BusinessReportStatusRUNNING,
  BusinessReportStatusSUCCEEDED,
  BusinessReportStatus'
  #-}

instance Prelude.FromText BusinessReportStatus where
  parser = BusinessReportStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BusinessReportStatus where
  toText (BusinessReportStatus' x) = x

instance Prelude.Hashable BusinessReportStatus

instance Prelude.NFData BusinessReportStatus

instance Prelude.ToByteString BusinessReportStatus

instance Prelude.ToQuery BusinessReportStatus

instance Prelude.ToHeader BusinessReportStatus

instance Prelude.FromJSON BusinessReportStatus where
  parseJSON = Prelude.parseJSONText "BusinessReportStatus"
