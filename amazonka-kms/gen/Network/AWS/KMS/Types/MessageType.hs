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
-- Module      : Network.AWS.KMS.Types.MessageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.MessageType
  ( MessageType
      ( ..,
        MessageTypeDIGEST,
        MessageTypeRAW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MessageType = MessageType'
  { fromMessageType ::
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

pattern MessageTypeDIGEST :: MessageType
pattern MessageTypeDIGEST = MessageType' "DIGEST"

pattern MessageTypeRAW :: MessageType
pattern MessageTypeRAW = MessageType' "RAW"

{-# COMPLETE
  MessageTypeDIGEST,
  MessageTypeRAW,
  MessageType'
  #-}

instance Prelude.FromText MessageType where
  parser = MessageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MessageType where
  toText (MessageType' x) = x

instance Prelude.Hashable MessageType

instance Prelude.NFData MessageType

instance Prelude.ToByteString MessageType

instance Prelude.ToQuery MessageType

instance Prelude.ToHeader MessageType

instance Prelude.ToJSON MessageType where
  toJSON = Prelude.toJSONText
