{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.FailureReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.FailureReason
  ( FailureReason
      ( ..,
        Other,
        RequestTimedOut,
        UnsupportedAlgorithm
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FailureReason = FailureReason' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Other :: FailureReason
pattern Other = FailureReason' "OTHER"

pattern RequestTimedOut :: FailureReason
pattern RequestTimedOut = FailureReason' "REQUEST_TIMED_OUT"

pattern UnsupportedAlgorithm :: FailureReason
pattern UnsupportedAlgorithm = FailureReason' "UNSUPPORTED_ALGORITHM"

{-# COMPLETE
  Other,
  RequestTimedOut,
  UnsupportedAlgorithm,
  FailureReason'
  #-}

instance FromText FailureReason where
  parser = (FailureReason' . mk) <$> takeText

instance ToText FailureReason where
  toText (FailureReason' ci) = original ci

instance Hashable FailureReason

instance NFData FailureReason

instance ToByteString FailureReason

instance ToQuery FailureReason

instance ToHeader FailureReason

instance FromJSON FailureReason where
  parseJSON = parseJSONText "FailureReason"
