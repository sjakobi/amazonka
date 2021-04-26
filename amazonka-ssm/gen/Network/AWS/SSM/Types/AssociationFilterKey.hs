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
-- Module      : Network.AWS.SSM.Types.AssociationFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationFilterKey
  ( AssociationFilterKey
      ( ..,
        AssociationFilterKeyAssociationId,
        AssociationFilterKeyAssociationName,
        AssociationFilterKeyAssociationStatusName,
        AssociationFilterKeyInstanceId,
        AssociationFilterKeyLastExecutedAfter,
        AssociationFilterKeyLastExecutedBefore,
        AssociationFilterKeyName,
        AssociationFilterKeyResourceGroupName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationFilterKey = AssociationFilterKey'
  { fromAssociationFilterKey ::
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

pattern AssociationFilterKeyAssociationId :: AssociationFilterKey
pattern AssociationFilterKeyAssociationId = AssociationFilterKey' "AssociationId"

pattern AssociationFilterKeyAssociationName :: AssociationFilterKey
pattern AssociationFilterKeyAssociationName = AssociationFilterKey' "AssociationName"

pattern AssociationFilterKeyAssociationStatusName :: AssociationFilterKey
pattern AssociationFilterKeyAssociationStatusName = AssociationFilterKey' "AssociationStatusName"

pattern AssociationFilterKeyInstanceId :: AssociationFilterKey
pattern AssociationFilterKeyInstanceId = AssociationFilterKey' "InstanceId"

pattern AssociationFilterKeyLastExecutedAfter :: AssociationFilterKey
pattern AssociationFilterKeyLastExecutedAfter = AssociationFilterKey' "LastExecutedAfter"

pattern AssociationFilterKeyLastExecutedBefore :: AssociationFilterKey
pattern AssociationFilterKeyLastExecutedBefore = AssociationFilterKey' "LastExecutedBefore"

pattern AssociationFilterKeyName :: AssociationFilterKey
pattern AssociationFilterKeyName = AssociationFilterKey' "Name"

pattern AssociationFilterKeyResourceGroupName :: AssociationFilterKey
pattern AssociationFilterKeyResourceGroupName = AssociationFilterKey' "ResourceGroupName"

{-# COMPLETE
  AssociationFilterKeyAssociationId,
  AssociationFilterKeyAssociationName,
  AssociationFilterKeyAssociationStatusName,
  AssociationFilterKeyInstanceId,
  AssociationFilterKeyLastExecutedAfter,
  AssociationFilterKeyLastExecutedBefore,
  AssociationFilterKeyName,
  AssociationFilterKeyResourceGroupName,
  AssociationFilterKey'
  #-}

instance Prelude.FromText AssociationFilterKey where
  parser = AssociationFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationFilterKey where
  toText (AssociationFilterKey' x) = x

instance Prelude.Hashable AssociationFilterKey

instance Prelude.NFData AssociationFilterKey

instance Prelude.ToByteString AssociationFilterKey

instance Prelude.ToQuery AssociationFilterKey

instance Prelude.ToHeader AssociationFilterKey

instance Prelude.ToJSON AssociationFilterKey where
  toJSON = Prelude.toJSONText
