{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SchemaStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaStatus
  ( SchemaStatus
      ( ..,
        SSAvailable,
        SSDeleting,
        SSPending
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

pattern SSAvailable :: SchemaStatus
pattern SSAvailable = SchemaStatus' "AVAILABLE"

pattern SSDeleting :: SchemaStatus
pattern SSDeleting = SchemaStatus' "DELETING"

pattern SSPending :: SchemaStatus
pattern SSPending = SchemaStatus' "PENDING"

{-# COMPLETE
  SSAvailable,
  SSDeleting,
  SSPending,
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
