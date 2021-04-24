{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.PortfolioShareType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.PortfolioShareType
  ( PortfolioShareType
      ( ..,
        AWSOrganizations,
        AWSServicecatalog,
        Imported
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PortfolioShareType
  = PortfolioShareType'
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

pattern AWSOrganizations :: PortfolioShareType
pattern AWSOrganizations = PortfolioShareType' "AWS_ORGANIZATIONS"

pattern AWSServicecatalog :: PortfolioShareType
pattern AWSServicecatalog = PortfolioShareType' "AWS_SERVICECATALOG"

pattern Imported :: PortfolioShareType
pattern Imported = PortfolioShareType' "IMPORTED"

{-# COMPLETE
  AWSOrganizations,
  AWSServicecatalog,
  Imported,
  PortfolioShareType'
  #-}

instance FromText PortfolioShareType where
  parser = (PortfolioShareType' . mk) <$> takeText

instance ToText PortfolioShareType where
  toText (PortfolioShareType' ci) = original ci

instance Hashable PortfolioShareType

instance NFData PortfolioShareType

instance ToByteString PortfolioShareType

instance ToQuery PortfolioShareType

instance ToHeader PortfolioShareType

instance ToJSON PortfolioShareType where
  toJSON = toJSONText
