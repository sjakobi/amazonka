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
-- Module      : Network.AWS.ECS.Types.ContainerInstanceField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ContainerInstanceField
  ( ContainerInstanceField
      ( ..,
        ContainerInstanceFieldTAGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerInstanceField = ContainerInstanceField'
  { fromContainerInstanceField ::
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

pattern ContainerInstanceFieldTAGS :: ContainerInstanceField
pattern ContainerInstanceFieldTAGS = ContainerInstanceField' "TAGS"

{-# COMPLETE
  ContainerInstanceFieldTAGS,
  ContainerInstanceField'
  #-}

instance Prelude.FromText ContainerInstanceField where
  parser = ContainerInstanceField' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerInstanceField where
  toText (ContainerInstanceField' x) = x

instance Prelude.Hashable ContainerInstanceField

instance Prelude.NFData ContainerInstanceField

instance Prelude.ToByteString ContainerInstanceField

instance Prelude.ToQuery ContainerInstanceField

instance Prelude.ToHeader ContainerInstanceField

instance Prelude.ToJSON ContainerInstanceField where
  toJSON = Prelude.toJSONText
