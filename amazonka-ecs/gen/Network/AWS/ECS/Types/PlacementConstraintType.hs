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
-- Module      : Network.AWS.ECS.Types.PlacementConstraintType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PlacementConstraintType
  ( PlacementConstraintType
      ( ..,
        PlacementConstraintTypeDistinctInstance,
        PlacementConstraintTypeMemberOf
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlacementConstraintType = PlacementConstraintType'
  { fromPlacementConstraintType ::
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

pattern PlacementConstraintTypeDistinctInstance :: PlacementConstraintType
pattern PlacementConstraintTypeDistinctInstance = PlacementConstraintType' "distinctInstance"

pattern PlacementConstraintTypeMemberOf :: PlacementConstraintType
pattern PlacementConstraintTypeMemberOf = PlacementConstraintType' "memberOf"

{-# COMPLETE
  PlacementConstraintTypeDistinctInstance,
  PlacementConstraintTypeMemberOf,
  PlacementConstraintType'
  #-}

instance Prelude.FromText PlacementConstraintType where
  parser = PlacementConstraintType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlacementConstraintType where
  toText (PlacementConstraintType' x) = x

instance Prelude.Hashable PlacementConstraintType

instance Prelude.NFData PlacementConstraintType

instance Prelude.ToByteString PlacementConstraintType

instance Prelude.ToQuery PlacementConstraintType

instance Prelude.ToHeader PlacementConstraintType

instance Prelude.ToJSON PlacementConstraintType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PlacementConstraintType where
  parseJSON = Prelude.parseJSONText "PlacementConstraintType"
