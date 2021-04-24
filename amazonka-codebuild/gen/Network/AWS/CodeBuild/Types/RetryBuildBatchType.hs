{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.RetryBuildBatchType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.RetryBuildBatchType
  ( RetryBuildBatchType
      ( ..,
        RetryAllBuilds,
        RetryFailedBuilds
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RetryBuildBatchType
  = RetryBuildBatchType'
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

pattern RetryAllBuilds :: RetryBuildBatchType
pattern RetryAllBuilds = RetryBuildBatchType' "RETRY_ALL_BUILDS"

pattern RetryFailedBuilds :: RetryBuildBatchType
pattern RetryFailedBuilds = RetryBuildBatchType' "RETRY_FAILED_BUILDS"

{-# COMPLETE
  RetryAllBuilds,
  RetryFailedBuilds,
  RetryBuildBatchType'
  #-}

instance FromText RetryBuildBatchType where
  parser = (RetryBuildBatchType' . mk) <$> takeText

instance ToText RetryBuildBatchType where
  toText (RetryBuildBatchType' ci) = original ci

instance Hashable RetryBuildBatchType

instance NFData RetryBuildBatchType

instance ToByteString RetryBuildBatchType

instance ToQuery RetryBuildBatchType

instance ToHeader RetryBuildBatchType

instance ToJSON RetryBuildBatchType where
  toJSON = toJSONText
