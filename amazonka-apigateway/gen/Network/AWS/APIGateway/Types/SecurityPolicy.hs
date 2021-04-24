{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.SecurityPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.SecurityPolicy
  ( SecurityPolicy
      ( ..,
        TLS10,
        TLS12
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SecurityPolicy = SecurityPolicy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TLS10 :: SecurityPolicy
pattern TLS10 = SecurityPolicy' "TLS_1_0"

pattern TLS12 :: SecurityPolicy
pattern TLS12 = SecurityPolicy' "TLS_1_2"

{-# COMPLETE
  TLS10,
  TLS12,
  SecurityPolicy'
  #-}

instance FromText SecurityPolicy where
  parser = (SecurityPolicy' . mk) <$> takeText

instance ToText SecurityPolicy where
  toText (SecurityPolicy' ci) = original ci

instance Hashable SecurityPolicy

instance NFData SecurityPolicy

instance ToByteString SecurityPolicy

instance ToQuery SecurityPolicy

instance ToHeader SecurityPolicy

instance ToJSON SecurityPolicy where
  toJSON = toJSONText

instance FromJSON SecurityPolicy where
  parseJSON = parseJSONText "SecurityPolicy"
