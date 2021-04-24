{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.SchemaStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.SchemaStatus
  ( SchemaStatus
      ( ..,
        SSActive,
        SSDeleting,
        SSFailed,
        SSNotApplicable,
        SSProcessing,
        SSSuccess
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SchemaStatus = SchemaStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSActive :: SchemaStatus
pattern SSActive = SchemaStatus' "ACTIVE"

pattern SSDeleting :: SchemaStatus
pattern SSDeleting = SchemaStatus' "DELETING"

pattern SSFailed :: SchemaStatus
pattern SSFailed = SchemaStatus' "FAILED"

pattern SSNotApplicable :: SchemaStatus
pattern SSNotApplicable = SchemaStatus' "NOT_APPLICABLE"

pattern SSProcessing :: SchemaStatus
pattern SSProcessing = SchemaStatus' "PROCESSING"

pattern SSSuccess :: SchemaStatus
pattern SSSuccess = SchemaStatus' "SUCCESS"

{-# COMPLETE
  SSActive,
  SSDeleting,
  SSFailed,
  SSNotApplicable,
  SSProcessing,
  SSSuccess,
  SchemaStatus'
  #-}

instance FromText SchemaStatus where
  parser = (SchemaStatus' . mk) <$> takeText

instance ToText SchemaStatus where
  toText (SchemaStatus' ci) = original ci

instance Hashable SchemaStatus

instance NFData SchemaStatus

instance ToByteString SchemaStatus

instance ToQuery SchemaStatus

instance ToHeader SchemaStatus

instance FromJSON SchemaStatus where
  parseJSON = parseJSONText "SchemaStatus"
