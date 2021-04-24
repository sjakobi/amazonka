{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ImagePullCredentialsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ImagePullCredentialsType
  ( ImagePullCredentialsType
      ( ..,
        Codebuild,
        ServiceRole
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImagePullCredentialsType
  = ImagePullCredentialsType'
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

pattern Codebuild :: ImagePullCredentialsType
pattern Codebuild = ImagePullCredentialsType' "CODEBUILD"

pattern ServiceRole :: ImagePullCredentialsType
pattern ServiceRole = ImagePullCredentialsType' "SERVICE_ROLE"

{-# COMPLETE
  Codebuild,
  ServiceRole,
  ImagePullCredentialsType'
  #-}

instance FromText ImagePullCredentialsType where
  parser = (ImagePullCredentialsType' . mk) <$> takeText

instance ToText ImagePullCredentialsType where
  toText (ImagePullCredentialsType' ci) = original ci

instance Hashable ImagePullCredentialsType

instance NFData ImagePullCredentialsType

instance ToByteString ImagePullCredentialsType

instance ToQuery ImagePullCredentialsType

instance ToHeader ImagePullCredentialsType

instance ToJSON ImagePullCredentialsType where
  toJSON = toJSONText

instance FromJSON ImagePullCredentialsType where
  parseJSON = parseJSONText "ImagePullCredentialsType"
