{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.AuthScheme
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.AuthScheme
  ( AuthScheme
      ( ..,
        Secrets
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthScheme = AuthScheme' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Secrets :: AuthScheme
pattern Secrets = AuthScheme' "SECRETS"

{-# COMPLETE
  Secrets,
  AuthScheme'
  #-}

instance FromText AuthScheme where
  parser = (AuthScheme' . mk) <$> takeText

instance ToText AuthScheme where
  toText (AuthScheme' ci) = original ci

instance Hashable AuthScheme

instance NFData AuthScheme

instance ToByteString AuthScheme

instance ToQuery AuthScheme

instance ToHeader AuthScheme

instance FromXML AuthScheme where
  parseXML = parseXMLText "AuthScheme"
