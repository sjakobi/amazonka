{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.ShareStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.ShareStatus
  ( ShareStatus
      ( ..,
        Deleted,
        Deleting,
        PendingAcceptance,
        RejectFailed,
        Rejected,
        Rejecting,
        ShareFailed,
        Shared,
        Sharing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShareStatus = ShareStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Deleted :: ShareStatus
pattern Deleted = ShareStatus' "Deleted"

pattern Deleting :: ShareStatus
pattern Deleting = ShareStatus' "Deleting"

pattern PendingAcceptance :: ShareStatus
pattern PendingAcceptance = ShareStatus' "PendingAcceptance"

pattern RejectFailed :: ShareStatus
pattern RejectFailed = ShareStatus' "RejectFailed"

pattern Rejected :: ShareStatus
pattern Rejected = ShareStatus' "Rejected"

pattern Rejecting :: ShareStatus
pattern Rejecting = ShareStatus' "Rejecting"

pattern ShareFailed :: ShareStatus
pattern ShareFailed = ShareStatus' "ShareFailed"

pattern Shared :: ShareStatus
pattern Shared = ShareStatus' "Shared"

pattern Sharing :: ShareStatus
pattern Sharing = ShareStatus' "Sharing"

{-# COMPLETE
  Deleted,
  Deleting,
  PendingAcceptance,
  RejectFailed,
  Rejected,
  Rejecting,
  ShareFailed,
  Shared,
  Sharing,
  ShareStatus'
  #-}

instance FromText ShareStatus where
  parser = (ShareStatus' . mk) <$> takeText

instance ToText ShareStatus where
  toText (ShareStatus' ci) = original ci

instance Hashable ShareStatus

instance NFData ShareStatus

instance ToByteString ShareStatus

instance ToQuery ShareStatus

instance ToHeader ShareStatus

instance FromJSON ShareStatus where
  parseJSON = parseJSONText "ShareStatus"
