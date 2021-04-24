{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ExportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ExportStatus
  ( ExportStatus
      ( ..,
        ESCompleted,
        ESFailed,
        ESInProgress
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

pattern ESCompleted :: ExportStatus
pattern ESCompleted = ExportStatus' "COMPLETED"

pattern ESFailed :: ExportStatus
pattern ESFailed = ExportStatus' "FAILED"

pattern ESInProgress :: ExportStatus
pattern ESInProgress = ExportStatus' "IN_PROGRESS"

{-# COMPLETE
  ESCompleted,
  ESFailed,
  ESInProgress,
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
