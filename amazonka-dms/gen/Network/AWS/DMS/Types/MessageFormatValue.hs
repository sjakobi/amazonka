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
-- Module      : Network.AWS.DMS.Types.MessageFormatValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.MessageFormatValue
  ( MessageFormatValue
      ( ..,
        MessageFormatValueJson,
        MessageFormatValueJsonUnformatted
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MessageFormatValue = MessageFormatValue'
  { fromMessageFormatValue ::
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

pattern MessageFormatValueJson :: MessageFormatValue
pattern MessageFormatValueJson = MessageFormatValue' "json"

pattern MessageFormatValueJsonUnformatted :: MessageFormatValue
pattern MessageFormatValueJsonUnformatted = MessageFormatValue' "json-unformatted"

{-# COMPLETE
  MessageFormatValueJson,
  MessageFormatValueJsonUnformatted,
  MessageFormatValue'
  #-}

instance Prelude.FromText MessageFormatValue where
  parser = MessageFormatValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText MessageFormatValue where
  toText (MessageFormatValue' x) = x

instance Prelude.Hashable MessageFormatValue

instance Prelude.NFData MessageFormatValue

instance Prelude.ToByteString MessageFormatValue

instance Prelude.ToQuery MessageFormatValue

instance Prelude.ToHeader MessageFormatValue

instance Prelude.ToJSON MessageFormatValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MessageFormatValue where
  parseJSON = Prelude.parseJSONText "MessageFormatValue"
