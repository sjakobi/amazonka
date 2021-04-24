{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.ActiveDirectoryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.ActiveDirectoryStatus
  ( ActiveDirectoryStatus
      ( ..,
        AccessDenied,
        Detached,
        Joined,
        Joining,
        NetworkError,
        Timeout,
        UnknownError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActiveDirectoryStatus
  = ActiveDirectoryStatus'
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

pattern AccessDenied :: ActiveDirectoryStatus
pattern AccessDenied = ActiveDirectoryStatus' "ACCESS_DENIED"

pattern Detached :: ActiveDirectoryStatus
pattern Detached = ActiveDirectoryStatus' "DETACHED"

pattern Joined :: ActiveDirectoryStatus
pattern Joined = ActiveDirectoryStatus' "JOINED"

pattern Joining :: ActiveDirectoryStatus
pattern Joining = ActiveDirectoryStatus' "JOINING"

pattern NetworkError :: ActiveDirectoryStatus
pattern NetworkError = ActiveDirectoryStatus' "NETWORK_ERROR"

pattern Timeout :: ActiveDirectoryStatus
pattern Timeout = ActiveDirectoryStatus' "TIMEOUT"

pattern UnknownError :: ActiveDirectoryStatus
pattern UnknownError = ActiveDirectoryStatus' "UNKNOWN_ERROR"

{-# COMPLETE
  AccessDenied,
  Detached,
  Joined,
  Joining,
  NetworkError,
  Timeout,
  UnknownError,
  ActiveDirectoryStatus'
  #-}

instance FromText ActiveDirectoryStatus where
  parser = (ActiveDirectoryStatus' . mk) <$> takeText

instance ToText ActiveDirectoryStatus where
  toText (ActiveDirectoryStatus' ci) = original ci

instance Hashable ActiveDirectoryStatus

instance NFData ActiveDirectoryStatus

instance ToByteString ActiveDirectoryStatus

instance ToQuery ActiveDirectoryStatus

instance ToHeader ActiveDirectoryStatus

instance FromJSON ActiveDirectoryStatus where
  parseJSON = parseJSONText "ActiveDirectoryStatus"
