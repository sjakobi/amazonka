{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ComplianceQueryOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceQueryOperatorType
  ( ComplianceQueryOperatorType
      ( ..,
        BeginWith,
        Equal,
        GreaterThan,
        LessThan,
        NotEqual
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ComplianceQueryOperatorType
  = ComplianceQueryOperatorType'
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

pattern BeginWith :: ComplianceQueryOperatorType
pattern BeginWith = ComplianceQueryOperatorType' "BEGIN_WITH"

pattern Equal :: ComplianceQueryOperatorType
pattern Equal = ComplianceQueryOperatorType' "EQUAL"

pattern GreaterThan :: ComplianceQueryOperatorType
pattern GreaterThan = ComplianceQueryOperatorType' "GREATER_THAN"

pattern LessThan :: ComplianceQueryOperatorType
pattern LessThan = ComplianceQueryOperatorType' "LESS_THAN"

pattern NotEqual :: ComplianceQueryOperatorType
pattern NotEqual = ComplianceQueryOperatorType' "NOT_EQUAL"

{-# COMPLETE
  BeginWith,
  Equal,
  GreaterThan,
  LessThan,
  NotEqual,
  ComplianceQueryOperatorType'
  #-}

instance FromText ComplianceQueryOperatorType where
  parser = (ComplianceQueryOperatorType' . mk) <$> takeText

instance ToText ComplianceQueryOperatorType where
  toText (ComplianceQueryOperatorType' ci) = original ci

instance Hashable ComplianceQueryOperatorType

instance NFData ComplianceQueryOperatorType

instance ToByteString ComplianceQueryOperatorType

instance ToQuery ComplianceQueryOperatorType

instance ToHeader ComplianceQueryOperatorType

instance ToJSON ComplianceQueryOperatorType where
  toJSON = toJSONText
