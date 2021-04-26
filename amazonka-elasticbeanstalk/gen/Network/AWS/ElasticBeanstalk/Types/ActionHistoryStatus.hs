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
-- Module      : Network.AWS.ElasticBeanstalk.Types.ActionHistoryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ActionHistoryStatus
  ( ActionHistoryStatus
      ( ..,
        ActionHistoryStatusCompleted,
        ActionHistoryStatusFailed,
        ActionHistoryStatusUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionHistoryStatus = ActionHistoryStatus'
  { fromActionHistoryStatus ::
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

pattern ActionHistoryStatusCompleted :: ActionHistoryStatus
pattern ActionHistoryStatusCompleted = ActionHistoryStatus' "Completed"

pattern ActionHistoryStatusFailed :: ActionHistoryStatus
pattern ActionHistoryStatusFailed = ActionHistoryStatus' "Failed"

pattern ActionHistoryStatusUnknown :: ActionHistoryStatus
pattern ActionHistoryStatusUnknown = ActionHistoryStatus' "Unknown"

{-# COMPLETE
  ActionHistoryStatusCompleted,
  ActionHistoryStatusFailed,
  ActionHistoryStatusUnknown,
  ActionHistoryStatus'
  #-}

instance Prelude.FromText ActionHistoryStatus where
  parser = ActionHistoryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionHistoryStatus where
  toText (ActionHistoryStatus' x) = x

instance Prelude.Hashable ActionHistoryStatus

instance Prelude.NFData ActionHistoryStatus

instance Prelude.ToByteString ActionHistoryStatus

instance Prelude.ToQuery ActionHistoryStatus

instance Prelude.ToHeader ActionHistoryStatus

instance Prelude.FromXML ActionHistoryStatus where
  parseXML = Prelude.parseXMLText "ActionHistoryStatus"
