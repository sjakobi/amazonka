{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AnalysisStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisStatus
  ( AnalysisStatus
      ( ..,
        ASFailed,
        ASRunning,
        ASSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AnalysisStatus = AnalysisStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASFailed :: AnalysisStatus
pattern ASFailed = AnalysisStatus' "failed"

pattern ASRunning :: AnalysisStatus
pattern ASRunning = AnalysisStatus' "running"

pattern ASSucceeded :: AnalysisStatus
pattern ASSucceeded = AnalysisStatus' "succeeded"

{-# COMPLETE
  ASFailed,
  ASRunning,
  ASSucceeded,
  AnalysisStatus'
  #-}

instance FromText AnalysisStatus where
  parser = (AnalysisStatus' . mk) <$> takeText

instance ToText AnalysisStatus where
  toText (AnalysisStatus' ci) = original ci

instance Hashable AnalysisStatus

instance NFData AnalysisStatus

instance ToByteString AnalysisStatus

instance ToQuery AnalysisStatus

instance ToHeader AnalysisStatus

instance FromXML AnalysisStatus where
  parseXML = parseXMLText "AnalysisStatus"
