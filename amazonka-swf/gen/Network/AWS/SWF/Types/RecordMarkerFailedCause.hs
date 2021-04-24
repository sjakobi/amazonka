{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RecordMarkerFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RecordMarkerFailedCause
  ( RecordMarkerFailedCause
      ( ..,
        RMFCOperationNotPermitted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecordMarkerFailedCause
  = RecordMarkerFailedCause'
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

pattern RMFCOperationNotPermitted :: RecordMarkerFailedCause
pattern RMFCOperationNotPermitted = RecordMarkerFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  RMFCOperationNotPermitted,
  RecordMarkerFailedCause'
  #-}

instance FromText RecordMarkerFailedCause where
  parser = (RecordMarkerFailedCause' . mk) <$> takeText

instance ToText RecordMarkerFailedCause where
  toText (RecordMarkerFailedCause' ci) = original ci

instance Hashable RecordMarkerFailedCause

instance NFData RecordMarkerFailedCause

instance ToByteString RecordMarkerFailedCause

instance ToQuery RecordMarkerFailedCause

instance ToHeader RecordMarkerFailedCause

instance FromJSON RecordMarkerFailedCause where
  parseJSON = parseJSONText "RecordMarkerFailedCause"
