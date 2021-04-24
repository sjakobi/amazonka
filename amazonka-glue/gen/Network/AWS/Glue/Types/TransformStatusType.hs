{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TransformStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TransformStatusType
  ( TransformStatusType
      ( ..,
        TSTDeleting,
        TSTNotReady,
        TSTReady
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TransformStatusType
  = TransformStatusType'
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

pattern TSTDeleting :: TransformStatusType
pattern TSTDeleting = TransformStatusType' "DELETING"

pattern TSTNotReady :: TransformStatusType
pattern TSTNotReady = TransformStatusType' "NOT_READY"

pattern TSTReady :: TransformStatusType
pattern TSTReady = TransformStatusType' "READY"

{-# COMPLETE
  TSTDeleting,
  TSTNotReady,
  TSTReady,
  TransformStatusType'
  #-}

instance FromText TransformStatusType where
  parser = (TransformStatusType' . mk) <$> takeText

instance ToText TransformStatusType where
  toText (TransformStatusType' ci) = original ci

instance Hashable TransformStatusType

instance NFData TransformStatusType

instance ToByteString TransformStatusType

instance ToQuery TransformStatusType

instance ToHeader TransformStatusType

instance ToJSON TransformStatusType where
  toJSON = toJSONText

instance FromJSON TransformStatusType where
  parseJSON = parseJSONText "TransformStatusType"
