{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AccessDeniedException,
        CannotListParentOfRootException,
        DirectoryNotEnabledException,
        FacetValidationException,
        InternalServiceException,
        InvalidARNException,
        InvalidNextTokenException,
        LimitExceededException,
        NotIndexException,
        NotNodeException,
        NotPolicyException,
        ResourceNotFoundException,
        ValidationException
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BatchReadExceptionType
  = BatchReadExceptionType'
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

pattern AccessDeniedException :: BatchReadExceptionType
pattern AccessDeniedException = BatchReadExceptionType' "AccessDeniedException"

pattern CannotListParentOfRootException :: BatchReadExceptionType
pattern CannotListParentOfRootException = BatchReadExceptionType' "CannotListParentOfRootException"

pattern DirectoryNotEnabledException :: BatchReadExceptionType
pattern DirectoryNotEnabledException = BatchReadExceptionType' "DirectoryNotEnabledException"

pattern FacetValidationException :: BatchReadExceptionType
pattern FacetValidationException = BatchReadExceptionType' "FacetValidationException"

pattern InternalServiceException :: BatchReadExceptionType
pattern InternalServiceException = BatchReadExceptionType' "InternalServiceException"

pattern InvalidARNException :: BatchReadExceptionType
pattern InvalidARNException = BatchReadExceptionType' "InvalidArnException"

pattern InvalidNextTokenException :: BatchReadExceptionType
pattern InvalidNextTokenException = BatchReadExceptionType' "InvalidNextTokenException"

pattern LimitExceededException :: BatchReadExceptionType
pattern LimitExceededException = BatchReadExceptionType' "LimitExceededException"

pattern NotIndexException :: BatchReadExceptionType
pattern NotIndexException = BatchReadExceptionType' "NotIndexException"

pattern NotNodeException :: BatchReadExceptionType
pattern NotNodeException = BatchReadExceptionType' "NotNodeException"

pattern NotPolicyException :: BatchReadExceptionType
pattern NotPolicyException = BatchReadExceptionType' "NotPolicyException"

pattern ResourceNotFoundException :: BatchReadExceptionType
pattern ResourceNotFoundException = BatchReadExceptionType' "ResourceNotFoundException"

pattern ValidationException :: BatchReadExceptionType
pattern ValidationException = BatchReadExceptionType' "ValidationException"

{-# COMPLETE
  AccessDeniedException,
  CannotListParentOfRootException,
  DirectoryNotEnabledException,
  FacetValidationException,
  InternalServiceException,
  InvalidARNException,
  InvalidNextTokenException,
  LimitExceededException,
  NotIndexException,
  NotNodeException,
  NotPolicyException,
  ResourceNotFoundException,
  ValidationException,
  BatchReadExceptionType'
  #-}

instance FromText BatchReadExceptionType where
  parser = (BatchReadExceptionType' . mk) <$> takeText

instance ToText BatchReadExceptionType where
  toText (BatchReadExceptionType' ci) = original ci

instance Hashable BatchReadExceptionType

instance NFData BatchReadExceptionType

instance ToByteString BatchReadExceptionType

instance ToQuery BatchReadExceptionType

instance ToHeader BatchReadExceptionType

instance FromJSON BatchReadExceptionType where
  parseJSON = parseJSONText "BatchReadExceptionType"
