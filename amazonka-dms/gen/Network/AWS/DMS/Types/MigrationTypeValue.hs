{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.MigrationTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.MigrationTypeValue
  ( MigrationTypeValue
      ( ..,
        Cdc,
        FullLoad,
        FullLoadAndCdc
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MigrationTypeValue
  = MigrationTypeValue'
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

pattern Cdc :: MigrationTypeValue
pattern Cdc = MigrationTypeValue' "cdc"

pattern FullLoad :: MigrationTypeValue
pattern FullLoad = MigrationTypeValue' "full-load"

pattern FullLoadAndCdc :: MigrationTypeValue
pattern FullLoadAndCdc = MigrationTypeValue' "full-load-and-cdc"

{-# COMPLETE
  Cdc,
  FullLoad,
  FullLoadAndCdc,
  MigrationTypeValue'
  #-}

instance FromText MigrationTypeValue where
  parser = (MigrationTypeValue' . mk) <$> takeText

instance ToText MigrationTypeValue where
  toText (MigrationTypeValue' ci) = original ci

instance Hashable MigrationTypeValue

instance NFData MigrationTypeValue

instance ToByteString MigrationTypeValue

instance ToQuery MigrationTypeValue

instance ToHeader MigrationTypeValue

instance ToJSON MigrationTypeValue where
  toJSON = toJSONText

instance FromJSON MigrationTypeValue where
  parseJSON = parseJSONText "MigrationTypeValue"
