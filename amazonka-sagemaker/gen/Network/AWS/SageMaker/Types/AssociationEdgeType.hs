{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        AssociationEdgeTypeAssociatedWith,
        AssociationEdgeTypeContributedTo,
        AssociationEdgeTypeDerivedFrom,
        AssociationEdgeTypeProduced
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationEdgeType = AssociationEdgeType'
  { fromAssociationEdgeType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AssociationEdgeTypeAssociatedWith :: AssociationEdgeType
pattern AssociationEdgeTypeAssociatedWith = AssociationEdgeType' "AssociatedWith"

pattern AssociationEdgeTypeContributedTo :: AssociationEdgeType
pattern AssociationEdgeTypeContributedTo = AssociationEdgeType' "ContributedTo"

pattern AssociationEdgeTypeDerivedFrom :: AssociationEdgeType
pattern AssociationEdgeTypeDerivedFrom = AssociationEdgeType' "DerivedFrom"

pattern AssociationEdgeTypeProduced :: AssociationEdgeType
pattern AssociationEdgeTypeProduced = AssociationEdgeType' "Produced"

{-# COMPLETE
  AssociationEdgeTypeAssociatedWith,
  AssociationEdgeTypeContributedTo,
  AssociationEdgeTypeDerivedFrom,
  AssociationEdgeTypeProduced,
  AssociationEdgeType'
  #-}

instance Prelude.FromText AssociationEdgeType where
  parser = AssociationEdgeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationEdgeType where
  toText (AssociationEdgeType' x) = x

instance Prelude.Hashable AssociationEdgeType

instance Prelude.NFData AssociationEdgeType

instance Prelude.ToByteString AssociationEdgeType

instance Prelude.ToQuery AssociationEdgeType

instance Prelude.ToHeader AssociationEdgeType

instance Prelude.ToJSON AssociationEdgeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AssociationEdgeType where
  parseJSON = Prelude.parseJSONText "AssociationEdgeType"
