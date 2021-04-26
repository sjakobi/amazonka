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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.MessageActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.MessageActionType
  ( MessageActionType
      ( ..,
        MessageActionTypeRESEND,
        MessageActionTypeSUPPRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MessageActionType = MessageActionType'
  { fromMessageActionType ::
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

pattern MessageActionTypeRESEND :: MessageActionType
pattern MessageActionTypeRESEND = MessageActionType' "RESEND"

pattern MessageActionTypeSUPPRESS :: MessageActionType
pattern MessageActionTypeSUPPRESS = MessageActionType' "SUPPRESS"

{-# COMPLETE
  MessageActionTypeRESEND,
  MessageActionTypeSUPPRESS,
  MessageActionType'
  #-}

instance Prelude.FromText MessageActionType where
  parser = MessageActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MessageActionType where
  toText (MessageActionType' x) = x

instance Prelude.Hashable MessageActionType

instance Prelude.NFData MessageActionType

instance Prelude.ToByteString MessageActionType

instance Prelude.ToQuery MessageActionType

instance Prelude.ToHeader MessageActionType

instance Prelude.ToJSON MessageActionType where
  toJSON = Prelude.toJSONText
