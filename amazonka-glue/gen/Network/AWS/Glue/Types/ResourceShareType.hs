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
-- Module      : Network.AWS.Glue.Types.ResourceShareType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ResourceShareType
  ( ResourceShareType
      ( ..,
        ResourceShareTypeALL,
        ResourceShareTypeFOREIGN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceShareType = ResourceShareType'
  { fromResourceShareType ::
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

pattern ResourceShareTypeALL :: ResourceShareType
pattern ResourceShareTypeALL = ResourceShareType' "ALL"

pattern ResourceShareTypeFOREIGN :: ResourceShareType
pattern ResourceShareTypeFOREIGN = ResourceShareType' "FOREIGN"

{-# COMPLETE
  ResourceShareTypeALL,
  ResourceShareTypeFOREIGN,
  ResourceShareType'
  #-}

instance Prelude.FromText ResourceShareType where
  parser = ResourceShareType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceShareType where
  toText (ResourceShareType' x) = x

instance Prelude.Hashable ResourceShareType

instance Prelude.NFData ResourceShareType

instance Prelude.ToByteString ResourceShareType

instance Prelude.ToQuery ResourceShareType

instance Prelude.ToHeader ResourceShareType

instance Prelude.ToJSON ResourceShareType where
  toJSON = Prelude.toJSONText
