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
-- Module      : Network.AWS.EC2.Types.DeleteQueuedReservedInstancesErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DeleteQueuedReservedInstancesErrorCode
  ( DeleteQueuedReservedInstancesErrorCode
      ( ..,
        DeleteQueuedReservedInstancesErrorCodeReservedInstancesIdInvalid,
        DeleteQueuedReservedInstancesErrorCodeReservedInstancesNotInQueuedState,
        DeleteQueuedReservedInstancesErrorCodeUnexpectedError
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DeleteQueuedReservedInstancesErrorCode = DeleteQueuedReservedInstancesErrorCode'
  { fromDeleteQueuedReservedInstancesErrorCode ::
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

pattern DeleteQueuedReservedInstancesErrorCodeReservedInstancesIdInvalid :: DeleteQueuedReservedInstancesErrorCode
pattern DeleteQueuedReservedInstancesErrorCodeReservedInstancesIdInvalid = DeleteQueuedReservedInstancesErrorCode' "reserved-instances-id-invalid"

pattern DeleteQueuedReservedInstancesErrorCodeReservedInstancesNotInQueuedState :: DeleteQueuedReservedInstancesErrorCode
pattern DeleteQueuedReservedInstancesErrorCodeReservedInstancesNotInQueuedState = DeleteQueuedReservedInstancesErrorCode' "reserved-instances-not-in-queued-state"

pattern DeleteQueuedReservedInstancesErrorCodeUnexpectedError :: DeleteQueuedReservedInstancesErrorCode
pattern DeleteQueuedReservedInstancesErrorCodeUnexpectedError = DeleteQueuedReservedInstancesErrorCode' "unexpected-error"

{-# COMPLETE
  DeleteQueuedReservedInstancesErrorCodeReservedInstancesIdInvalid,
  DeleteQueuedReservedInstancesErrorCodeReservedInstancesNotInQueuedState,
  DeleteQueuedReservedInstancesErrorCodeUnexpectedError,
  DeleteQueuedReservedInstancesErrorCode'
  #-}

instance Prelude.FromText DeleteQueuedReservedInstancesErrorCode where
  parser = DeleteQueuedReservedInstancesErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeleteQueuedReservedInstancesErrorCode where
  toText (DeleteQueuedReservedInstancesErrorCode' x) = x

instance Prelude.Hashable DeleteQueuedReservedInstancesErrorCode

instance Prelude.NFData DeleteQueuedReservedInstancesErrorCode

instance Prelude.ToByteString DeleteQueuedReservedInstancesErrorCode

instance Prelude.ToQuery DeleteQueuedReservedInstancesErrorCode

instance Prelude.ToHeader DeleteQueuedReservedInstancesErrorCode

instance Prelude.FromXML DeleteQueuedReservedInstancesErrorCode where
  parseXML = Prelude.parseXMLText "DeleteQueuedReservedInstancesErrorCode"
