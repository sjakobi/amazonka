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
-- Module      : Network.AWS.Config.Types.ResourceValueType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ResourceValueType
  ( ResourceValueType
      ( ..,
        ResourceValueTypeRESOURCEID
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceValueType = ResourceValueType'
  { fromResourceValueType ::
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

pattern ResourceValueTypeRESOURCEID :: ResourceValueType
pattern ResourceValueTypeRESOURCEID = ResourceValueType' "RESOURCE_ID"

{-# COMPLETE
  ResourceValueTypeRESOURCEID,
  ResourceValueType'
  #-}

instance Prelude.FromText ResourceValueType where
  parser = ResourceValueType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceValueType where
  toText (ResourceValueType' x) = x

instance Prelude.Hashable ResourceValueType

instance Prelude.NFData ResourceValueType

instance Prelude.ToByteString ResourceValueType

instance Prelude.ToQuery ResourceValueType

instance Prelude.ToHeader ResourceValueType

instance Prelude.ToJSON ResourceValueType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ResourceValueType where
  parseJSON = Prelude.parseJSONText "ResourceValueType"
