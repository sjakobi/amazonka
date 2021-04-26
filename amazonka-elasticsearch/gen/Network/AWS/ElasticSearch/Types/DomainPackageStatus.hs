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
-- Module      : Network.AWS.ElasticSearch.Types.DomainPackageStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.DomainPackageStatus
  ( DomainPackageStatus
      ( ..,
        DomainPackageStatusACTIVE,
        DomainPackageStatusASSOCIATING,
        DomainPackageStatusASSOCIATIONFAILED,
        DomainPackageStatusDISSOCIATING,
        DomainPackageStatusDISSOCIATIONFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DomainPackageStatus = DomainPackageStatus'
  { fromDomainPackageStatus ::
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

pattern DomainPackageStatusACTIVE :: DomainPackageStatus
pattern DomainPackageStatusACTIVE = DomainPackageStatus' "ACTIVE"

pattern DomainPackageStatusASSOCIATING :: DomainPackageStatus
pattern DomainPackageStatusASSOCIATING = DomainPackageStatus' "ASSOCIATING"

pattern DomainPackageStatusASSOCIATIONFAILED :: DomainPackageStatus
pattern DomainPackageStatusASSOCIATIONFAILED = DomainPackageStatus' "ASSOCIATION_FAILED"

pattern DomainPackageStatusDISSOCIATING :: DomainPackageStatus
pattern DomainPackageStatusDISSOCIATING = DomainPackageStatus' "DISSOCIATING"

pattern DomainPackageStatusDISSOCIATIONFAILED :: DomainPackageStatus
pattern DomainPackageStatusDISSOCIATIONFAILED = DomainPackageStatus' "DISSOCIATION_FAILED"

{-# COMPLETE
  DomainPackageStatusACTIVE,
  DomainPackageStatusASSOCIATING,
  DomainPackageStatusASSOCIATIONFAILED,
  DomainPackageStatusDISSOCIATING,
  DomainPackageStatusDISSOCIATIONFAILED,
  DomainPackageStatus'
  #-}

instance Prelude.FromText DomainPackageStatus where
  parser = DomainPackageStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DomainPackageStatus where
  toText (DomainPackageStatus' x) = x

instance Prelude.Hashable DomainPackageStatus

instance Prelude.NFData DomainPackageStatus

instance Prelude.ToByteString DomainPackageStatus

instance Prelude.ToQuery DomainPackageStatus

instance Prelude.ToHeader DomainPackageStatus

instance Prelude.FromJSON DomainPackageStatus where
  parseJSON = Prelude.parseJSONText "DomainPackageStatus"
