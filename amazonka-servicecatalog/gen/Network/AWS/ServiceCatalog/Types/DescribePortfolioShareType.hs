{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.DescribePortfolioShareType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.DescribePortfolioShareType
  ( DescribePortfolioShareType
      ( ..,
        DPSTAccount,
        DPSTOrganization,
        DPSTOrganizationMemberAccount,
        DPSTOrganizationalUnit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DescribePortfolioShareType
  = DescribePortfolioShareType'
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

pattern DPSTAccount :: DescribePortfolioShareType
pattern DPSTAccount = DescribePortfolioShareType' "ACCOUNT"

pattern DPSTOrganization :: DescribePortfolioShareType
pattern DPSTOrganization = DescribePortfolioShareType' "ORGANIZATION"

pattern DPSTOrganizationMemberAccount :: DescribePortfolioShareType
pattern DPSTOrganizationMemberAccount = DescribePortfolioShareType' "ORGANIZATION_MEMBER_ACCOUNT"

pattern DPSTOrganizationalUnit :: DescribePortfolioShareType
pattern DPSTOrganizationalUnit = DescribePortfolioShareType' "ORGANIZATIONAL_UNIT"

{-# COMPLETE
  DPSTAccount,
  DPSTOrganization,
  DPSTOrganizationMemberAccount,
  DPSTOrganizationalUnit,
  DescribePortfolioShareType'
  #-}

instance FromText DescribePortfolioShareType where
  parser = (DescribePortfolioShareType' . mk) <$> takeText

instance ToText DescribePortfolioShareType where
  toText (DescribePortfolioShareType' ci) = original ci

instance Hashable DescribePortfolioShareType

instance NFData DescribePortfolioShareType

instance ToByteString DescribePortfolioShareType

instance ToQuery DescribePortfolioShareType

instance ToHeader DescribePortfolioShareType

instance ToJSON DescribePortfolioShareType where
  toJSON = toJSONText

instance FromJSON DescribePortfolioShareType where
  parseJSON = parseJSONText "DescribePortfolioShareType"
