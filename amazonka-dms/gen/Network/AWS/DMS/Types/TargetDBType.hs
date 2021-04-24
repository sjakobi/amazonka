{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.TargetDBType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.TargetDBType
  ( TargetDBType
      ( ..,
        MultipleDatabases,
        SpecificDatabase
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetDBType = TargetDBType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MultipleDatabases :: TargetDBType
pattern MultipleDatabases = TargetDBType' "multiple-databases"

pattern SpecificDatabase :: TargetDBType
pattern SpecificDatabase = TargetDBType' "specific-database"

{-# COMPLETE
  MultipleDatabases,
  SpecificDatabase,
  TargetDBType'
  #-}

instance FromText TargetDBType where
  parser = (TargetDBType' . mk) <$> takeText

instance ToText TargetDBType where
  toText (TargetDBType' ci) = original ci

instance Hashable TargetDBType

instance NFData TargetDBType

instance ToByteString TargetDBType

instance ToQuery TargetDBType

instance ToHeader TargetDBType

instance ToJSON TargetDBType where
  toJSON = toJSONText

instance FromJSON TargetDBType where
  parseJSON = parseJSONText "TargetDBType"
