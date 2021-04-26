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
-- Module      : Network.AWS.EC2.Types.DomainType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DomainType
  ( DomainType
      ( ..,
        DomainTypeStandard,
        DomainTypeVpc
      ),
  )
where

import Network.AWS.EC2.Internal
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

pattern DomainTypeStandard :: DomainType
pattern DomainTypeStandard = DomainType' "standard"

pattern DomainTypeVpc :: DomainType
pattern DomainTypeVpc = DomainType' "vpc"

{-# COMPLETE
  DomainTypeStandard,
  DomainTypeVpc,
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

instance Prelude.FromXML DomainType where
  parseXML = Prelude.parseXMLText "DomainType"
