{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.BuildPhaseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.BuildPhaseType
  ( BuildPhaseType
      ( ..,
        Build,
        Completed,
        DownloadSource,
        Finalizing,
        Install,
        PostBuild,
        PreBuild,
        Provisioning,
        Queued,
        Submitted,
        UploadArtifacts
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BuildPhaseType = BuildPhaseType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Build :: BuildPhaseType
pattern Build = BuildPhaseType' "BUILD"

pattern Completed :: BuildPhaseType
pattern Completed = BuildPhaseType' "COMPLETED"

pattern DownloadSource :: BuildPhaseType
pattern DownloadSource = BuildPhaseType' "DOWNLOAD_SOURCE"

pattern Finalizing :: BuildPhaseType
pattern Finalizing = BuildPhaseType' "FINALIZING"

pattern Install :: BuildPhaseType
pattern Install = BuildPhaseType' "INSTALL"

pattern PostBuild :: BuildPhaseType
pattern PostBuild = BuildPhaseType' "POST_BUILD"

pattern PreBuild :: BuildPhaseType
pattern PreBuild = BuildPhaseType' "PRE_BUILD"

pattern Provisioning :: BuildPhaseType
pattern Provisioning = BuildPhaseType' "PROVISIONING"

pattern Queued :: BuildPhaseType
pattern Queued = BuildPhaseType' "QUEUED"

pattern Submitted :: BuildPhaseType
pattern Submitted = BuildPhaseType' "SUBMITTED"

pattern UploadArtifacts :: BuildPhaseType
pattern UploadArtifacts = BuildPhaseType' "UPLOAD_ARTIFACTS"

{-# COMPLETE
  Build,
  Completed,
  DownloadSource,
  Finalizing,
  Install,
  PostBuild,
  PreBuild,
  Provisioning,
  Queued,
  Submitted,
  UploadArtifacts,
  BuildPhaseType'
  #-}

instance FromText BuildPhaseType where
  parser = (BuildPhaseType' . mk) <$> takeText

instance ToText BuildPhaseType where
  toText (BuildPhaseType' ci) = original ci

instance Hashable BuildPhaseType

instance NFData BuildPhaseType

instance ToByteString BuildPhaseType

instance ToQuery BuildPhaseType

instance ToHeader BuildPhaseType

instance FromJSON BuildPhaseType where
  parseJSON = parseJSONText "BuildPhaseType"
