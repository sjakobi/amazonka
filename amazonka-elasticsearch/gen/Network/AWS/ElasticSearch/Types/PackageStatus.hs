{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.PackageStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.PackageStatus
  ( PackageStatus
      ( ..,
        PSAvailable,
        PSCopyFailed,
        PSCopying,
        PSDeleteFailed,
        PSDeleted,
        PSDeleting,
        PSValidating,
        PSValidationFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PackageStatus = PackageStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PSAvailable :: PackageStatus
pattern PSAvailable = PackageStatus' "AVAILABLE"

pattern PSCopyFailed :: PackageStatus
pattern PSCopyFailed = PackageStatus' "COPY_FAILED"

pattern PSCopying :: PackageStatus
pattern PSCopying = PackageStatus' "COPYING"

pattern PSDeleteFailed :: PackageStatus
pattern PSDeleteFailed = PackageStatus' "DELETE_FAILED"

pattern PSDeleted :: PackageStatus
pattern PSDeleted = PackageStatus' "DELETED"

pattern PSDeleting :: PackageStatus
pattern PSDeleting = PackageStatus' "DELETING"

pattern PSValidating :: PackageStatus
pattern PSValidating = PackageStatus' "VALIDATING"

pattern PSValidationFailed :: PackageStatus
pattern PSValidationFailed = PackageStatus' "VALIDATION_FAILED"

{-# COMPLETE
  PSAvailable,
  PSCopyFailed,
  PSCopying,
  PSDeleteFailed,
  PSDeleted,
  PSDeleting,
  PSValidating,
  PSValidationFailed,
  PackageStatus'
  #-}

instance FromText PackageStatus where
  parser = (PackageStatus' . mk) <$> takeText

instance ToText PackageStatus where
  toText (PackageStatus' ci) = original ci

instance Hashable PackageStatus

instance NFData PackageStatus

instance ToByteString PackageStatus

instance ToQuery PackageStatus

instance ToHeader PackageStatus

instance FromJSON PackageStatus where
  parseJSON = parseJSONText "PackageStatus"
