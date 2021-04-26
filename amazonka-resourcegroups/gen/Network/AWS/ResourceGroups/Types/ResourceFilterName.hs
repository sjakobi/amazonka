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
-- Module      : Network.AWS.ResourceGroups.Types.ResourceFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.ResourceFilterName
  ( ResourceFilterName
      ( ..,
        ResourceFilterNameResourceType
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceFilterName = ResourceFilterName'
  { fromResourceFilterName ::
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

pattern ResourceFilterNameResourceType :: ResourceFilterName
pattern ResourceFilterNameResourceType = ResourceFilterName' "resource-type"

{-# COMPLETE
  ResourceFilterNameResourceType,
  ResourceFilterName'
  #-}

instance Prelude.FromText ResourceFilterName where
  parser = ResourceFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceFilterName where
  toText (ResourceFilterName' x) = x

instance Prelude.Hashable ResourceFilterName

instance Prelude.NFData ResourceFilterName

instance Prelude.ToByteString ResourceFilterName

instance Prelude.ToQuery ResourceFilterName

instance Prelude.ToHeader ResourceFilterName

instance Prelude.ToJSON ResourceFilterName where
  toJSON = Prelude.toJSONText
