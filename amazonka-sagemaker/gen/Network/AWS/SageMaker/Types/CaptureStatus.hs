{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CaptureStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CaptureStatus
  ( CaptureStatus
      ( ..,
        CStarted,
        CStopped
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CaptureStatus = CaptureStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CStarted :: CaptureStatus
pattern CStarted = CaptureStatus' "Started"

pattern CStopped :: CaptureStatus
pattern CStopped = CaptureStatus' "Stopped"

{-# COMPLETE
  CStarted,
  CStopped,
  CaptureStatus'
  #-}

instance FromText CaptureStatus where
  parser = (CaptureStatus' . mk) <$> takeText

instance ToText CaptureStatus where
  toText (CaptureStatus' ci) = original ci

instance Hashable CaptureStatus

instance NFData CaptureStatus

instance ToByteString CaptureStatus

instance ToQuery CaptureStatus

instance ToHeader CaptureStatus

instance FromJSON CaptureStatus where
  parseJSON = parseJSONText "CaptureStatus"
