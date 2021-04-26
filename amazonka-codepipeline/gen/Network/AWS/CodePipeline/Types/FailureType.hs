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
-- Module      : Network.AWS.CodePipeline.Types.FailureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.FailureType
  ( FailureType
      ( ..,
        FailureTypeConfigurationError,
        FailureTypeJobFailed,
        FailureTypePermissionError,
        FailureTypeRevisionOutOfSync,
        FailureTypeRevisionUnavailable,
        FailureTypeSystemUnavailable
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

pattern FailureTypeConfigurationError :: FailureType
pattern FailureTypeConfigurationError = FailureType' "ConfigurationError"

pattern FailureTypeJobFailed :: FailureType
pattern FailureTypeJobFailed = FailureType' "JobFailed"

pattern FailureTypePermissionError :: FailureType
pattern FailureTypePermissionError = FailureType' "PermissionError"

pattern FailureTypeRevisionOutOfSync :: FailureType
pattern FailureTypeRevisionOutOfSync = FailureType' "RevisionOutOfSync"

pattern FailureTypeRevisionUnavailable :: FailureType
pattern FailureTypeRevisionUnavailable = FailureType' "RevisionUnavailable"

pattern FailureTypeSystemUnavailable :: FailureType
pattern FailureTypeSystemUnavailable = FailureType' "SystemUnavailable"

{-# COMPLETE
  FailureTypeConfigurationError,
  FailureTypeJobFailed,
  FailureTypePermissionError,
  FailureTypeRevisionOutOfSync,
  FailureTypeRevisionUnavailable,
  FailureTypeSystemUnavailable,
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

instance Prelude.ToJSON FailureType where
  toJSON = Prelude.toJSONText
