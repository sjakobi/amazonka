{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ServiceActionDefinitionKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ServiceActionDefinitionKey
  ( ServiceActionDefinitionKey
      ( ..,
        AssumeRole,
        Name,
        Parameters,
        Version
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServiceActionDefinitionKey
  = ServiceActionDefinitionKey'
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

pattern AssumeRole :: ServiceActionDefinitionKey
pattern AssumeRole = ServiceActionDefinitionKey' "AssumeRole"

pattern Name :: ServiceActionDefinitionKey
pattern Name = ServiceActionDefinitionKey' "Name"

pattern Parameters :: ServiceActionDefinitionKey
pattern Parameters = ServiceActionDefinitionKey' "Parameters"

pattern Version :: ServiceActionDefinitionKey
pattern Version = ServiceActionDefinitionKey' "Version"

{-# COMPLETE
  AssumeRole,
  Name,
  Parameters,
  Version,
  ServiceActionDefinitionKey'
  #-}

instance FromText ServiceActionDefinitionKey where
  parser = (ServiceActionDefinitionKey' . mk) <$> takeText

instance ToText ServiceActionDefinitionKey where
  toText (ServiceActionDefinitionKey' ci) = original ci

instance Hashable ServiceActionDefinitionKey

instance NFData ServiceActionDefinitionKey

instance ToByteString ServiceActionDefinitionKey

instance ToQuery ServiceActionDefinitionKey

instance ToHeader ServiceActionDefinitionKey

instance ToJSON ServiceActionDefinitionKey where
  toJSON = toJSONText

instance FromJSON ServiceActionDefinitionKey where
  parseJSON = parseJSONText "ServiceActionDefinitionKey"
