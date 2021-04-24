{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsFilterOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsFilterOperatorType
  ( OpsFilterOperatorType
      ( ..,
        OFOTBeginWith,
        OFOTEqual,
        OFOTExists,
        OFOTGreaterThan,
        OFOTLessThan,
        OFOTNotEqual
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OpsFilterOperatorType
  = OpsFilterOperatorType'
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

pattern OFOTBeginWith :: OpsFilterOperatorType
pattern OFOTBeginWith = OpsFilterOperatorType' "BeginWith"

pattern OFOTEqual :: OpsFilterOperatorType
pattern OFOTEqual = OpsFilterOperatorType' "Equal"

pattern OFOTExists :: OpsFilterOperatorType
pattern OFOTExists = OpsFilterOperatorType' "Exists"

pattern OFOTGreaterThan :: OpsFilterOperatorType
pattern OFOTGreaterThan = OpsFilterOperatorType' "GreaterThan"

pattern OFOTLessThan :: OpsFilterOperatorType
pattern OFOTLessThan = OpsFilterOperatorType' "LessThan"

pattern OFOTNotEqual :: OpsFilterOperatorType
pattern OFOTNotEqual = OpsFilterOperatorType' "NotEqual"

{-# COMPLETE
  OFOTBeginWith,
  OFOTEqual,
  OFOTExists,
  OFOTGreaterThan,
  OFOTLessThan,
  OFOTNotEqual,
  OpsFilterOperatorType'
  #-}

instance FromText OpsFilterOperatorType where
  parser = (OpsFilterOperatorType' . mk) <$> takeText

instance ToText OpsFilterOperatorType where
  toText (OpsFilterOperatorType' ci) = original ci

instance Hashable OpsFilterOperatorType

instance NFData OpsFilterOperatorType

instance ToByteString OpsFilterOperatorType

instance ToQuery OpsFilterOperatorType

instance ToHeader OpsFilterOperatorType

instance ToJSON OpsFilterOperatorType where
  toJSON = toJSONText
