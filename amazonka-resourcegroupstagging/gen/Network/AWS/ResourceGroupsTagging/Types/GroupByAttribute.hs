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
-- Module      : Network.AWS.ResourceGroupsTagging.Types.GroupByAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroupsTagging.Types.GroupByAttribute
  ( GroupByAttribute
      ( ..,
        GroupByAttributeREGION,
        GroupByAttributeRESOURCETYPE,
        GroupByAttributeTARGETID
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GroupByAttribute = GroupByAttribute'
  { fromGroupByAttribute ::
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

pattern GroupByAttributeREGION :: GroupByAttribute
pattern GroupByAttributeREGION = GroupByAttribute' "REGION"

pattern GroupByAttributeRESOURCETYPE :: GroupByAttribute
pattern GroupByAttributeRESOURCETYPE = GroupByAttribute' "RESOURCE_TYPE"

pattern GroupByAttributeTARGETID :: GroupByAttribute
pattern GroupByAttributeTARGETID = GroupByAttribute' "TARGET_ID"

{-# COMPLETE
  GroupByAttributeREGION,
  GroupByAttributeRESOURCETYPE,
  GroupByAttributeTARGETID,
  GroupByAttribute'
  #-}

instance Prelude.FromText GroupByAttribute where
  parser = GroupByAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText GroupByAttribute where
  toText (GroupByAttribute' x) = x

instance Prelude.Hashable GroupByAttribute

instance Prelude.NFData GroupByAttribute

instance Prelude.ToByteString GroupByAttribute

instance Prelude.ToQuery GroupByAttribute

instance Prelude.ToHeader GroupByAttribute

instance Prelude.ToJSON GroupByAttribute where
  toJSON = Prelude.toJSONText
