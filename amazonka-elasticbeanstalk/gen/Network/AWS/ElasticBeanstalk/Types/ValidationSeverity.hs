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
-- Module      : Network.AWS.ElasticBeanstalk.Types.ValidationSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ValidationSeverity
  ( ValidationSeverity
      ( ..,
        ValidationSeverityError,
        ValidationSeverityWarning
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ValidationSeverity = ValidationSeverity'
  { fromValidationSeverity ::
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

pattern ValidationSeverityError :: ValidationSeverity
pattern ValidationSeverityError = ValidationSeverity' "error"

pattern ValidationSeverityWarning :: ValidationSeverity
pattern ValidationSeverityWarning = ValidationSeverity' "warning"

{-# COMPLETE
  ValidationSeverityError,
  ValidationSeverityWarning,
  ValidationSeverity'
  #-}

instance Prelude.FromText ValidationSeverity where
  parser = ValidationSeverity' Prelude.<$> Prelude.takeText

instance Prelude.ToText ValidationSeverity where
  toText (ValidationSeverity' x) = x

instance Prelude.Hashable ValidationSeverity

instance Prelude.NFData ValidationSeverity

instance Prelude.ToByteString ValidationSeverity

instance Prelude.ToQuery ValidationSeverity

instance Prelude.ToHeader ValidationSeverity

instance Prelude.FromXML ValidationSeverity where
  parseXML = Prelude.parseXMLText "ValidationSeverity"
