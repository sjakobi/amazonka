{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabaseEngine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabaseEngine
  ( RelationalDatabaseEngine
      ( ..,
        Mysql
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RelationalDatabaseEngine
  = RelationalDatabaseEngine'
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

pattern Mysql :: RelationalDatabaseEngine
pattern Mysql = RelationalDatabaseEngine' "mysql"

{-# COMPLETE
  Mysql,
  RelationalDatabaseEngine'
  #-}

instance FromText RelationalDatabaseEngine where
  parser = (RelationalDatabaseEngine' . mk) <$> takeText

instance ToText RelationalDatabaseEngine where
  toText (RelationalDatabaseEngine' ci) = original ci

instance Hashable RelationalDatabaseEngine

instance NFData RelationalDatabaseEngine

instance ToByteString RelationalDatabaseEngine

instance ToQuery RelationalDatabaseEngine

instance ToHeader RelationalDatabaseEngine

instance FromJSON RelationalDatabaseEngine where
  parseJSON = parseJSONText "RelationalDatabaseEngine"
