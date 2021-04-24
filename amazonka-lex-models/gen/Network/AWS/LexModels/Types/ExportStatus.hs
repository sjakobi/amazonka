{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.ExportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ExportStatus
  ( ExportStatus
      ( ..,
        ESFailed,
        ESInProgress,
        ESReady
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

pattern ESFailed :: ExportStatus
pattern ESFailed = ExportStatus' "FAILED"

pattern ESInProgress :: ExportStatus
pattern ESInProgress = ExportStatus' "IN_PROGRESS"

pattern ESReady :: ExportStatus
pattern ESReady = ExportStatus' "READY"

{-# COMPLETE
  ESFailed,
  ESInProgress,
  ESReady,
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
