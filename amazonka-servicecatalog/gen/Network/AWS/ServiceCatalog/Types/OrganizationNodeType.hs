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
-- Module      : Network.AWS.ServiceCatalog.Types.OrganizationNodeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.OrganizationNodeType
  ( OrganizationNodeType
      ( ..,
        OrganizationNodeTypeACCOUNT,
        OrganizationNodeTypeORGANIZATION,
        OrganizationNodeTypeORGANIZATIONALUNIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrganizationNodeType = OrganizationNodeType'
  { fromOrganizationNodeType ::
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

pattern OrganizationNodeTypeACCOUNT :: OrganizationNodeType
pattern OrganizationNodeTypeACCOUNT = OrganizationNodeType' "ACCOUNT"

pattern OrganizationNodeTypeORGANIZATION :: OrganizationNodeType
pattern OrganizationNodeTypeORGANIZATION = OrganizationNodeType' "ORGANIZATION"

pattern OrganizationNodeTypeORGANIZATIONALUNIT :: OrganizationNodeType
pattern OrganizationNodeTypeORGANIZATIONALUNIT = OrganizationNodeType' "ORGANIZATIONAL_UNIT"

{-# COMPLETE
  OrganizationNodeTypeACCOUNT,
  OrganizationNodeTypeORGANIZATION,
  OrganizationNodeTypeORGANIZATIONALUNIT,
  OrganizationNodeType'
  #-}

instance Prelude.FromText OrganizationNodeType where
  parser = OrganizationNodeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrganizationNodeType where
  toText (OrganizationNodeType' x) = x

instance Prelude.Hashable OrganizationNodeType

instance Prelude.NFData OrganizationNodeType

instance Prelude.ToByteString OrganizationNodeType

instance Prelude.ToQuery OrganizationNodeType

instance Prelude.ToHeader OrganizationNodeType

instance Prelude.ToJSON OrganizationNodeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OrganizationNodeType where
  parseJSON = Prelude.parseJSONText "OrganizationNodeType"
