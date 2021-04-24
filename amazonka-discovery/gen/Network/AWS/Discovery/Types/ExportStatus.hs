{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.ExportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ExportStatus
  ( ExportStatus
      ( ..,
        Failed,
        InProgress,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExportStatus = ExportStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: ExportStatus
pattern Failed = ExportStatus' "FAILED"

pattern InProgress :: ExportStatus
pattern InProgress = ExportStatus' "IN_PROGRESS"

pattern Succeeded :: ExportStatus
pattern Succeeded = ExportStatus' "SUCCEEDED"

{-# COMPLETE
  Failed,
  InProgress,
  Succeeded,
  ExportStatus'
  #-}

instance FromText ExportStatus where
  parser = (ExportStatus' . mk) <$> takeText

instance ToText ExportStatus where
  toText (ExportStatus' ci) = original ci

instance Hashable ExportStatus

instance NFData ExportStatus

instance ToByteString ExportStatus

instance ToQuery ExportStatus

instance ToHeader ExportStatus

instance FromJSON ExportStatus where
  parseJSON = parseJSONText "ExportStatus"
