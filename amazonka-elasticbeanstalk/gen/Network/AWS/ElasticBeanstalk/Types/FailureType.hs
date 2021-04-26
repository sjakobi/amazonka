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
-- Module      : Network.AWS.ElasticBeanstalk.Types.FailureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.FailureType
  ( FailureType
      ( ..,
        FailureTypeCancellationFailed,
        FailureTypeInternalFailure,
        FailureTypeInvalidEnvironmentState,
        FailureTypePermissionsError,
        FailureTypeRollbackFailed,
        FailureTypeRollbackSuccessful,
        FailureTypeUpdateCancelled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FailureType = FailureType'
  { fromFailureType ::
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

pattern FailureTypeCancellationFailed :: FailureType
pattern FailureTypeCancellationFailed = FailureType' "CancellationFailed"

pattern FailureTypeInternalFailure :: FailureType
pattern FailureTypeInternalFailure = FailureType' "InternalFailure"

pattern FailureTypeInvalidEnvironmentState :: FailureType
pattern FailureTypeInvalidEnvironmentState = FailureType' "InvalidEnvironmentState"

pattern FailureTypePermissionsError :: FailureType
pattern FailureTypePermissionsError = FailureType' "PermissionsError"

pattern FailureTypeRollbackFailed :: FailureType
pattern FailureTypeRollbackFailed = FailureType' "RollbackFailed"

pattern FailureTypeRollbackSuccessful :: FailureType
pattern FailureTypeRollbackSuccessful = FailureType' "RollbackSuccessful"

pattern FailureTypeUpdateCancelled :: FailureType
pattern FailureTypeUpdateCancelled = FailureType' "UpdateCancelled"

{-# COMPLETE
  FailureTypeCancellationFailed,
  FailureTypeInternalFailure,
  FailureTypeInvalidEnvironmentState,
  FailureTypePermissionsError,
  FailureTypeRollbackFailed,
  FailureTypeRollbackSuccessful,
  FailureTypeUpdateCancelled,
  FailureType'
  #-}

instance Prelude.FromText FailureType where
  parser = FailureType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FailureType where
  toText (FailureType' x) = x

instance Prelude.Hashable FailureType

instance Prelude.NFData FailureType

instance Prelude.ToByteString FailureType

instance Prelude.ToQuery FailureType

instance Prelude.ToHeader FailureType

instance Prelude.FromXML FailureType where
  parseXML = Prelude.parseXMLText "FailureType"
