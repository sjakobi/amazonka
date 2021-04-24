{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.SourceType
  ( SourceType
      ( ..,
        STBitbucket,
        STCodecommit,
        STCodepipeline,
        STGithub,
        STGithubEnterprise,
        STNoSource,
        STS3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SourceType = SourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern STBitbucket :: SourceType
pattern STBitbucket = SourceType' "BITBUCKET"

pattern STCodecommit :: SourceType
pattern STCodecommit = SourceType' "CODECOMMIT"

pattern STCodepipeline :: SourceType
pattern STCodepipeline = SourceType' "CODEPIPELINE"

pattern STGithub :: SourceType
pattern STGithub = SourceType' "GITHUB"

pattern STGithubEnterprise :: SourceType
pattern STGithubEnterprise = SourceType' "GITHUB_ENTERPRISE"

pattern STNoSource :: SourceType
pattern STNoSource = SourceType' "NO_SOURCE"

pattern STS3 :: SourceType
pattern STS3 = SourceType' "S3"

{-# COMPLETE
  STBitbucket,
  STCodecommit,
  STCodepipeline,
  STGithub,
  STGithubEnterprise,
  STNoSource,
  STS3,
  SourceType'
  #-}

instance FromText SourceType where
  parser = (SourceType' . mk) <$> takeText

instance ToText SourceType where
  toText (SourceType' ci) = original ci

instance Hashable SourceType

instance NFData SourceType

instance ToByteString SourceType

instance ToQuery SourceType

instance ToHeader SourceType

instance ToJSON SourceType where
  toJSON = toJSONText

instance FromJSON SourceType where
  parseJSON = parseJSONText "SourceType"
