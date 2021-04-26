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
-- Module      : Network.AWS.IoT.Types.DomainType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DomainType
  ( DomainType
      ( ..,
        DomainTypeAWSMANAGED,
        DomainTypeCUSTOMERMANAGED,
        DomainTypeENDPOINT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DomainType = DomainType'
  { fromDomainType ::
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

pattern DomainTypeAWSMANAGED :: DomainType
pattern DomainTypeAWSMANAGED = DomainType' "AWS_MANAGED"

pattern DomainTypeCUSTOMERMANAGED :: DomainType
pattern DomainTypeCUSTOMERMANAGED = DomainType' "CUSTOMER_MANAGED"

pattern DomainTypeENDPOINT :: DomainType
pattern DomainTypeENDPOINT = DomainType' "ENDPOINT"

{-# COMPLETE
  DomainTypeAWSMANAGED,
  DomainTypeCUSTOMERMANAGED,
  DomainTypeENDPOINT,
  DomainType'
  #-}

instance Prelude.FromText DomainType where
  parser = DomainType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DomainType where
  toText (DomainType' x) = x

instance Prelude.Hashable DomainType

instance Prelude.NFData DomainType

instance Prelude.ToByteString DomainType

instance Prelude.ToQuery DomainType

instance Prelude.ToHeader DomainType

instance Prelude.FromJSON DomainType where
  parseJSON = Prelude.parseJSONText "DomainType"
