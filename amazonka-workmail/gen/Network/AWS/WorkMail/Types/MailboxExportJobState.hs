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
-- Module      : Network.AWS.WorkMail.Types.MailboxExportJobState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.MailboxExportJobState
  ( MailboxExportJobState
      ( ..,
        MailboxExportJobStateCANCELLED,
        MailboxExportJobStateCOMPLETED,
        MailboxExportJobStateFAILED,
        MailboxExportJobStateRUNNING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MailboxExportJobState = MailboxExportJobState'
  { fromMailboxExportJobState ::
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

pattern MailboxExportJobStateCANCELLED :: MailboxExportJobState
pattern MailboxExportJobStateCANCELLED = MailboxExportJobState' "CANCELLED"

pattern MailboxExportJobStateCOMPLETED :: MailboxExportJobState
pattern MailboxExportJobStateCOMPLETED = MailboxExportJobState' "COMPLETED"

pattern MailboxExportJobStateFAILED :: MailboxExportJobState
pattern MailboxExportJobStateFAILED = MailboxExportJobState' "FAILED"

pattern MailboxExportJobStateRUNNING :: MailboxExportJobState
pattern MailboxExportJobStateRUNNING = MailboxExportJobState' "RUNNING"

{-# COMPLETE
  MailboxExportJobStateCANCELLED,
  MailboxExportJobStateCOMPLETED,
  MailboxExportJobStateFAILED,
  MailboxExportJobStateRUNNING,
  MailboxExportJobState'
  #-}

instance Prelude.FromText MailboxExportJobState where
  parser = MailboxExportJobState' Prelude.<$> Prelude.takeText

instance Prelude.ToText MailboxExportJobState where
  toText (MailboxExportJobState' x) = x

instance Prelude.Hashable MailboxExportJobState

instance Prelude.NFData MailboxExportJobState

instance Prelude.ToByteString MailboxExportJobState

instance Prelude.ToQuery MailboxExportJobState

instance Prelude.ToHeader MailboxExportJobState

instance Prelude.FromJSON MailboxExportJobState where
  parseJSON = Prelude.parseJSONText "MailboxExportJobState"
