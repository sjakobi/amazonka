{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.RepositoryAccessMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RepositoryAccessMode
  ( RepositoryAccessMode
      ( ..,
        Platform,
        VPC
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RepositoryAccessMode
  = RepositoryAccessMode'
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

pattern Platform :: RepositoryAccessMode
pattern Platform = RepositoryAccessMode' "Platform"

pattern VPC :: RepositoryAccessMode
pattern VPC = RepositoryAccessMode' "Vpc"

{-# COMPLETE
  Platform,
  VPC,
  RepositoryAccessMode'
  #-}

instance FromText RepositoryAccessMode where
  parser = (RepositoryAccessMode' . mk) <$> takeText

instance ToText RepositoryAccessMode where
  toText (RepositoryAccessMode' ci) = original ci

instance Hashable RepositoryAccessMode

instance NFData RepositoryAccessMode

instance ToByteString RepositoryAccessMode

instance ToQuery RepositoryAccessMode

instance ToHeader RepositoryAccessMode

instance ToJSON RepositoryAccessMode where
  toJSON = toJSONText

instance FromJSON RepositoryAccessMode where
  parseJSON = parseJSONText "RepositoryAccessMode"
