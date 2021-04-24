{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Resend,
        Suppress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MessageAction = MessageAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Resend :: MessageAction
pattern Resend = MessageAction' "RESEND"

pattern Suppress :: MessageAction
pattern Suppress = MessageAction' "SUPPRESS"

{-# COMPLETE
  Resend,
  Suppress,
  MessageAction'
  #-}

instance FromText MessageAction where
  parser = (MessageAction' . mk) <$> takeText

instance ToText MessageAction where
  toText (MessageAction' ci) = original ci

instance Hashable MessageAction

instance NFData MessageAction

instance ToByteString MessageAction

instance ToQuery MessageAction

instance ToHeader MessageAction

instance ToJSON MessageAction where
  toJSON = toJSONText
