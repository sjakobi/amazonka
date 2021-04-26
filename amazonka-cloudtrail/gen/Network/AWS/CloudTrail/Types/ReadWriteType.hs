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
-- Module      : Network.AWS.CloudTrail.Types.ReadWriteType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.ReadWriteType
  ( ReadWriteType
      ( ..,
        ReadWriteTypeAll,
        ReadWriteTypeReadOnly,
        ReadWriteTypeWriteOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReadWriteType = ReadWriteType'
  { fromReadWriteType ::
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

pattern ReadWriteTypeAll :: ReadWriteType
pattern ReadWriteTypeAll = ReadWriteType' "All"

pattern ReadWriteTypeReadOnly :: ReadWriteType
pattern ReadWriteTypeReadOnly = ReadWriteType' "ReadOnly"

pattern ReadWriteTypeWriteOnly :: ReadWriteType
pattern ReadWriteTypeWriteOnly = ReadWriteType' "WriteOnly"

{-# COMPLETE
  ReadWriteTypeAll,
  ReadWriteTypeReadOnly,
  ReadWriteTypeWriteOnly,
  ReadWriteType'
  #-}

instance Prelude.FromText ReadWriteType where
  parser = ReadWriteType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReadWriteType where
  toText (ReadWriteType' x) = x

instance Prelude.Hashable ReadWriteType

instance Prelude.NFData ReadWriteType

instance Prelude.ToByteString ReadWriteType

instance Prelude.ToQuery ReadWriteType

instance Prelude.ToHeader ReadWriteType

instance Prelude.ToJSON ReadWriteType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ReadWriteType where
  parseJSON = Prelude.parseJSONText "ReadWriteType"
