{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InventoryQueryOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InventoryQueryOperatorType
  ( InventoryQueryOperatorType
      ( ..,
        IQOTBeginWith,
        IQOTEqual,
        IQOTExists,
        IQOTGreaterThan,
        IQOTLessThan,
        IQOTNotEqual
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InventoryQueryOperatorType
  = InventoryQueryOperatorType'
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

pattern IQOTBeginWith :: InventoryQueryOperatorType
pattern IQOTBeginWith = InventoryQueryOperatorType' "BeginWith"

pattern IQOTEqual :: InventoryQueryOperatorType
pattern IQOTEqual = InventoryQueryOperatorType' "Equal"

pattern IQOTExists :: InventoryQueryOperatorType
pattern IQOTExists = InventoryQueryOperatorType' "Exists"

pattern IQOTGreaterThan :: InventoryQueryOperatorType
pattern IQOTGreaterThan = InventoryQueryOperatorType' "GreaterThan"

pattern IQOTLessThan :: InventoryQueryOperatorType
pattern IQOTLessThan = InventoryQueryOperatorType' "LessThan"

pattern IQOTNotEqual :: InventoryQueryOperatorType
pattern IQOTNotEqual = InventoryQueryOperatorType' "NotEqual"

{-# COMPLETE
  IQOTBeginWith,
  IQOTEqual,
  IQOTExists,
  IQOTGreaterThan,
  IQOTLessThan,
  IQOTNotEqual,
  InventoryQueryOperatorType'
  #-}

instance FromText InventoryQueryOperatorType where
  parser = (InventoryQueryOperatorType' . mk) <$> takeText

instance ToText InventoryQueryOperatorType where
  toText (InventoryQueryOperatorType' ci) = original ci

instance Hashable InventoryQueryOperatorType

instance NFData InventoryQueryOperatorType

instance ToByteString InventoryQueryOperatorType

instance ToQuery InventoryQueryOperatorType

instance ToHeader InventoryQueryOperatorType

instance ToJSON InventoryQueryOperatorType where
  toJSON = toJSONText
