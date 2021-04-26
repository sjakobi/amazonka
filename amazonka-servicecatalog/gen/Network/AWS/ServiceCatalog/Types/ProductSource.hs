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
-- Module      : Network.AWS.ServiceCatalog.Types.ProductSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProductSource
  ( ProductSource
      ( ..,
        ProductSourceACCOUNT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProductSource = ProductSource'
  { fromProductSource ::
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

pattern ProductSourceACCOUNT :: ProductSource
pattern ProductSourceACCOUNT = ProductSource' "ACCOUNT"

{-# COMPLETE
  ProductSourceACCOUNT,
  ProductSource'
  #-}

instance Prelude.FromText ProductSource where
  parser = ProductSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProductSource where
  toText (ProductSource' x) = x

instance Prelude.Hashable ProductSource

instance Prelude.NFData ProductSource

instance Prelude.ToByteString ProductSource

instance Prelude.ToQuery ProductSource

instance Prelude.ToHeader ProductSource

instance Prelude.ToJSON ProductSource where
  toJSON = Prelude.toJSONText
