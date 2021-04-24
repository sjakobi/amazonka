{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.CredentialProviderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.CredentialProviderType
  ( CredentialProviderType
      ( ..,
        SecretsManager
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CredentialProviderType
  = CredentialProviderType'
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

pattern SecretsManager :: CredentialProviderType
pattern SecretsManager = CredentialProviderType' "SECRETS_MANAGER"

{-# COMPLETE
  SecretsManager,
  CredentialProviderType'
  #-}

instance FromText CredentialProviderType where
  parser = (CredentialProviderType' . mk) <$> takeText

instance ToText CredentialProviderType where
  toText (CredentialProviderType' ci) = original ci

instance Hashable CredentialProviderType

instance NFData CredentialProviderType

instance ToByteString CredentialProviderType

instance ToQuery CredentialProviderType

instance ToHeader CredentialProviderType

instance ToJSON CredentialProviderType where
  toJSON = toJSONText

instance FromJSON CredentialProviderType where
  parseJSON = parseJSONText "CredentialProviderType"
