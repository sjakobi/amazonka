{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.AuthMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.AuthMode
  ( AuthMode
      ( ..,
        IAM,
        SSO
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthMode = AuthMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IAM :: AuthMode
pattern IAM = AuthMode' "IAM"

pattern SSO :: AuthMode
pattern SSO = AuthMode' "SSO"

{-# COMPLETE
  IAM,
  SSO,
  AuthMode'
  #-}

instance FromText AuthMode where
  parser = (AuthMode' . mk) <$> takeText

instance ToText AuthMode where
  toText (AuthMode' ci) = original ci

instance Hashable AuthMode

instance NFData AuthMode

instance ToByteString AuthMode

instance ToQuery AuthMode

instance ToHeader AuthMode

instance ToJSON AuthMode where
  toJSON = toJSONText

instance FromJSON AuthMode where
  parseJSON = parseJSONText "AuthMode"
