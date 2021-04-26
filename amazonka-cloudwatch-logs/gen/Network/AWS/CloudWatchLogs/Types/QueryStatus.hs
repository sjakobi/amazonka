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
-- Module      : Network.AWS.CloudWatchLogs.Types.QueryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.QueryStatus
  ( QueryStatus
      ( ..,
        QueryStatusCancelled,
        QueryStatusComplete,
        QueryStatusFailed,
        QueryStatusRunning,
        QueryStatusScheduled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QueryStatus = QueryStatus'
  { fromQueryStatus ::
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

pattern QueryStatusCancelled :: QueryStatus
pattern QueryStatusCancelled = QueryStatus' "Cancelled"

pattern QueryStatusComplete :: QueryStatus
pattern QueryStatusComplete = QueryStatus' "Complete"

pattern QueryStatusFailed :: QueryStatus
pattern QueryStatusFailed = QueryStatus' "Failed"

pattern QueryStatusRunning :: QueryStatus
pattern QueryStatusRunning = QueryStatus' "Running"

pattern QueryStatusScheduled :: QueryStatus
pattern QueryStatusScheduled = QueryStatus' "Scheduled"

{-# COMPLETE
  QueryStatusCancelled,
  QueryStatusComplete,
  QueryStatusFailed,
  QueryStatusRunning,
  QueryStatusScheduled,
  QueryStatus'
  #-}

instance Prelude.FromText QueryStatus where
  parser = QueryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText QueryStatus where
  toText (QueryStatus' x) = x

instance Prelude.Hashable QueryStatus

instance Prelude.NFData QueryStatus

instance Prelude.ToByteString QueryStatus

instance Prelude.ToQuery QueryStatus

instance Prelude.ToHeader QueryStatus

instance Prelude.ToJSON QueryStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON QueryStatus where
  parseJSON = Prelude.parseJSONText "QueryStatus"
