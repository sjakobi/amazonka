{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuthorizerStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuthorizerStatus
  ( AuthorizerStatus
      ( ..,
        ASActive,
        ASInactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthorizerStatus = AuthorizerStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASActive :: AuthorizerStatus
pattern ASActive = AuthorizerStatus' "ACTIVE"

pattern ASInactive :: AuthorizerStatus
pattern ASInactive = AuthorizerStatus' "INACTIVE"

{-# COMPLETE
  ASActive,
  ASInactive,
  AuthorizerStatus'
  #-}

instance FromText AuthorizerStatus where
  parser = (AuthorizerStatus' . mk) <$> takeText

instance ToText AuthorizerStatus where
  toText (AuthorizerStatus' ci) = original ci

instance Hashable AuthorizerStatus

instance NFData AuthorizerStatus

instance ToByteString AuthorizerStatus

instance ToQuery AuthorizerStatus

instance ToHeader AuthorizerStatus

instance ToJSON AuthorizerStatus where
  toJSON = toJSONText

instance FromJSON AuthorizerStatus where
  parseJSON = parseJSONText "AuthorizerStatus"
