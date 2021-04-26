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
-- Module      : Network.AWS.IoT.Types.DynamoKeyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DynamoKeyType
  ( DynamoKeyType
      ( ..,
        DynamoKeyTypeNUMBER,
        DynamoKeyTypeSTRING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DynamoKeyType = DynamoKeyType'
  { fromDynamoKeyType ::
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

pattern DynamoKeyTypeNUMBER :: DynamoKeyType
pattern DynamoKeyTypeNUMBER = DynamoKeyType' "NUMBER"

pattern DynamoKeyTypeSTRING :: DynamoKeyType
pattern DynamoKeyTypeSTRING = DynamoKeyType' "STRING"

{-# COMPLETE
  DynamoKeyTypeNUMBER,
  DynamoKeyTypeSTRING,
  DynamoKeyType'
  #-}

instance Prelude.FromText DynamoKeyType where
  parser = DynamoKeyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DynamoKeyType where
  toText (DynamoKeyType' x) = x

instance Prelude.Hashable DynamoKeyType

instance Prelude.NFData DynamoKeyType

instance Prelude.ToByteString DynamoKeyType

instance Prelude.ToQuery DynamoKeyType

instance Prelude.ToHeader DynamoKeyType

instance Prelude.ToJSON DynamoKeyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DynamoKeyType where
  parseJSON = Prelude.parseJSONText "DynamoKeyType"
