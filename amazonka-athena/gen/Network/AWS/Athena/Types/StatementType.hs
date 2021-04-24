{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.StatementType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.StatementType
  ( StatementType
      ( ..,
        Ddl,
        Dml,
        Utility
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StatementType = StatementType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Ddl :: StatementType
pattern Ddl = StatementType' "DDL"

pattern Dml :: StatementType
pattern Dml = StatementType' "DML"

pattern Utility :: StatementType
pattern Utility = StatementType' "UTILITY"

{-# COMPLETE
  Ddl,
  Dml,
  Utility,
  StatementType'
  #-}

instance FromText StatementType where
  parser = (StatementType' . mk) <$> takeText

instance ToText StatementType where
  toText (StatementType' ci) = original ci

instance Hashable StatementType

instance NFData StatementType

instance ToByteString StatementType

instance ToQuery StatementType

instance ToHeader StatementType

instance FromJSON StatementType where
  parseJSON = parseJSONText "StatementType"
