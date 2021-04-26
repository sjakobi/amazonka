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
-- Module      : Network.AWS.Inspector.Types.Severity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.Severity
  ( Severity
      ( ..,
        SeverityHigh,
        SeverityInformational,
        SeverityLow,
        SeverityMedium,
        SeverityUndefined
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Severity = Severity'
  { fromSeverity ::
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

pattern SeverityHigh :: Severity
pattern SeverityHigh = Severity' "High"

pattern SeverityInformational :: Severity
pattern SeverityInformational = Severity' "Informational"

pattern SeverityLow :: Severity
pattern SeverityLow = Severity' "Low"

pattern SeverityMedium :: Severity
pattern SeverityMedium = Severity' "Medium"

pattern SeverityUndefined :: Severity
pattern SeverityUndefined = Severity' "Undefined"

{-# COMPLETE
  SeverityHigh,
  SeverityInformational,
  SeverityLow,
  SeverityMedium,
  SeverityUndefined,
  Severity'
  #-}

instance Prelude.FromText Severity where
  parser = Severity' Prelude.<$> Prelude.takeText

instance Prelude.ToText Severity where
  toText (Severity' x) = x

instance Prelude.Hashable Severity

instance Prelude.NFData Severity

instance Prelude.ToByteString Severity

instance Prelude.ToQuery Severity

instance Prelude.ToHeader Severity

instance Prelude.ToJSON Severity where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Severity where
  parseJSON = Prelude.parseJSONText "Severity"
