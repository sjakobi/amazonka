{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.StepStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.StepStateChangeReasonCode
  ( StepStateChangeReasonCode
      ( ..,
        SSCRCNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StepStateChangeReasonCode
  = StepStateChangeReasonCode'
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

pattern SSCRCNone :: StepStateChangeReasonCode
pattern SSCRCNone = StepStateChangeReasonCode' "NONE"

{-# COMPLETE
  SSCRCNone,
  StepStateChangeReasonCode'
  #-}

instance FromText StepStateChangeReasonCode where
  parser = (StepStateChangeReasonCode' . mk) <$> takeText

instance ToText StepStateChangeReasonCode where
  toText (StepStateChangeReasonCode' ci) = original ci

instance Hashable StepStateChangeReasonCode

instance NFData StepStateChangeReasonCode

instance ToByteString StepStateChangeReasonCode

instance ToQuery StepStateChangeReasonCode

instance ToHeader StepStateChangeReasonCode

instance FromJSON StepStateChangeReasonCode where
  parseJSON = parseJSONText "StepStateChangeReasonCode"
