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
-- Module      : Network.AWS.CodeCommit.Types.PullRequestEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.PullRequestEventType
  ( PullRequestEventType
      ( ..,
        PullRequestEventTypePULLREQUESTAPPROVALRULECREATED,
        PullRequestEventTypePULLREQUESTAPPROVALRULEDELETED,
        PullRequestEventTypePULLREQUESTAPPROVALRULEOVERRIDDEN,
        PullRequestEventTypePULLREQUESTAPPROVALRULEUPDATED,
        PullRequestEventTypePULLREQUESTAPPROVALSTATECHANGED,
        PullRequestEventTypePULLREQUESTCREATED,
        PullRequestEventTypePULLREQUESTMERGESTATECHANGED,
        PullRequestEventTypePULLREQUESTSOURCEREFERENCEUPDATED,
        PullRequestEventTypePULLREQUESTSTATUSCHANGED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PullRequestEventType = PullRequestEventType'
  { fromPullRequestEventType ::
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

pattern PullRequestEventTypePULLREQUESTAPPROVALRULECREATED :: PullRequestEventType
pattern PullRequestEventTypePULLREQUESTAPPROVALRULECREATED = PullRequestEventType' "PULL_REQUEST_APPROVAL_RULE_CREATED"

pattern PullRequestEventTypePULLREQUESTAPPROVALRULEDELETED :: PullRequestEventType
pattern PullRequestEventTypePULLREQUESTAPPROVALRULEDELETED = PullRequestEventType' "PULL_REQUEST_APPROVAL_RULE_DELETED"

pattern PullRequestEventTypePULLREQUESTAPPROVALRULEOVERRIDDEN :: PullRequestEventType
pattern PullRequestEventTypePULLREQUESTAPPROVALRULEOVERRIDDEN = PullRequestEventType' "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN"

pattern PullRequestEventTypePULLREQUESTAPPROVALRULEUPDATED :: PullRequestEventType
pattern PullRequestEventTypePULLREQUESTAPPROVALRULEUPDATED = PullRequestEventType' "PULL_REQUEST_APPROVAL_RULE_UPDATED"

pattern PullRequestEventTypePULLREQUESTAPPROVALSTATECHANGED :: PullRequestEventType
pattern PullRequestEventTypePULLREQUESTAPPROVALSTATECHANGED = PullRequestEventType' "PULL_REQUEST_APPROVAL_STATE_CHANGED"

pattern PullRequestEventTypePULLREQUESTCREATED :: PullRequestEventType
pattern PullRequestEventTypePULLREQUESTCREATED = PullRequestEventType' "PULL_REQUEST_CREATED"

pattern PullRequestEventTypePULLREQUESTMERGESTATECHANGED :: PullRequestEventType
pattern PullRequestEventTypePULLREQUESTMERGESTATECHANGED = PullRequestEventType' "PULL_REQUEST_MERGE_STATE_CHANGED"

pattern PullRequestEventTypePULLREQUESTSOURCEREFERENCEUPDATED :: PullRequestEventType
pattern PullRequestEventTypePULLREQUESTSOURCEREFERENCEUPDATED = PullRequestEventType' "PULL_REQUEST_SOURCE_REFERENCE_UPDATED"

pattern PullRequestEventTypePULLREQUESTSTATUSCHANGED :: PullRequestEventType
pattern PullRequestEventTypePULLREQUESTSTATUSCHANGED = PullRequestEventType' "PULL_REQUEST_STATUS_CHANGED"

{-# COMPLETE
  PullRequestEventTypePULLREQUESTAPPROVALRULECREATED,
  PullRequestEventTypePULLREQUESTAPPROVALRULEDELETED,
  PullRequestEventTypePULLREQUESTAPPROVALRULEOVERRIDDEN,
  PullRequestEventTypePULLREQUESTAPPROVALRULEUPDATED,
  PullRequestEventTypePULLREQUESTAPPROVALSTATECHANGED,
  PullRequestEventTypePULLREQUESTCREATED,
  PullRequestEventTypePULLREQUESTMERGESTATECHANGED,
  PullRequestEventTypePULLREQUESTSOURCEREFERENCEUPDATED,
  PullRequestEventTypePULLREQUESTSTATUSCHANGED,
  PullRequestEventType'
  #-}

instance Prelude.FromText PullRequestEventType where
  parser = PullRequestEventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PullRequestEventType where
  toText (PullRequestEventType' x) = x

instance Prelude.Hashable PullRequestEventType

instance Prelude.NFData PullRequestEventType

instance Prelude.ToByteString PullRequestEventType

instance Prelude.ToQuery PullRequestEventType

instance Prelude.ToHeader PullRequestEventType

instance Prelude.ToJSON PullRequestEventType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PullRequestEventType where
  parseJSON = Prelude.parseJSONText "PullRequestEventType"
