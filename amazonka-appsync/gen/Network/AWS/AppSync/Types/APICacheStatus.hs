{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.APICacheStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.APICacheStatus
  ( APICacheStatus
      ( ..,
        Available,
        Creating,
        Deleting,
        Failed,
        Modifying
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data APICacheStatus = APICacheStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Available :: APICacheStatus
pattern Available = APICacheStatus' "AVAILABLE"

pattern Creating :: APICacheStatus
pattern Creating = APICacheStatus' "CREATING"

pattern Deleting :: APICacheStatus
pattern Deleting = APICacheStatus' "DELETING"

pattern Failed :: APICacheStatus
pattern Failed = APICacheStatus' "FAILED"

pattern Modifying :: APICacheStatus
pattern Modifying = APICacheStatus' "MODIFYING"

{-# COMPLETE
  Available,
  Creating,
  Deleting,
  Failed,
  Modifying,
  APICacheStatus'
  #-}

instance FromText APICacheStatus where
  parser = (APICacheStatus' . mk) <$> takeText

instance ToText APICacheStatus where
  toText (APICacheStatus' ci) = original ci

instance Hashable APICacheStatus

instance NFData APICacheStatus

instance ToByteString APICacheStatus

instance ToQuery APICacheStatus

instance ToHeader APICacheStatus

instance FromJSON APICacheStatus where
  parseJSON = parseJSONText "APICacheStatus"
