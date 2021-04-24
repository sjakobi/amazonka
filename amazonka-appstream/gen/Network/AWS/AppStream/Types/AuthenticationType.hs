{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.AuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.AuthenticationType
  ( AuthenticationType
      ( ..,
        API,
        Saml,
        Userpool
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

pattern API :: AuthenticationType
pattern API = AuthenticationType' "API"

pattern Saml :: AuthenticationType
pattern Saml = AuthenticationType' "SAML"

pattern Userpool :: AuthenticationType
pattern Userpool = AuthenticationType' "USERPOOL"

{-# COMPLETE
  API,
  Saml,
  Userpool,
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

instance ToJSON AuthenticationType where
  toJSON = toJSONText

instance FromJSON AuthenticationType where
  parseJSON = parseJSONText "AuthenticationType"
