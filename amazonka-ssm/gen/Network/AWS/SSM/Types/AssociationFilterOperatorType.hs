{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationFilterOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationFilterOperatorType
  ( AssociationFilterOperatorType
      ( ..,
        AFOTEqual,
        AFOTGreaterThan,
        AFOTLessThan
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssociationFilterOperatorType
  = AssociationFilterOperatorType'
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

pattern AFOTEqual :: AssociationFilterOperatorType
pattern AFOTEqual = AssociationFilterOperatorType' "EQUAL"

pattern AFOTGreaterThan :: AssociationFilterOperatorType
pattern AFOTGreaterThan = AssociationFilterOperatorType' "GREATER_THAN"

pattern AFOTLessThan :: AssociationFilterOperatorType
pattern AFOTLessThan = AssociationFilterOperatorType' "LESS_THAN"

{-# COMPLETE
  AFOTEqual,
  AFOTGreaterThan,
  AFOTLessThan,
  AssociationFilterOperatorType'
  #-}

instance FromText AssociationFilterOperatorType where
  parser = (AssociationFilterOperatorType' . mk) <$> takeText

instance ToText AssociationFilterOperatorType where
  toText (AssociationFilterOperatorType' ci) = original ci

instance Hashable AssociationFilterOperatorType

instance NFData AssociationFilterOperatorType

instance ToByteString AssociationFilterOperatorType

instance ToQuery AssociationFilterOperatorType

instance ToHeader AssociationFilterOperatorType

instance ToJSON AssociationFilterOperatorType where
  toJSON = toJSONText
