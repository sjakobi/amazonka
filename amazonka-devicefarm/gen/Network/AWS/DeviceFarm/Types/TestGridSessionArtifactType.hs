{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionArtifactType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestGridSessionArtifactType
  ( TestGridSessionArtifactType
      ( ..,
        TGSATSeleniumLog,
        TGSATUnknown,
        TGSATVideo
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TestGridSessionArtifactType
  = TestGridSessionArtifactType'
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

pattern TGSATSeleniumLog :: TestGridSessionArtifactType
pattern TGSATSeleniumLog = TestGridSessionArtifactType' "SELENIUM_LOG"

pattern TGSATUnknown :: TestGridSessionArtifactType
pattern TGSATUnknown = TestGridSessionArtifactType' "UNKNOWN"

pattern TGSATVideo :: TestGridSessionArtifactType
pattern TGSATVideo = TestGridSessionArtifactType' "VIDEO"

{-# COMPLETE
  TGSATSeleniumLog,
  TGSATUnknown,
  TGSATVideo,
  TestGridSessionArtifactType'
  #-}

instance FromText TestGridSessionArtifactType where
  parser = (TestGridSessionArtifactType' . mk) <$> takeText

instance ToText TestGridSessionArtifactType where
  toText (TestGridSessionArtifactType' ci) = original ci

instance Hashable TestGridSessionArtifactType

instance NFData TestGridSessionArtifactType

instance ToByteString TestGridSessionArtifactType

instance ToQuery TestGridSessionArtifactType

instance ToHeader TestGridSessionArtifactType

instance FromJSON TestGridSessionArtifactType where
  parseJSON = parseJSONText "TestGridSessionArtifactType"
