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
-- Module      : Network.AWS.Greengrass.Types.EncodingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.EncodingType
  ( EncodingType
      ( ..,
        EncodingTypeBinary,
        EncodingTypeJson
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EncodingType = EncodingType'
  { fromEncodingType ::
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

pattern EncodingTypeBinary :: EncodingType
pattern EncodingTypeBinary = EncodingType' "binary"

pattern EncodingTypeJson :: EncodingType
pattern EncodingTypeJson = EncodingType' "json"

{-# COMPLETE
  EncodingTypeBinary,
  EncodingTypeJson,
  EncodingType'
  #-}

instance Prelude.FromText EncodingType where
  parser = EncodingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncodingType where
  toText (EncodingType' x) = x

instance Prelude.Hashable EncodingType

instance Prelude.NFData EncodingType

instance Prelude.ToByteString EncodingType

instance Prelude.ToQuery EncodingType

instance Prelude.ToHeader EncodingType

instance Prelude.ToJSON EncodingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EncodingType where
  parseJSON = Prelude.parseJSONText "EncodingType"
