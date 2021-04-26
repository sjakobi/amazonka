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
-- Module      : Network.AWS.WorkMail.Types.ResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.ResourceType
  ( ResourceType
      ( ..,
        ResourceTypeEQUIPMENT,
        ResourceTypeROOM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceType = ResourceType'
  { fromResourceType ::
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

pattern ResourceTypeEQUIPMENT :: ResourceType
pattern ResourceTypeEQUIPMENT = ResourceType' "EQUIPMENT"

pattern ResourceTypeROOM :: ResourceType
pattern ResourceTypeROOM = ResourceType' "ROOM"

{-# COMPLETE
  ResourceTypeEQUIPMENT,
  ResourceTypeROOM,
  ResourceType'
  #-}

instance Prelude.FromText ResourceType where
  parser = ResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceType where
  toText (ResourceType' x) = x

instance Prelude.Hashable ResourceType

instance Prelude.NFData ResourceType

instance Prelude.ToByteString ResourceType

instance Prelude.ToQuery ResourceType

instance Prelude.ToHeader ResourceType

instance Prelude.ToJSON ResourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ResourceType where
  parseJSON = Prelude.parseJSONText "ResourceType"
