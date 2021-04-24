{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.ExpressionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.ExpressionType
  ( ExpressionType
      ( ..,
        Sql
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExpressionType = ExpressionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Sql :: ExpressionType
pattern Sql = ExpressionType' "SQL"

{-# COMPLETE
  Sql,
  ExpressionType'
  #-}

instance FromText ExpressionType where
  parser = (ExpressionType' . mk) <$> takeText

instance ToText ExpressionType where
  toText (ExpressionType' ci) = original ci

instance Hashable ExpressionType

instance NFData ExpressionType

instance ToByteString ExpressionType

instance ToQuery ExpressionType

instance ToHeader ExpressionType

instance ToJSON ExpressionType where
  toJSON = toJSONText

instance FromJSON ExpressionType where
  parseJSON = parseJSONText "ExpressionType"
