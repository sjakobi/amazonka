{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.OrganizationFeatureSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.OrganizationFeatureSet
  ( OrganizationFeatureSet
      ( ..,
        All,
        ConsolidatedBilling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OrganizationFeatureSet
  = OrganizationFeatureSet'
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

pattern All :: OrganizationFeatureSet
pattern All = OrganizationFeatureSet' "ALL"

pattern ConsolidatedBilling :: OrganizationFeatureSet
pattern ConsolidatedBilling = OrganizationFeatureSet' "CONSOLIDATED_BILLING"

{-# COMPLETE
  All,
  ConsolidatedBilling,
  OrganizationFeatureSet'
  #-}

instance FromText OrganizationFeatureSet where
  parser = (OrganizationFeatureSet' . mk) <$> takeText

instance ToText OrganizationFeatureSet where
  toText (OrganizationFeatureSet' ci) = original ci

instance Hashable OrganizationFeatureSet

instance NFData OrganizationFeatureSet

instance ToByteString OrganizationFeatureSet

instance ToQuery OrganizationFeatureSet

instance ToHeader OrganizationFeatureSet

instance ToJSON OrganizationFeatureSet where
  toJSON = toJSONText

instance FromJSON OrganizationFeatureSet where
  parseJSON = parseJSONText "OrganizationFeatureSet"
