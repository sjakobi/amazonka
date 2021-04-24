{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.AccessMethodType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.AccessMethodType
  ( AccessMethodType
      ( ..,
        CaRepository,
        ResourcePkiManifest,
        ResourcePkiNotify
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccessMethodType = AccessMethodType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CaRepository :: AccessMethodType
pattern CaRepository = AccessMethodType' "CA_REPOSITORY"

pattern ResourcePkiManifest :: AccessMethodType
pattern ResourcePkiManifest = AccessMethodType' "RESOURCE_PKI_MANIFEST"

pattern ResourcePkiNotify :: AccessMethodType
pattern ResourcePkiNotify = AccessMethodType' "RESOURCE_PKI_NOTIFY"

{-# COMPLETE
  CaRepository,
  ResourcePkiManifest,
  ResourcePkiNotify,
  AccessMethodType'
  #-}

instance FromText AccessMethodType where
  parser = (AccessMethodType' . mk) <$> takeText

instance ToText AccessMethodType where
  toText (AccessMethodType' ci) = original ci

instance Hashable AccessMethodType

instance NFData AccessMethodType

instance ToByteString AccessMethodType

instance ToQuery AccessMethodType

instance ToHeader AccessMethodType

instance ToJSON AccessMethodType where
  toJSON = toJSONText

instance FromJSON AccessMethodType where
  parseJSON = parseJSONText "AccessMethodType"
