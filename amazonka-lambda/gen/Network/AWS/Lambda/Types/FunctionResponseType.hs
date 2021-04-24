{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.FunctionResponseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.FunctionResponseType
  ( FunctionResponseType
      ( ..,
        ReportBatchItemFailures
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FunctionResponseType
  = FunctionResponseType'
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

pattern ReportBatchItemFailures :: FunctionResponseType
pattern ReportBatchItemFailures = FunctionResponseType' "ReportBatchItemFailures"

{-# COMPLETE
  ReportBatchItemFailures,
  FunctionResponseType'
  #-}

instance FromText FunctionResponseType where
  parser = (FunctionResponseType' . mk) <$> takeText

instance ToText FunctionResponseType where
  toText (FunctionResponseType' ci) = original ci

instance Hashable FunctionResponseType

instance NFData FunctionResponseType

instance ToByteString FunctionResponseType

instance ToQuery FunctionResponseType

instance ToHeader FunctionResponseType

instance ToJSON FunctionResponseType where
  toJSON = toJSONText

instance FromJSON FunctionResponseType where
  parseJSON = parseJSONText "FunctionResponseType"
