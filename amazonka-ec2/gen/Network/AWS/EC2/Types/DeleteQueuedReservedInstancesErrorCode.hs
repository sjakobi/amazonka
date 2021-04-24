{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ReservedInstancesIdInvalid,
        ReservedInstancesNotInQueuedState,
        UnexpectedError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data DeleteQueuedReservedInstancesErrorCode
  = DeleteQueuedReservedInstancesErrorCode'
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

pattern ReservedInstancesIdInvalid :: DeleteQueuedReservedInstancesErrorCode
pattern ReservedInstancesIdInvalid = DeleteQueuedReservedInstancesErrorCode' "reserved-instances-id-invalid"

pattern ReservedInstancesNotInQueuedState :: DeleteQueuedReservedInstancesErrorCode
pattern ReservedInstancesNotInQueuedState = DeleteQueuedReservedInstancesErrorCode' "reserved-instances-not-in-queued-state"

pattern UnexpectedError :: DeleteQueuedReservedInstancesErrorCode
pattern UnexpectedError = DeleteQueuedReservedInstancesErrorCode' "unexpected-error"

{-# COMPLETE
  ReservedInstancesIdInvalid,
  ReservedInstancesNotInQueuedState,
  UnexpectedError,
  DeleteQueuedReservedInstancesErrorCode'
  #-}

instance FromText DeleteQueuedReservedInstancesErrorCode where
  parser = (DeleteQueuedReservedInstancesErrorCode' . mk) <$> takeText

instance ToText DeleteQueuedReservedInstancesErrorCode where
  toText (DeleteQueuedReservedInstancesErrorCode' ci) = original ci

instance Hashable DeleteQueuedReservedInstancesErrorCode

instance NFData DeleteQueuedReservedInstancesErrorCode

instance ToByteString DeleteQueuedReservedInstancesErrorCode

instance ToQuery DeleteQueuedReservedInstancesErrorCode

instance ToHeader DeleteQueuedReservedInstancesErrorCode

instance FromXML DeleteQueuedReservedInstancesErrorCode where
  parseXML = parseXMLText "DeleteQueuedReservedInstancesErrorCode"
