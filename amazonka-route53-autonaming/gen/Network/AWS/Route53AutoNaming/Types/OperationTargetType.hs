{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.OperationTargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.OperationTargetType
  ( OperationTargetType
      ( ..,
        OTTInstance,
        OTTNamespace,
        OTTService
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OperationTargetType
  = OperationTargetType'
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

pattern OTTInstance :: OperationTargetType
pattern OTTInstance = OperationTargetType' "INSTANCE"

pattern OTTNamespace :: OperationTargetType
pattern OTTNamespace = OperationTargetType' "NAMESPACE"

pattern OTTService :: OperationTargetType
pattern OTTService = OperationTargetType' "SERVICE"

{-# COMPLETE
  OTTInstance,
  OTTNamespace,
  OTTService,
  OperationTargetType'
  #-}

instance FromText OperationTargetType where
  parser = (OperationTargetType' . mk) <$> takeText

instance ToText OperationTargetType where
  toText (OperationTargetType' ci) = original ci

instance Hashable OperationTargetType

instance NFData OperationTargetType

instance ToByteString OperationTargetType

instance ToQuery OperationTargetType

instance ToHeader OperationTargetType

instance FromJSON OperationTargetType where
  parseJSON = parseJSONText "OperationTargetType"
