{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.WorkerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.WorkerType
  ( WorkerType
      ( ..,
        G_1X,
        G_2X,
        Standard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkerType = WorkerType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern G_1X :: WorkerType
pattern G_1X = WorkerType' "G.1X"

pattern G_2X :: WorkerType
pattern G_2X = WorkerType' "G.2X"

pattern Standard :: WorkerType
pattern Standard = WorkerType' "Standard"

{-# COMPLETE
  G_1X,
  G_2X,
  Standard,
  WorkerType'
  #-}

instance FromText WorkerType where
  parser = (WorkerType' . mk) <$> takeText

instance ToText WorkerType where
  toText (WorkerType' ci) = original ci

instance Hashable WorkerType

instance NFData WorkerType

instance ToByteString WorkerType

instance ToQuery WorkerType

instance ToHeader WorkerType

instance ToJSON WorkerType where
  toJSON = toJSONText

instance FromJSON WorkerType where
  parseJSON = parseJSONText "WorkerType"
