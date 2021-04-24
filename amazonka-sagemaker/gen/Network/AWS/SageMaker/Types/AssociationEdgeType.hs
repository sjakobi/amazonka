{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AssociationEdgeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AssociationEdgeType
  ( AssociationEdgeType
      ( ..,
        AssociatedWith,
        ContributedTo,
        DerivedFrom,
        Produced
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssociationEdgeType
  = AssociationEdgeType'
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

pattern AssociatedWith :: AssociationEdgeType
pattern AssociatedWith = AssociationEdgeType' "AssociatedWith"

pattern ContributedTo :: AssociationEdgeType
pattern ContributedTo = AssociationEdgeType' "ContributedTo"

pattern DerivedFrom :: AssociationEdgeType
pattern DerivedFrom = AssociationEdgeType' "DerivedFrom"

pattern Produced :: AssociationEdgeType
pattern Produced = AssociationEdgeType' "Produced"

{-# COMPLETE
  AssociatedWith,
  ContributedTo,
  DerivedFrom,
  Produced,
  AssociationEdgeType'
  #-}

instance FromText AssociationEdgeType where
  parser = (AssociationEdgeType' . mk) <$> takeText

instance ToText AssociationEdgeType where
  toText (AssociationEdgeType' ci) = original ci

instance Hashable AssociationEdgeType

instance NFData AssociationEdgeType

instance ToByteString AssociationEdgeType

instance ToQuery AssociationEdgeType

instance ToHeader AssociationEdgeType

instance ToJSON AssociationEdgeType where
  toJSON = toJSONText

instance FromJSON AssociationEdgeType where
  parseJSON = parseJSONText "AssociationEdgeType"
