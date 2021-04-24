{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.VariantPropertyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.VariantPropertyType
  ( VariantPropertyType
      ( ..,
        DataCaptureConfig,
        DesiredInstanceCount,
        DesiredWeight
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VariantPropertyType
  = VariantPropertyType'
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

pattern DataCaptureConfig :: VariantPropertyType
pattern DataCaptureConfig = VariantPropertyType' "DataCaptureConfig"

pattern DesiredInstanceCount :: VariantPropertyType
pattern DesiredInstanceCount = VariantPropertyType' "DesiredInstanceCount"

pattern DesiredWeight :: VariantPropertyType
pattern DesiredWeight = VariantPropertyType' "DesiredWeight"

{-# COMPLETE
  DataCaptureConfig,
  DesiredInstanceCount,
  DesiredWeight,
  VariantPropertyType'
  #-}

instance FromText VariantPropertyType where
  parser = (VariantPropertyType' . mk) <$> takeText

instance ToText VariantPropertyType where
  toText (VariantPropertyType' ci) = original ci

instance Hashable VariantPropertyType

instance NFData VariantPropertyType

instance ToByteString VariantPropertyType

instance ToQuery VariantPropertyType

instance ToHeader VariantPropertyType

instance ToJSON VariantPropertyType where
  toJSON = toJSONText
