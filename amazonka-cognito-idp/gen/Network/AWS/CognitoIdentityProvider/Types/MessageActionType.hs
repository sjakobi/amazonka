{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Resend,
        Suppress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MessageActionType = MessageActionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Resend :: MessageActionType
pattern Resend = MessageActionType' "RESEND"

pattern Suppress :: MessageActionType
pattern Suppress = MessageActionType' "SUPPRESS"

{-# COMPLETE
  Resend,
  Suppress,
  MessageActionType'
  #-}

instance FromText MessageActionType where
  parser = (MessageActionType' . mk) <$> takeText

instance ToText MessageActionType where
  toText (MessageActionType' ci) = original ci

instance Hashable MessageActionType

instance NFData MessageActionType

instance ToByteString MessageActionType

instance ToQuery MessageActionType

instance ToHeader MessageActionType

instance ToJSON MessageActionType where
  toJSON = toJSONText
