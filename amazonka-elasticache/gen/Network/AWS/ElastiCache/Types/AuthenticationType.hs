{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.AuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.AuthenticationType
  ( AuthenticationType
      ( ..,
        NoPassword,
        Password
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthenticationType
  = AuthenticationType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NoPassword :: AuthenticationType
pattern NoPassword = AuthenticationType' "no-password"

pattern Password :: AuthenticationType
pattern Password = AuthenticationType' "password"

{-# COMPLETE
  NoPassword,
  Password,
  AuthenticationType'
  #-}

instance FromText AuthenticationType where
  parser = (AuthenticationType' . mk) <$> takeText

instance ToText AuthenticationType where
  toText (AuthenticationType' ci) = original ci

instance Hashable AuthenticationType

instance NFData AuthenticationType

instance ToByteString AuthenticationType

instance ToQuery AuthenticationType

instance ToHeader AuthenticationType

instance FromXML AuthenticationType where
  parseXML = parseXMLText "AuthenticationType"
