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
-- Module      : Network.AWS.SSM.Types.AssociationExecutionFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationExecutionFilterKey
  ( AssociationExecutionFilterKey
      ( ..,
        AssociationExecutionFilterKeyCreatedTime,
        AssociationExecutionFilterKeyExecutionId,
        AssociationExecutionFilterKeyStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationExecutionFilterKey = AssociationExecutionFilterKey'
  { fromAssociationExecutionFilterKey ::
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

pattern AssociationExecutionFilterKeyCreatedTime :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKeyCreatedTime = AssociationExecutionFilterKey' "CreatedTime"

pattern AssociationExecutionFilterKeyExecutionId :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKeyExecutionId = AssociationExecutionFilterKey' "ExecutionId"

pattern AssociationExecutionFilterKeyStatus' :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKeyStatus' = AssociationExecutionFilterKey' "Status"

{-# COMPLETE
  AssociationExecutionFilterKeyCreatedTime,
  AssociationExecutionFilterKeyExecutionId,
  AssociationExecutionFilterKeyStatus',
  AssociationExecutionFilterKey'
  #-}

instance Prelude.FromText AssociationExecutionFilterKey where
  parser = AssociationExecutionFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationExecutionFilterKey where
  toText (AssociationExecutionFilterKey' x) = x

instance Prelude.Hashable AssociationExecutionFilterKey

instance Prelude.NFData AssociationExecutionFilterKey

instance Prelude.ToByteString AssociationExecutionFilterKey

instance Prelude.ToQuery AssociationExecutionFilterKey

instance Prelude.ToHeader AssociationExecutionFilterKey

instance Prelude.ToJSON AssociationExecutionFilterKey where
  toJSON = Prelude.toJSONText
