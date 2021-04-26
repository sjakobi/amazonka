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
-- Module      : Network.AWS.ResourceGroups.Types.GroupFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.GroupFilterName
  ( GroupFilterName
      ( ..,
        GroupFilterNameConfigurationType,
        GroupFilterNameResourceType
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GroupFilterName = GroupFilterName'
  { fromGroupFilterName ::
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

pattern GroupFilterNameConfigurationType :: GroupFilterName
pattern GroupFilterNameConfigurationType = GroupFilterName' "configuration-type"

pattern GroupFilterNameResourceType :: GroupFilterName
pattern GroupFilterNameResourceType = GroupFilterName' "resource-type"

{-# COMPLETE
  GroupFilterNameConfigurationType,
  GroupFilterNameResourceType,
  GroupFilterName'
  #-}

instance Prelude.FromText GroupFilterName where
  parser = GroupFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText GroupFilterName where
  toText (GroupFilterName' x) = x

instance Prelude.Hashable GroupFilterName

instance Prelude.NFData GroupFilterName

instance Prelude.ToByteString GroupFilterName

instance Prelude.ToQuery GroupFilterName

instance Prelude.ToHeader GroupFilterName

instance Prelude.ToJSON GroupFilterName where
  toJSON = Prelude.toJSONText
