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
-- Module      : Network.AWS.SSM.Types.AssociationExecutionTargetsFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationExecutionTargetsFilterKey
  ( AssociationExecutionTargetsFilterKey
      ( ..,
        AssociationExecutionTargetsFilterKeyResourceId,
        AssociationExecutionTargetsFilterKeyResourceType,
        AssociationExecutionTargetsFilterKeyStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationExecutionTargetsFilterKey = AssociationExecutionTargetsFilterKey'
  { fromAssociationExecutionTargetsFilterKey ::
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

pattern AssociationExecutionTargetsFilterKeyResourceId :: AssociationExecutionTargetsFilterKey
pattern AssociationExecutionTargetsFilterKeyResourceId = AssociationExecutionTargetsFilterKey' "ResourceId"

pattern AssociationExecutionTargetsFilterKeyResourceType :: AssociationExecutionTargetsFilterKey
pattern AssociationExecutionTargetsFilterKeyResourceType = AssociationExecutionTargetsFilterKey' "ResourceType"

pattern AssociationExecutionTargetsFilterKeyStatus' :: AssociationExecutionTargetsFilterKey
pattern AssociationExecutionTargetsFilterKeyStatus' = AssociationExecutionTargetsFilterKey' "Status"

{-# COMPLETE
  AssociationExecutionTargetsFilterKeyResourceId,
  AssociationExecutionTargetsFilterKeyResourceType,
  AssociationExecutionTargetsFilterKeyStatus',
  AssociationExecutionTargetsFilterKey'
  #-}

instance Prelude.FromText AssociationExecutionTargetsFilterKey where
  parser = AssociationExecutionTargetsFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationExecutionTargetsFilterKey where
  toText (AssociationExecutionTargetsFilterKey' x) = x

instance Prelude.Hashable AssociationExecutionTargetsFilterKey

instance Prelude.NFData AssociationExecutionTargetsFilterKey

instance Prelude.ToByteString AssociationExecutionTargetsFilterKey

instance Prelude.ToQuery AssociationExecutionTargetsFilterKey

instance Prelude.ToHeader AssociationExecutionTargetsFilterKey

instance Prelude.ToJSON AssociationExecutionTargetsFilterKey where
  toJSON = Prelude.toJSONText
