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
-- Module      : Network.AWS.LexRuntime.Types.MessageFormatType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.MessageFormatType
  ( MessageFormatType
      ( ..,
        MessageFormatTypeComposite,
        MessageFormatTypeCustomPayload,
        MessageFormatTypePlainText,
        MessageFormatTypeSSML
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MessageFormatType = MessageFormatType'
  { fromMessageFormatType ::
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

pattern MessageFormatTypeComposite :: MessageFormatType
pattern MessageFormatTypeComposite = MessageFormatType' "Composite"

pattern MessageFormatTypeCustomPayload :: MessageFormatType
pattern MessageFormatTypeCustomPayload = MessageFormatType' "CustomPayload"

pattern MessageFormatTypePlainText :: MessageFormatType
pattern MessageFormatTypePlainText = MessageFormatType' "PlainText"

pattern MessageFormatTypeSSML :: MessageFormatType
pattern MessageFormatTypeSSML = MessageFormatType' "SSML"

{-# COMPLETE
  MessageFormatTypeComposite,
  MessageFormatTypeCustomPayload,
  MessageFormatTypePlainText,
  MessageFormatTypeSSML,
  MessageFormatType'
  #-}

instance Prelude.FromText MessageFormatType where
  parser = MessageFormatType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MessageFormatType where
  toText (MessageFormatType' x) = x

instance Prelude.Hashable MessageFormatType

instance Prelude.NFData MessageFormatType

instance Prelude.ToByteString MessageFormatType

instance Prelude.ToQuery MessageFormatType

instance Prelude.ToHeader MessageFormatType

instance Prelude.ToJSON MessageFormatType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MessageFormatType where
  parseJSON = Prelude.parseJSONText "MessageFormatType"
