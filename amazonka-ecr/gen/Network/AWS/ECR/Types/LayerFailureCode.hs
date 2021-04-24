{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.LayerFailureCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.LayerFailureCode
  ( LayerFailureCode
      ( ..,
        InvalidLayerDigest,
        MissingLayerDigest
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LayerFailureCode = LayerFailureCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern InvalidLayerDigest :: LayerFailureCode
pattern InvalidLayerDigest = LayerFailureCode' "InvalidLayerDigest"

pattern MissingLayerDigest :: LayerFailureCode
pattern MissingLayerDigest = LayerFailureCode' "MissingLayerDigest"

{-# COMPLETE
  InvalidLayerDigest,
  MissingLayerDigest,
  LayerFailureCode'
  #-}

instance FromText LayerFailureCode where
  parser = (LayerFailureCode' . mk) <$> takeText

instance ToText LayerFailureCode where
  toText (LayerFailureCode' ci) = original ci

instance Hashable LayerFailureCode

instance NFData LayerFailureCode

instance ToByteString LayerFailureCode

instance ToQuery LayerFailureCode

instance ToHeader LayerFailureCode

instance FromJSON LayerFailureCode where
  parseJSON = parseJSONText "LayerFailureCode"
