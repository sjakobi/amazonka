{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.Status
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.Status
  ( Status
      ( ..,
        Failed,
        InProgress,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Status = Status' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: Status
pattern Failed = Status' "FAILED"

pattern InProgress :: Status
pattern InProgress = Status' "IN_PROGRESS"

pattern Succeeded :: Status
pattern Succeeded = Status' "SUCCEEDED"

{-# COMPLETE
  Failed,
  InProgress,
  Succeeded,
  Status'
  #-}

instance FromText Status where
  parser = (Status' . mk) <$> takeText

instance ToText Status where
  toText (Status' ci) = original ci

instance Hashable Status

instance NFData Status

instance ToByteString Status

instance ToQuery Status

instance ToHeader Status

instance FromJSON Status where
  parseJSON = parseJSONText "Status"
