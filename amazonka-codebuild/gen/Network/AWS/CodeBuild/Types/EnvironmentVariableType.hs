{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.EnvironmentVariableType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.EnvironmentVariableType
  ( EnvironmentVariableType
      ( ..,
        EVTParameterStore,
        EVTPlaintext,
        EVTSecretsManager
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentVariableType
  = EnvironmentVariableType'
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

pattern EVTParameterStore :: EnvironmentVariableType
pattern EVTParameterStore = EnvironmentVariableType' "PARAMETER_STORE"

pattern EVTPlaintext :: EnvironmentVariableType
pattern EVTPlaintext = EnvironmentVariableType' "PLAINTEXT"

pattern EVTSecretsManager :: EnvironmentVariableType
pattern EVTSecretsManager = EnvironmentVariableType' "SECRETS_MANAGER"

{-# COMPLETE
  EVTParameterStore,
  EVTPlaintext,
  EVTSecretsManager,
  EnvironmentVariableType'
  #-}

instance FromText EnvironmentVariableType where
  parser = (EnvironmentVariableType' . mk) <$> takeText

instance ToText EnvironmentVariableType where
  toText (EnvironmentVariableType' ci) = original ci

instance Hashable EnvironmentVariableType

instance NFData EnvironmentVariableType

instance ToByteString EnvironmentVariableType

instance ToQuery EnvironmentVariableType

instance ToHeader EnvironmentVariableType

instance ToJSON EnvironmentVariableType where
  toJSON = toJSONText

instance FromJSON EnvironmentVariableType where
  parseJSON = parseJSONText "EnvironmentVariableType"
