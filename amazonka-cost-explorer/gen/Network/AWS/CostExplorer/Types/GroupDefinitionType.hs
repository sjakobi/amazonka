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
-- Module      : Network.AWS.CostExplorer.Types.GroupDefinitionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.GroupDefinitionType
  ( GroupDefinitionType
      ( ..,
        GroupDefinitionTypeCOSTCATEGORY,
        GroupDefinitionTypeDIMENSION,
        GroupDefinitionTypeTAG
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GroupDefinitionType = GroupDefinitionType'
  { fromGroupDefinitionType ::
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

pattern GroupDefinitionTypeCOSTCATEGORY :: GroupDefinitionType
pattern GroupDefinitionTypeCOSTCATEGORY = GroupDefinitionType' "COST_CATEGORY"

pattern GroupDefinitionTypeDIMENSION :: GroupDefinitionType
pattern GroupDefinitionTypeDIMENSION = GroupDefinitionType' "DIMENSION"

pattern GroupDefinitionTypeTAG :: GroupDefinitionType
pattern GroupDefinitionTypeTAG = GroupDefinitionType' "TAG"

{-# COMPLETE
  GroupDefinitionTypeCOSTCATEGORY,
  GroupDefinitionTypeDIMENSION,
  GroupDefinitionTypeTAG,
  GroupDefinitionType'
  #-}

instance Prelude.FromText GroupDefinitionType where
  parser = GroupDefinitionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText GroupDefinitionType where
  toText (GroupDefinitionType' x) = x

instance Prelude.Hashable GroupDefinitionType

instance Prelude.NFData GroupDefinitionType

instance Prelude.ToByteString GroupDefinitionType

instance Prelude.ToQuery GroupDefinitionType

instance Prelude.ToHeader GroupDefinitionType

instance Prelude.ToJSON GroupDefinitionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GroupDefinitionType where
  parseJSON = Prelude.parseJSONText "GroupDefinitionType"
