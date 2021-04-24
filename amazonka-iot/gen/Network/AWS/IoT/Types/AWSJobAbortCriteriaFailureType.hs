{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AWSJobAbortCriteriaFailureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AWSJobAbortCriteriaFailureType
  ( AWSJobAbortCriteriaFailureType
      ( ..,
        AJACFTAll,
        AJACFTFailed,
        AJACFTRejected,
        AJACFTTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AWSJobAbortCriteriaFailureType
  = AWSJobAbortCriteriaFailureType'
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

pattern AJACFTAll :: AWSJobAbortCriteriaFailureType
pattern AJACFTAll = AWSJobAbortCriteriaFailureType' "ALL"

pattern AJACFTFailed :: AWSJobAbortCriteriaFailureType
pattern AJACFTFailed = AWSJobAbortCriteriaFailureType' "FAILED"

pattern AJACFTRejected :: AWSJobAbortCriteriaFailureType
pattern AJACFTRejected = AWSJobAbortCriteriaFailureType' "REJECTED"

pattern AJACFTTimedOut :: AWSJobAbortCriteriaFailureType
pattern AJACFTTimedOut = AWSJobAbortCriteriaFailureType' "TIMED_OUT"

{-# COMPLETE
  AJACFTAll,
  AJACFTFailed,
  AJACFTRejected,
  AJACFTTimedOut,
  AWSJobAbortCriteriaFailureType'
  #-}

instance FromText AWSJobAbortCriteriaFailureType where
  parser = (AWSJobAbortCriteriaFailureType' . mk) <$> takeText

instance ToText AWSJobAbortCriteriaFailureType where
  toText (AWSJobAbortCriteriaFailureType' ci) = original ci

instance Hashable AWSJobAbortCriteriaFailureType

instance NFData AWSJobAbortCriteriaFailureType

instance ToByteString AWSJobAbortCriteriaFailureType

instance ToQuery AWSJobAbortCriteriaFailureType

instance ToHeader AWSJobAbortCriteriaFailureType

instance ToJSON AWSJobAbortCriteriaFailureType where
  toJSON = toJSONText
