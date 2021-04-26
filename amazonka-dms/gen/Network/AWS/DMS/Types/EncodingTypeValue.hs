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
-- Module      : Network.AWS.DMS.Types.EncodingTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.EncodingTypeValue
  ( EncodingTypeValue
      ( ..,
        EncodingTypeValuePlain,
        EncodingTypeValuePlainDictionary,
        EncodingTypeValueRleDictionary
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EncodingTypeValue = EncodingTypeValue'
  { fromEncodingTypeValue ::
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

pattern EncodingTypeValuePlain :: EncodingTypeValue
pattern EncodingTypeValuePlain = EncodingTypeValue' "plain"

pattern EncodingTypeValuePlainDictionary :: EncodingTypeValue
pattern EncodingTypeValuePlainDictionary = EncodingTypeValue' "plain-dictionary"

pattern EncodingTypeValueRleDictionary :: EncodingTypeValue
pattern EncodingTypeValueRleDictionary = EncodingTypeValue' "rle-dictionary"

{-# COMPLETE
  EncodingTypeValuePlain,
  EncodingTypeValuePlainDictionary,
  EncodingTypeValueRleDictionary,
  EncodingTypeValue'
  #-}

instance Prelude.FromText EncodingTypeValue where
  parser = EncodingTypeValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncodingTypeValue where
  toText (EncodingTypeValue' x) = x

instance Prelude.Hashable EncodingTypeValue

instance Prelude.NFData EncodingTypeValue

instance Prelude.ToByteString EncodingTypeValue

instance Prelude.ToQuery EncodingTypeValue

instance Prelude.ToHeader EncodingTypeValue

instance Prelude.ToJSON EncodingTypeValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EncodingTypeValue where
  parseJSON = Prelude.parseJSONText "EncodingTypeValue"
