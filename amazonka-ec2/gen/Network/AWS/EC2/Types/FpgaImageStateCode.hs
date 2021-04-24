{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FpgaImageStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FpgaImageStateCode
  ( FpgaImageStateCode
      ( ..,
        FISCAvailable,
        FISCFailed,
        FISCPending,
        FISCUnavailable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data FpgaImageStateCode
  = FpgaImageStateCode'
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

pattern FISCAvailable :: FpgaImageStateCode
pattern FISCAvailable = FpgaImageStateCode' "available"

pattern FISCFailed :: FpgaImageStateCode
pattern FISCFailed = FpgaImageStateCode' "failed"

pattern FISCPending :: FpgaImageStateCode
pattern FISCPending = FpgaImageStateCode' "pending"

pattern FISCUnavailable :: FpgaImageStateCode
pattern FISCUnavailable = FpgaImageStateCode' "unavailable"

{-# COMPLETE
  FISCAvailable,
  FISCFailed,
  FISCPending,
  FISCUnavailable,
  FpgaImageStateCode'
  #-}

instance FromText FpgaImageStateCode where
  parser = (FpgaImageStateCode' . mk) <$> takeText

instance ToText FpgaImageStateCode where
  toText (FpgaImageStateCode' ci) = original ci

instance Hashable FpgaImageStateCode

instance NFData FpgaImageStateCode

instance ToByteString FpgaImageStateCode

instance ToQuery FpgaImageStateCode

instance ToHeader FpgaImageStateCode

instance FromXML FpgaImageStateCode where
  parseXML = parseXMLText "FpgaImageStateCode"
