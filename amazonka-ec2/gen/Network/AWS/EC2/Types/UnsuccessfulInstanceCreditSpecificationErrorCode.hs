{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationErrorCode
  ( UnsuccessfulInstanceCreditSpecificationErrorCode
      ( ..,
        IncorrectInstanceState,
        InstanceCreditSpecification_NotSupported,
        InvalidInstanceId_Malformed,
        InvalidInstanceId_NotFound
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data UnsuccessfulInstanceCreditSpecificationErrorCode
  = UnsuccessfulInstanceCreditSpecificationErrorCode'
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

pattern IncorrectInstanceState :: UnsuccessfulInstanceCreditSpecificationErrorCode
pattern IncorrectInstanceState = UnsuccessfulInstanceCreditSpecificationErrorCode' "IncorrectInstanceState"

pattern InstanceCreditSpecification_NotSupported :: UnsuccessfulInstanceCreditSpecificationErrorCode
pattern InstanceCreditSpecification_NotSupported = UnsuccessfulInstanceCreditSpecificationErrorCode' "InstanceCreditSpecification.NotSupported"

pattern InvalidInstanceId_Malformed :: UnsuccessfulInstanceCreditSpecificationErrorCode
pattern InvalidInstanceId_Malformed = UnsuccessfulInstanceCreditSpecificationErrorCode' "InvalidInstanceID.Malformed"

pattern InvalidInstanceId_NotFound :: UnsuccessfulInstanceCreditSpecificationErrorCode
pattern InvalidInstanceId_NotFound = UnsuccessfulInstanceCreditSpecificationErrorCode' "InvalidInstanceID.NotFound"

{-# COMPLETE
  IncorrectInstanceState,
  InstanceCreditSpecification_NotSupported,
  InvalidInstanceId_Malformed,
  InvalidInstanceId_NotFound,
  UnsuccessfulInstanceCreditSpecificationErrorCode'
  #-}

instance FromText UnsuccessfulInstanceCreditSpecificationErrorCode where
  parser = (UnsuccessfulInstanceCreditSpecificationErrorCode' . mk) <$> takeText

instance ToText UnsuccessfulInstanceCreditSpecificationErrorCode where
  toText (UnsuccessfulInstanceCreditSpecificationErrorCode' ci) = original ci

instance Hashable UnsuccessfulInstanceCreditSpecificationErrorCode

instance NFData UnsuccessfulInstanceCreditSpecificationErrorCode

instance ToByteString UnsuccessfulInstanceCreditSpecificationErrorCode

instance ToQuery UnsuccessfulInstanceCreditSpecificationErrorCode

instance ToHeader UnsuccessfulInstanceCreditSpecificationErrorCode

instance FromXML UnsuccessfulInstanceCreditSpecificationErrorCode where
  parseXML = parseXMLText "UnsuccessfulInstanceCreditSpecificationErrorCode"
