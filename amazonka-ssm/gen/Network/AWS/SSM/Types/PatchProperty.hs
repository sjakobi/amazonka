{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchProperty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchProperty
  ( PatchProperty
      ( ..,
        Classification,
        MsrcSeverity,
        Priority,
        Product,
        ProductFamily,
        Severity
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PatchProperty = PatchProperty' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Classification :: PatchProperty
pattern Classification = PatchProperty' "CLASSIFICATION"

pattern MsrcSeverity :: PatchProperty
pattern MsrcSeverity = PatchProperty' "MSRC_SEVERITY"

pattern Priority :: PatchProperty
pattern Priority = PatchProperty' "PRIORITY"

pattern Product :: PatchProperty
pattern Product = PatchProperty' "PRODUCT"

pattern ProductFamily :: PatchProperty
pattern ProductFamily = PatchProperty' "PRODUCT_FAMILY"

pattern Severity :: PatchProperty
pattern Severity = PatchProperty' "SEVERITY"

{-# COMPLETE
  Classification,
  MsrcSeverity,
  Priority,
  Product,
  ProductFamily,
  Severity,
  PatchProperty'
  #-}

instance FromText PatchProperty where
  parser = (PatchProperty' . mk) <$> takeText

instance ToText PatchProperty where
  toText (PatchProperty' ci) = original ci

instance Hashable PatchProperty

instance NFData PatchProperty

instance ToByteString PatchProperty

instance ToQuery PatchProperty

instance ToHeader PatchProperty

instance ToJSON PatchProperty where
  toJSON = toJSONText
