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
-- Module      : Network.AWS.MarketplaceMetering.Types.UsageRecordResultStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MarketplaceMetering.Types.UsageRecordResultStatus
  ( UsageRecordResultStatus
      ( ..,
        UsageRecordResultStatusCustomerNotSubscribed,
        UsageRecordResultStatusDuplicateRecord,
        UsageRecordResultStatusSuccess
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UsageRecordResultStatus = UsageRecordResultStatus'
  { fromUsageRecordResultStatus ::
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

pattern UsageRecordResultStatusCustomerNotSubscribed :: UsageRecordResultStatus
pattern UsageRecordResultStatusCustomerNotSubscribed = UsageRecordResultStatus' "CustomerNotSubscribed"

pattern UsageRecordResultStatusDuplicateRecord :: UsageRecordResultStatus
pattern UsageRecordResultStatusDuplicateRecord = UsageRecordResultStatus' "DuplicateRecord"

pattern UsageRecordResultStatusSuccess :: UsageRecordResultStatus
pattern UsageRecordResultStatusSuccess = UsageRecordResultStatus' "Success"

{-# COMPLETE
  UsageRecordResultStatusCustomerNotSubscribed,
  UsageRecordResultStatusDuplicateRecord,
  UsageRecordResultStatusSuccess,
  UsageRecordResultStatus'
  #-}

instance Prelude.FromText UsageRecordResultStatus where
  parser = UsageRecordResultStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText UsageRecordResultStatus where
  toText (UsageRecordResultStatus' x) = x

instance Prelude.Hashable UsageRecordResultStatus

instance Prelude.NFData UsageRecordResultStatus

instance Prelude.ToByteString UsageRecordResultStatus

instance Prelude.ToQuery UsageRecordResultStatus

instance Prelude.ToHeader UsageRecordResultStatus

instance Prelude.FromJSON UsageRecordResultStatus where
  parseJSON = Prelude.parseJSONText "UsageRecordResultStatus"
