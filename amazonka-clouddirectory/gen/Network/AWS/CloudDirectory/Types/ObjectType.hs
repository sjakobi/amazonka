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
-- Module      : Network.AWS.CloudDirectory.Types.ObjectType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.ObjectType
  ( ObjectType
      ( ..,
        ObjectTypeINDEX,
        ObjectTypeLEAFNODE,
        ObjectTypeNODE,
        ObjectTypePOLICY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ObjectType = ObjectType'
  { fromObjectType ::
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

pattern ObjectTypeINDEX :: ObjectType
pattern ObjectTypeINDEX = ObjectType' "INDEX"

pattern ObjectTypeLEAFNODE :: ObjectType
pattern ObjectTypeLEAFNODE = ObjectType' "LEAF_NODE"

pattern ObjectTypeNODE :: ObjectType
pattern ObjectTypeNODE = ObjectType' "NODE"

pattern ObjectTypePOLICY :: ObjectType
pattern ObjectTypePOLICY = ObjectType' "POLICY"

{-# COMPLETE
  ObjectTypeINDEX,
  ObjectTypeLEAFNODE,
  ObjectTypeNODE,
  ObjectTypePOLICY,
  ObjectType'
  #-}

instance Prelude.FromText ObjectType where
  parser = ObjectType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectType where
  toText (ObjectType' x) = x

instance Prelude.Hashable ObjectType

instance Prelude.NFData ObjectType

instance Prelude.ToByteString ObjectType

instance Prelude.ToQuery ObjectType

instance Prelude.ToHeader ObjectType

instance Prelude.ToJSON ObjectType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ObjectType where
  parseJSON = Prelude.parseJSONText "ObjectType"
