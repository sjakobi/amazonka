{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        PackageStatusAVAILABLE,
        PackageStatusCOPYFAILED,
        PackageStatusCOPYING,
        PackageStatusDELETED,
        PackageStatusDELETEFAILED,
        PackageStatusDELETING,
        PackageStatusVALIDATING,
        PackageStatusVALIDATIONFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PackageStatus = PackageStatus'
  { fromPackageStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern PackageStatusAVAILABLE :: PackageStatus
pattern PackageStatusAVAILABLE = PackageStatus' "AVAILABLE"

pattern PackageStatusCOPYFAILED :: PackageStatus
pattern PackageStatusCOPYFAILED = PackageStatus' "COPY_FAILED"

pattern PackageStatusCOPYING :: PackageStatus
pattern PackageStatusCOPYING = PackageStatus' "COPYING"

pattern PackageStatusDELETED :: PackageStatus
pattern PackageStatusDELETED = PackageStatus' "DELETED"

pattern PackageStatusDELETEFAILED :: PackageStatus
pattern PackageStatusDELETEFAILED = PackageStatus' "DELETE_FAILED"

pattern PackageStatusDELETING :: PackageStatus
pattern PackageStatusDELETING = PackageStatus' "DELETING"

pattern PackageStatusVALIDATING :: PackageStatus
pattern PackageStatusVALIDATING = PackageStatus' "VALIDATING"

pattern PackageStatusVALIDATIONFAILED :: PackageStatus
pattern PackageStatusVALIDATIONFAILED = PackageStatus' "VALIDATION_FAILED"

{-# COMPLETE
  PackageStatusAVAILABLE,
  PackageStatusCOPYFAILED,
  PackageStatusCOPYING,
  PackageStatusDELETED,
  PackageStatusDELETEFAILED,
  PackageStatusDELETING,
  PackageStatusVALIDATING,
  PackageStatusVALIDATIONFAILED,
  PackageStatus'
  #-}

instance Prelude.FromText PackageStatus where
  parser = PackageStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PackageStatus where
  toText (PackageStatus' x) = x

instance Prelude.Hashable PackageStatus

instance Prelude.NFData PackageStatus

instance Prelude.ToByteString PackageStatus

instance Prelude.ToQuery PackageStatus

instance Prelude.ToHeader PackageStatus

instance Prelude.FromJSON PackageStatus where
  parseJSON = Prelude.parseJSONText "PackageStatus"
