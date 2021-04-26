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
-- Module      : Network.AWS.AppStream.Types.MessageAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.MessageAction
  ( MessageAction
      ( ..,
        MessageActionRESEND,
        MessageActionSUPPRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MessageAction = MessageAction'
  { fromMessageAction ::
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

pattern MessageActionRESEND :: MessageAction
pattern MessageActionRESEND = MessageAction' "RESEND"

pattern MessageActionSUPPRESS :: MessageAction
pattern MessageActionSUPPRESS = MessageAction' "SUPPRESS"

{-# COMPLETE
  MessageActionRESEND,
  MessageActionSUPPRESS,
  MessageAction'
  #-}

instance Prelude.FromText MessageAction where
  parser = MessageAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText MessageAction where
  toText (MessageAction' x) = x

instance Prelude.Hashable MessageAction

instance Prelude.NFData MessageAction

instance Prelude.ToByteString MessageAction

instance Prelude.ToQuery MessageAction

instance Prelude.ToHeader MessageAction

instance Prelude.ToJSON MessageAction where
  toJSON = Prelude.toJSONText
