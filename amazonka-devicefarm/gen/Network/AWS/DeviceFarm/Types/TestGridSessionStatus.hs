{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestGridSessionStatus
  ( TestGridSessionStatus
      ( ..,
        TGSSActive,
        TGSSClosed,
        TGSSErrored
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TestGridSessionStatus
  = TestGridSessionStatus'
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

pattern TGSSActive :: TestGridSessionStatus
pattern TGSSActive = TestGridSessionStatus' "ACTIVE"

pattern TGSSClosed :: TestGridSessionStatus
pattern TGSSClosed = TestGridSessionStatus' "CLOSED"

pattern TGSSErrored :: TestGridSessionStatus
pattern TGSSErrored = TestGridSessionStatus' "ERRORED"

{-# COMPLETE
  TGSSActive,
  TGSSClosed,
  TGSSErrored,
  TestGridSessionStatus'
  #-}

instance FromText TestGridSessionStatus where
  parser = (TestGridSessionStatus' . mk) <$> takeText

instance ToText TestGridSessionStatus where
  toText (TestGridSessionStatus' ci) = original ci

instance Hashable TestGridSessionStatus

instance NFData TestGridSessionStatus

instance ToByteString TestGridSessionStatus

instance ToQuery TestGridSessionStatus

instance ToHeader TestGridSessionStatus

instance ToJSON TestGridSessionStatus where
  toJSON = toJSONText

instance FromJSON TestGridSessionStatus where
  parseJSON = parseJSONText "TestGridSessionStatus"
