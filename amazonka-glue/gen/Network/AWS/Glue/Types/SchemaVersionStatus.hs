{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SchemaVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaVersionStatus
  ( SchemaVersionStatus
      ( ..,
        SVSAvailable,
        SVSDeleting,
        SVSFailure,
        SVSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SchemaVersionStatus
  = SchemaVersionStatus'
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

pattern SVSAvailable :: SchemaVersionStatus
pattern SVSAvailable = SchemaVersionStatus' "AVAILABLE"

pattern SVSDeleting :: SchemaVersionStatus
pattern SVSDeleting = SchemaVersionStatus' "DELETING"

pattern SVSFailure :: SchemaVersionStatus
pattern SVSFailure = SchemaVersionStatus' "FAILURE"

pattern SVSPending :: SchemaVersionStatus
pattern SVSPending = SchemaVersionStatus' "PENDING"

{-# COMPLETE
  SVSAvailable,
  SVSDeleting,
  SVSFailure,
  SVSPending,
  SchemaVersionStatus'
  #-}

instance FromText SchemaVersionStatus where
  parser = (SchemaVersionStatus' . mk) <$> takeText

instance ToText SchemaVersionStatus where
  toText (SchemaVersionStatus' ci) = original ci

instance Hashable SchemaVersionStatus

instance NFData SchemaVersionStatus

instance ToByteString SchemaVersionStatus

instance ToQuery SchemaVersionStatus

instance ToHeader SchemaVersionStatus

instance FromJSON SchemaVersionStatus where
  parseJSON = parseJSONText "SchemaVersionStatus"
