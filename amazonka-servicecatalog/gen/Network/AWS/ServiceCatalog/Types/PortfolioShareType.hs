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
-- Module      : Network.AWS.ServiceCatalog.Types.PortfolioShareType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.PortfolioShareType
  ( PortfolioShareType
      ( ..,
        PortfolioShareTypeAWSORGANIZATIONS,
        PortfolioShareTypeAWSSERVICECATALOG,
        PortfolioShareTypeIMPORTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PortfolioShareType = PortfolioShareType'
  { fromPortfolioShareType ::
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

pattern PortfolioShareTypeAWSORGANIZATIONS :: PortfolioShareType
pattern PortfolioShareTypeAWSORGANIZATIONS = PortfolioShareType' "AWS_ORGANIZATIONS"

pattern PortfolioShareTypeAWSSERVICECATALOG :: PortfolioShareType
pattern PortfolioShareTypeAWSSERVICECATALOG = PortfolioShareType' "AWS_SERVICECATALOG"

pattern PortfolioShareTypeIMPORTED :: PortfolioShareType
pattern PortfolioShareTypeIMPORTED = PortfolioShareType' "IMPORTED"

{-# COMPLETE
  PortfolioShareTypeAWSORGANIZATIONS,
  PortfolioShareTypeAWSSERVICECATALOG,
  PortfolioShareTypeIMPORTED,
  PortfolioShareType'
  #-}

instance Prelude.FromText PortfolioShareType where
  parser = PortfolioShareType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PortfolioShareType where
  toText (PortfolioShareType' x) = x

instance Prelude.Hashable PortfolioShareType

instance Prelude.NFData PortfolioShareType

instance Prelude.ToByteString PortfolioShareType

instance Prelude.ToQuery PortfolioShareType

instance Prelude.ToHeader PortfolioShareType

instance Prelude.ToJSON PortfolioShareType where
  toJSON = Prelude.toJSONText
