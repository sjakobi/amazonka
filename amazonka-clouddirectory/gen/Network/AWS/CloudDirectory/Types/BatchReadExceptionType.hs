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
-- Module      : Network.AWS.CloudDirectory.Types.BatchReadExceptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchReadExceptionType
  ( BatchReadExceptionType
      ( ..,
        BatchReadExceptionTypeAccessDeniedException,
        BatchReadExceptionTypeCannotListParentOfRootException,
        BatchReadExceptionTypeDirectoryNotEnabledException,
        BatchReadExceptionTypeFacetValidationException,
        BatchReadExceptionTypeInternalServiceException,
        BatchReadExceptionTypeInvalidArnException,
        BatchReadExceptionTypeInvalidNextTokenException,
        BatchReadExceptionTypeLimitExceededException,
        BatchReadExceptionTypeNotIndexException,
        BatchReadExceptionTypeNotNodeException,
        BatchReadExceptionTypeNotPolicyException,
        BatchReadExceptionTypeResourceNotFoundException,
        BatchReadExceptionTypeValidationException
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BatchReadExceptionType = BatchReadExceptionType'
  { fromBatchReadExceptionType ::
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

pattern BatchReadExceptionTypeAccessDeniedException :: BatchReadExceptionType
pattern BatchReadExceptionTypeAccessDeniedException = BatchReadExceptionType' "AccessDeniedException"

pattern BatchReadExceptionTypeCannotListParentOfRootException :: BatchReadExceptionType
pattern BatchReadExceptionTypeCannotListParentOfRootException = BatchReadExceptionType' "CannotListParentOfRootException"

pattern BatchReadExceptionTypeDirectoryNotEnabledException :: BatchReadExceptionType
pattern BatchReadExceptionTypeDirectoryNotEnabledException = BatchReadExceptionType' "DirectoryNotEnabledException"

pattern BatchReadExceptionTypeFacetValidationException :: BatchReadExceptionType
pattern BatchReadExceptionTypeFacetValidationException = BatchReadExceptionType' "FacetValidationException"

pattern BatchReadExceptionTypeInternalServiceException :: BatchReadExceptionType
pattern BatchReadExceptionTypeInternalServiceException = BatchReadExceptionType' "InternalServiceException"

pattern BatchReadExceptionTypeInvalidArnException :: BatchReadExceptionType
pattern BatchReadExceptionTypeInvalidArnException = BatchReadExceptionType' "InvalidArnException"

pattern BatchReadExceptionTypeInvalidNextTokenException :: BatchReadExceptionType
pattern BatchReadExceptionTypeInvalidNextTokenException = BatchReadExceptionType' "InvalidNextTokenException"

pattern BatchReadExceptionTypeLimitExceededException :: BatchReadExceptionType
pattern BatchReadExceptionTypeLimitExceededException = BatchReadExceptionType' "LimitExceededException"

pattern BatchReadExceptionTypeNotIndexException :: BatchReadExceptionType
pattern BatchReadExceptionTypeNotIndexException = BatchReadExceptionType' "NotIndexException"

pattern BatchReadExceptionTypeNotNodeException :: BatchReadExceptionType
pattern BatchReadExceptionTypeNotNodeException = BatchReadExceptionType' "NotNodeException"

pattern BatchReadExceptionTypeNotPolicyException :: BatchReadExceptionType
pattern BatchReadExceptionTypeNotPolicyException = BatchReadExceptionType' "NotPolicyException"

pattern BatchReadExceptionTypeResourceNotFoundException :: BatchReadExceptionType
pattern BatchReadExceptionTypeResourceNotFoundException = BatchReadExceptionType' "ResourceNotFoundException"

pattern BatchReadExceptionTypeValidationException :: BatchReadExceptionType
pattern BatchReadExceptionTypeValidationException = BatchReadExceptionType' "ValidationException"

{-# COMPLETE
  BatchReadExceptionTypeAccessDeniedException,
  BatchReadExceptionTypeCannotListParentOfRootException,
  BatchReadExceptionTypeDirectoryNotEnabledException,
  BatchReadExceptionTypeFacetValidationException,
  BatchReadExceptionTypeInternalServiceException,
  BatchReadExceptionTypeInvalidArnException,
  BatchReadExceptionTypeInvalidNextTokenException,
  BatchReadExceptionTypeLimitExceededException,
  BatchReadExceptionTypeNotIndexException,
  BatchReadExceptionTypeNotNodeException,
  BatchReadExceptionTypeNotPolicyException,
  BatchReadExceptionTypeResourceNotFoundException,
  BatchReadExceptionTypeValidationException,
  BatchReadExceptionType'
  #-}

instance Prelude.FromText BatchReadExceptionType where
  parser = BatchReadExceptionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BatchReadExceptionType where
  toText (BatchReadExceptionType' x) = x

instance Prelude.Hashable BatchReadExceptionType

instance Prelude.NFData BatchReadExceptionType

instance Prelude.ToByteString BatchReadExceptionType

instance Prelude.ToQuery BatchReadExceptionType

instance Prelude.ToHeader BatchReadExceptionType

instance Prelude.FromJSON BatchReadExceptionType where
  parseJSON = Prelude.parseJSONText "BatchReadExceptionType"
