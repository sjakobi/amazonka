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
-- Module      : Network.AWS.ServiceCatalog.Types.DescribePortfolioShareType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.DescribePortfolioShareType
  ( DescribePortfolioShareType
      ( ..,
        DescribePortfolioShareTypeACCOUNT,
        DescribePortfolioShareTypeORGANIZATION,
        DescribePortfolioShareTypeORGANIZATIONALUNIT,
        DescribePortfolioShareTypeORGANIZATIONMEMBERACCOUNT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DescribePortfolioShareType = DescribePortfolioShareType'
  { fromDescribePortfolioShareType ::
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

pattern DescribePortfolioShareTypeACCOUNT :: DescribePortfolioShareType
pattern DescribePortfolioShareTypeACCOUNT = DescribePortfolioShareType' "ACCOUNT"

pattern DescribePortfolioShareTypeORGANIZATION :: DescribePortfolioShareType
pattern DescribePortfolioShareTypeORGANIZATION = DescribePortfolioShareType' "ORGANIZATION"

pattern DescribePortfolioShareTypeORGANIZATIONALUNIT :: DescribePortfolioShareType
pattern DescribePortfolioShareTypeORGANIZATIONALUNIT = DescribePortfolioShareType' "ORGANIZATIONAL_UNIT"

pattern DescribePortfolioShareTypeORGANIZATIONMEMBERACCOUNT :: DescribePortfolioShareType
pattern DescribePortfolioShareTypeORGANIZATIONMEMBERACCOUNT = DescribePortfolioShareType' "ORGANIZATION_MEMBER_ACCOUNT"

{-# COMPLETE
  DescribePortfolioShareTypeACCOUNT,
  DescribePortfolioShareTypeORGANIZATION,
  DescribePortfolioShareTypeORGANIZATIONALUNIT,
  DescribePortfolioShareTypeORGANIZATIONMEMBERACCOUNT,
  DescribePortfolioShareType'
  #-}

instance Prelude.FromText DescribePortfolioShareType where
  parser = DescribePortfolioShareType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DescribePortfolioShareType where
  toText (DescribePortfolioShareType' x) = x

instance Prelude.Hashable DescribePortfolioShareType

instance Prelude.NFData DescribePortfolioShareType

instance Prelude.ToByteString DescribePortfolioShareType

instance Prelude.ToQuery DescribePortfolioShareType

instance Prelude.ToHeader DescribePortfolioShareType

instance Prelude.ToJSON DescribePortfolioShareType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DescribePortfolioShareType where
  parseJSON = Prelude.parseJSONText "DescribePortfolioShareType"
