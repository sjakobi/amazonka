{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ONTAccount,
        ONTOrganization,
        ONTOrganizationalUnit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OrganizationNodeType
  = OrganizationNodeType'
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

pattern ONTAccount :: OrganizationNodeType
pattern ONTAccount = OrganizationNodeType' "ACCOUNT"

pattern ONTOrganization :: OrganizationNodeType
pattern ONTOrganization = OrganizationNodeType' "ORGANIZATION"

pattern ONTOrganizationalUnit :: OrganizationNodeType
pattern ONTOrganizationalUnit = OrganizationNodeType' "ORGANIZATIONAL_UNIT"

{-# COMPLETE
  ONTAccount,
  ONTOrganization,
  ONTOrganizationalUnit,
  OrganizationNodeType'
  #-}

instance FromText OrganizationNodeType where
  parser = (OrganizationNodeType' . mk) <$> takeText

instance ToText OrganizationNodeType where
  toText (OrganizationNodeType' ci) = original ci

instance Hashable OrganizationNodeType

instance NFData OrganizationNodeType

instance ToByteString OrganizationNodeType

instance ToQuery OrganizationNodeType

instance ToHeader OrganizationNodeType

instance ToJSON OrganizationNodeType where
  toJSON = toJSONText

instance FromJSON OrganizationNodeType where
  parseJSON = parseJSONText "OrganizationNodeType"
