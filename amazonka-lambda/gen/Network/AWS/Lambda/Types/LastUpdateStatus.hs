{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.LastUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.LastUpdateStatus
  ( LastUpdateStatus
      ( ..,
        Failed,
        InProgress,
        Successful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LastUpdateStatus = LastUpdateStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: LastUpdateStatus
pattern Failed = LastUpdateStatus' "Failed"

pattern InProgress :: LastUpdateStatus
pattern InProgress = LastUpdateStatus' "InProgress"

pattern Successful :: LastUpdateStatus
pattern Successful = LastUpdateStatus' "Successful"

{-# COMPLETE
  Failed,
  InProgress,
  Successful,
  LastUpdateStatus'
  #-}

instance FromText LastUpdateStatus where
  parser = (LastUpdateStatus' . mk) <$> takeText

instance ToText LastUpdateStatus where
  toText (LastUpdateStatus' ci) = original ci

instance Hashable LastUpdateStatus

instance NFData LastUpdateStatus

instance ToByteString LastUpdateStatus

instance ToQuery LastUpdateStatus

instance ToHeader LastUpdateStatus

instance FromJSON LastUpdateStatus where
  parseJSON = parseJSONText "LastUpdateStatus"
