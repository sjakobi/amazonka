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
-- Module      : Network.AWS.EC2.Types.DeleteFleetErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DeleteFleetErrorCode
  ( DeleteFleetErrorCode
      ( ..,
        DeleteFleetErrorCodeFleetIdDoesNotExist,
        DeleteFleetErrorCodeFleetIdMalformed,
        DeleteFleetErrorCodeFleetNotInDeletableState,
        DeleteFleetErrorCodeUnexpectedError
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DeleteFleetErrorCode = DeleteFleetErrorCode'
  { fromDeleteFleetErrorCode ::
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

pattern DeleteFleetErrorCodeFleetIdDoesNotExist :: DeleteFleetErrorCode
pattern DeleteFleetErrorCodeFleetIdDoesNotExist = DeleteFleetErrorCode' "fleetIdDoesNotExist"

pattern DeleteFleetErrorCodeFleetIdMalformed :: DeleteFleetErrorCode
pattern DeleteFleetErrorCodeFleetIdMalformed = DeleteFleetErrorCode' "fleetIdMalformed"

pattern DeleteFleetErrorCodeFleetNotInDeletableState :: DeleteFleetErrorCode
pattern DeleteFleetErrorCodeFleetNotInDeletableState = DeleteFleetErrorCode' "fleetNotInDeletableState"

pattern DeleteFleetErrorCodeUnexpectedError :: DeleteFleetErrorCode
pattern DeleteFleetErrorCodeUnexpectedError = DeleteFleetErrorCode' "unexpectedError"

{-# COMPLETE
  DeleteFleetErrorCodeFleetIdDoesNotExist,
  DeleteFleetErrorCodeFleetIdMalformed,
  DeleteFleetErrorCodeFleetNotInDeletableState,
  DeleteFleetErrorCodeUnexpectedError,
  DeleteFleetErrorCode'
  #-}

instance Prelude.FromText DeleteFleetErrorCode where
  parser = DeleteFleetErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeleteFleetErrorCode where
  toText (DeleteFleetErrorCode' x) = x

instance Prelude.Hashable DeleteFleetErrorCode

instance Prelude.NFData DeleteFleetErrorCode

instance Prelude.ToByteString DeleteFleetErrorCode

instance Prelude.ToQuery DeleteFleetErrorCode

instance Prelude.ToHeader DeleteFleetErrorCode

instance Prelude.FromXML DeleteFleetErrorCode where
  parseXML = Prelude.parseXMLText "DeleteFleetErrorCode"
