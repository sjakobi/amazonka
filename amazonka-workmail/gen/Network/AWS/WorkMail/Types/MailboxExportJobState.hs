{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.MailboxExportJobState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.MailboxExportJobState
  ( MailboxExportJobState
      ( ..,
        Cancelled,
        Completed,
        Failed,
        Running
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MailboxExportJobState
  = MailboxExportJobState'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cancelled :: MailboxExportJobState
pattern Cancelled = MailboxExportJobState' "CANCELLED"

pattern Completed :: MailboxExportJobState
pattern Completed = MailboxExportJobState' "COMPLETED"

pattern Failed :: MailboxExportJobState
pattern Failed = MailboxExportJobState' "FAILED"

pattern Running :: MailboxExportJobState
pattern Running = MailboxExportJobState' "RUNNING"

{-# COMPLETE
  Cancelled,
  Completed,
  Failed,
  Running,
  MailboxExportJobState'
  #-}

instance FromText MailboxExportJobState where
  parser = (MailboxExportJobState' . mk) <$> takeText

instance ToText MailboxExportJobState where
  toText (MailboxExportJobState' ci) = original ci

instance Hashable MailboxExportJobState

instance NFData MailboxExportJobState

instance ToByteString MailboxExportJobState

instance ToQuery MailboxExportJobState

instance ToHeader MailboxExportJobState

instance FromJSON MailboxExportJobState where
  parseJSON = parseJSONText "MailboxExportJobState"
