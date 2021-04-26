{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        UnsuccessfulInstanceCreditSpecificationErrorCodeIncorrectInstanceState,
        UnsuccessfulInstanceCreditSpecificationErrorCodeInstanceCreditSpecification_NotSupported,
        UnsuccessfulInstanceCreditSpecificationErrorCodeInvalidInstanceID_Malformed,
        UnsuccessfulInstanceCreditSpecificationErrorCodeInvalidInstanceID_NotFound
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype UnsuccessfulInstanceCreditSpecificationErrorCode = UnsuccessfulInstanceCreditSpecificationErrorCode'
  { fromUnsuccessfulInstanceCreditSpecificationErrorCode ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern UnsuccessfulInstanceCreditSpecificationErrorCodeIncorrectInstanceState :: UnsuccessfulInstanceCreditSpecificationErrorCode
pattern UnsuccessfulInstanceCreditSpecificationErrorCodeIncorrectInstanceState = UnsuccessfulInstanceCreditSpecificationErrorCode' "IncorrectInstanceState"

pattern UnsuccessfulInstanceCreditSpecificationErrorCodeInstanceCreditSpecification_NotSupported :: UnsuccessfulInstanceCreditSpecificationErrorCode
pattern UnsuccessfulInstanceCreditSpecificationErrorCodeInstanceCreditSpecification_NotSupported = UnsuccessfulInstanceCreditSpecificationErrorCode' "InstanceCreditSpecification.NotSupported"

pattern UnsuccessfulInstanceCreditSpecificationErrorCodeInvalidInstanceID_Malformed :: UnsuccessfulInstanceCreditSpecificationErrorCode
pattern UnsuccessfulInstanceCreditSpecificationErrorCodeInvalidInstanceID_Malformed = UnsuccessfulInstanceCreditSpecificationErrorCode' "InvalidInstanceID.Malformed"

pattern UnsuccessfulInstanceCreditSpecificationErrorCodeInvalidInstanceID_NotFound :: UnsuccessfulInstanceCreditSpecificationErrorCode
pattern UnsuccessfulInstanceCreditSpecificationErrorCodeInvalidInstanceID_NotFound = UnsuccessfulInstanceCreditSpecificationErrorCode' "InvalidInstanceID.NotFound"

{-# COMPLETE
  UnsuccessfulInstanceCreditSpecificationErrorCodeIncorrectInstanceState,
  UnsuccessfulInstanceCreditSpecificationErrorCodeInstanceCreditSpecification_NotSupported,
  UnsuccessfulInstanceCreditSpecificationErrorCodeInvalidInstanceID_Malformed,
  UnsuccessfulInstanceCreditSpecificationErrorCodeInvalidInstanceID_NotFound,
  UnsuccessfulInstanceCreditSpecificationErrorCode'
  #-}

instance Prelude.FromText UnsuccessfulInstanceCreditSpecificationErrorCode where
  parser = UnsuccessfulInstanceCreditSpecificationErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText UnsuccessfulInstanceCreditSpecificationErrorCode where
  toText (UnsuccessfulInstanceCreditSpecificationErrorCode' x) = x

instance Prelude.Hashable UnsuccessfulInstanceCreditSpecificationErrorCode

instance Prelude.NFData UnsuccessfulInstanceCreditSpecificationErrorCode

instance Prelude.ToByteString UnsuccessfulInstanceCreditSpecificationErrorCode

instance Prelude.ToQuery UnsuccessfulInstanceCreditSpecificationErrorCode

instance Prelude.ToHeader UnsuccessfulInstanceCreditSpecificationErrorCode

instance Prelude.FromXML UnsuccessfulInstanceCreditSpecificationErrorCode where
  parseXML = Prelude.parseXMLText "UnsuccessfulInstanceCreditSpecificationErrorCode"
