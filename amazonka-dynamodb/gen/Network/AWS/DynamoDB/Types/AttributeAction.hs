{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.AttributeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.AttributeAction
  ( AttributeAction
      ( ..,
        Add,
        Delete,
        Put
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AttributeAction = AttributeAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Add :: AttributeAction
pattern Add = AttributeAction' "ADD"

pattern Delete :: AttributeAction
pattern Delete = AttributeAction' "DELETE"

pattern Put :: AttributeAction
pattern Put = AttributeAction' "PUT"

{-# COMPLETE
  Add,
  Delete,
  Put,
  AttributeAction'
  #-}

instance FromText AttributeAction where
  parser = (AttributeAction' . mk) <$> takeText

instance ToText AttributeAction where
  toText (AttributeAction' ci) = original ci

instance Hashable AttributeAction

instance NFData AttributeAction

instance ToByteString AttributeAction

instance ToQuery AttributeAction

instance ToHeader AttributeAction

instance ToJSON AttributeAction where
  toJSON = toJSONText
