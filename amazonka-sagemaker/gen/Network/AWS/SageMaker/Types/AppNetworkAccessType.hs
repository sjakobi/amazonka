{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AppNetworkAccessType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppNetworkAccessType
  ( AppNetworkAccessType
      ( ..,
        PublicInternetOnly,
        VPCOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppNetworkAccessType
  = AppNetworkAccessType'
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

pattern PublicInternetOnly :: AppNetworkAccessType
pattern PublicInternetOnly = AppNetworkAccessType' "PublicInternetOnly"

pattern VPCOnly :: AppNetworkAccessType
pattern VPCOnly = AppNetworkAccessType' "VpcOnly"

{-# COMPLETE
  PublicInternetOnly,
  VPCOnly,
  AppNetworkAccessType'
  #-}

instance FromText AppNetworkAccessType where
  parser = (AppNetworkAccessType' . mk) <$> takeText

instance ToText AppNetworkAccessType where
  toText (AppNetworkAccessType' ci) = original ci

instance Hashable AppNetworkAccessType

instance NFData AppNetworkAccessType

instance ToByteString AppNetworkAccessType

instance ToQuery AppNetworkAccessType

instance ToHeader AppNetworkAccessType

instance ToJSON AppNetworkAccessType where
  toJSON = toJSONText

instance FromJSON AppNetworkAccessType where
  parseJSON = parseJSONText "AppNetworkAccessType"
