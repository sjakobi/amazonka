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
-- Module      : Network.AWS.EC2.Types.CancelBatchErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CancelBatchErrorCode
  ( CancelBatchErrorCode
      ( ..,
        CancelBatchErrorCodeFleetRequestIdDoesNotExist,
        CancelBatchErrorCodeFleetRequestIdMalformed,
        CancelBatchErrorCodeFleetRequestNotInCancellableState,
        CancelBatchErrorCodeUnexpectedError
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype CancelBatchErrorCode = CancelBatchErrorCode'
  { fromCancelBatchErrorCode ::
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

pattern CancelBatchErrorCodeFleetRequestIdDoesNotExist :: CancelBatchErrorCode
pattern CancelBatchErrorCodeFleetRequestIdDoesNotExist = CancelBatchErrorCode' "fleetRequestIdDoesNotExist"

pattern CancelBatchErrorCodeFleetRequestIdMalformed :: CancelBatchErrorCode
pattern CancelBatchErrorCodeFleetRequestIdMalformed = CancelBatchErrorCode' "fleetRequestIdMalformed"

pattern CancelBatchErrorCodeFleetRequestNotInCancellableState :: CancelBatchErrorCode
pattern CancelBatchErrorCodeFleetRequestNotInCancellableState = CancelBatchErrorCode' "fleetRequestNotInCancellableState"

pattern CancelBatchErrorCodeUnexpectedError :: CancelBatchErrorCode
pattern CancelBatchErrorCodeUnexpectedError = CancelBatchErrorCode' "unexpectedError"

{-# COMPLETE
  CancelBatchErrorCodeFleetRequestIdDoesNotExist,
  CancelBatchErrorCodeFleetRequestIdMalformed,
  CancelBatchErrorCodeFleetRequestNotInCancellableState,
  CancelBatchErrorCodeUnexpectedError,
  CancelBatchErrorCode'
  #-}

instance Prelude.FromText CancelBatchErrorCode where
  parser = CancelBatchErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText CancelBatchErrorCode where
  toText (CancelBatchErrorCode' x) = x

instance Prelude.Hashable CancelBatchErrorCode

instance Prelude.NFData CancelBatchErrorCode

instance Prelude.ToByteString CancelBatchErrorCode

instance Prelude.ToQuery CancelBatchErrorCode

instance Prelude.ToHeader CancelBatchErrorCode

instance Prelude.FromXML CancelBatchErrorCode where
  parseXML = Prelude.parseXMLText "CancelBatchErrorCode"
