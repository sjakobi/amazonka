{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.EnvironmentFileType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.EnvironmentFileType
  ( EnvironmentFileType
      ( ..,
        S3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentFileType
  = EnvironmentFileType'
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

pattern S3 :: EnvironmentFileType
pattern S3 = EnvironmentFileType' "s3"

{-# COMPLETE
  S3,
  EnvironmentFileType'
  #-}

instance FromText EnvironmentFileType where
  parser = (EnvironmentFileType' . mk) <$> takeText

instance ToText EnvironmentFileType where
  toText (EnvironmentFileType' ci) = original ci

instance Hashable EnvironmentFileType

instance NFData EnvironmentFileType

instance ToByteString EnvironmentFileType

instance ToQuery EnvironmentFileType

instance ToHeader EnvironmentFileType

instance ToJSON EnvironmentFileType where
  toJSON = toJSONText

instance FromJSON EnvironmentFileType where
  parseJSON = parseJSONText "EnvironmentFileType"
