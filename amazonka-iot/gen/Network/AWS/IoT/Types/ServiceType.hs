{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ServiceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ServiceType
  ( ServiceType
      ( ..,
        CredentialProvider,
        Data,
        Jobs
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServiceType = ServiceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CredentialProvider :: ServiceType
pattern CredentialProvider = ServiceType' "CREDENTIAL_PROVIDER"

pattern Data :: ServiceType
pattern Data = ServiceType' "DATA"

pattern Jobs :: ServiceType
pattern Jobs = ServiceType' "JOBS"

{-# COMPLETE
  CredentialProvider,
  Data,
  Jobs,
  ServiceType'
  #-}

instance FromText ServiceType where
  parser = (ServiceType' . mk) <$> takeText

instance ToText ServiceType where
  toText (ServiceType' ci) = original ci

instance Hashable ServiceType

instance NFData ServiceType

instance ToByteString ServiceType

instance ToQuery ServiceType

instance ToHeader ServiceType

instance ToJSON ServiceType where
  toJSON = toJSONText

instance FromJSON ServiceType where
  parseJSON = parseJSONText "ServiceType"
