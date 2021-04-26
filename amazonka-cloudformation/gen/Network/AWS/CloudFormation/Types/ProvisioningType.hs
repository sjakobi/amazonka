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
-- Module      : Network.AWS.CloudFormation.Types.ProvisioningType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ProvisioningType
  ( ProvisioningType
      ( ..,
        ProvisioningTypeFULLYMUTABLE,
        ProvisioningTypeIMMUTABLE,
        ProvisioningTypeNONPROVISIONABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisioningType = ProvisioningType'
  { fromProvisioningType ::
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

pattern ProvisioningTypeFULLYMUTABLE :: ProvisioningType
pattern ProvisioningTypeFULLYMUTABLE = ProvisioningType' "FULLY_MUTABLE"

pattern ProvisioningTypeIMMUTABLE :: ProvisioningType
pattern ProvisioningTypeIMMUTABLE = ProvisioningType' "IMMUTABLE"

pattern ProvisioningTypeNONPROVISIONABLE :: ProvisioningType
pattern ProvisioningTypeNONPROVISIONABLE = ProvisioningType' "NON_PROVISIONABLE"

{-# COMPLETE
  ProvisioningTypeFULLYMUTABLE,
  ProvisioningTypeIMMUTABLE,
  ProvisioningTypeNONPROVISIONABLE,
  ProvisioningType'
  #-}

instance Prelude.FromText ProvisioningType where
  parser = ProvisioningType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProvisioningType where
  toText (ProvisioningType' x) = x

instance Prelude.Hashable ProvisioningType

instance Prelude.NFData ProvisioningType

instance Prelude.ToByteString ProvisioningType

instance Prelude.ToQuery ProvisioningType

instance Prelude.ToHeader ProvisioningType

instance Prelude.FromXML ProvisioningType where
  parseXML = Prelude.parseXMLText "ProvisioningType"
