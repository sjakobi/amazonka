{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentStatus
  ( EnvironmentStatus
      ( ..,
        ESAborting,
        ESLaunching,
        ESLinkingFrom,
        ESLinkingTo,
        ESReady,
        ESTerminated,
        ESTerminating,
        ESUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentStatus = EnvironmentStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ESAborting :: EnvironmentStatus
pattern ESAborting = EnvironmentStatus' "Aborting"

pattern ESLaunching :: EnvironmentStatus
pattern ESLaunching = EnvironmentStatus' "Launching"

pattern ESLinkingFrom :: EnvironmentStatus
pattern ESLinkingFrom = EnvironmentStatus' "LinkingFrom"

pattern ESLinkingTo :: EnvironmentStatus
pattern ESLinkingTo = EnvironmentStatus' "LinkingTo"

pattern ESReady :: EnvironmentStatus
pattern ESReady = EnvironmentStatus' "Ready"

pattern ESTerminated :: EnvironmentStatus
pattern ESTerminated = EnvironmentStatus' "Terminated"

pattern ESTerminating :: EnvironmentStatus
pattern ESTerminating = EnvironmentStatus' "Terminating"

pattern ESUpdating :: EnvironmentStatus
pattern ESUpdating = EnvironmentStatus' "Updating"

{-# COMPLETE
  ESAborting,
  ESLaunching,
  ESLinkingFrom,
  ESLinkingTo,
  ESReady,
  ESTerminated,
  ESTerminating,
  ESUpdating,
  EnvironmentStatus'
  #-}

instance FromText EnvironmentStatus where
  parser = (EnvironmentStatus' . mk) <$> takeText

instance ToText EnvironmentStatus where
  toText (EnvironmentStatus' ci) = original ci

instance Hashable EnvironmentStatus

instance NFData EnvironmentStatus

instance ToByteString EnvironmentStatus

instance ToQuery EnvironmentStatus

instance ToHeader EnvironmentStatus

instance FromXML EnvironmentStatus where
  parseXML = parseXMLText "EnvironmentStatus"
