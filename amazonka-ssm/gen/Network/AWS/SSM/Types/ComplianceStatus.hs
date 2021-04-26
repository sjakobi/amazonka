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
-- Module      : Network.AWS.SSM.Types.ComplianceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceStatus
  ( ComplianceStatus
      ( ..,
        ComplianceStatusCOMPLIANT,
        ComplianceStatusNONCOMPLIANT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ComplianceStatus = ComplianceStatus'
  { fromComplianceStatus ::
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

pattern ComplianceStatusCOMPLIANT :: ComplianceStatus
pattern ComplianceStatusCOMPLIANT = ComplianceStatus' "COMPLIANT"

pattern ComplianceStatusNONCOMPLIANT :: ComplianceStatus
pattern ComplianceStatusNONCOMPLIANT = ComplianceStatus' "NON_COMPLIANT"

{-# COMPLETE
  ComplianceStatusCOMPLIANT,
  ComplianceStatusNONCOMPLIANT,
  ComplianceStatus'
  #-}

instance Prelude.FromText ComplianceStatus where
  parser = ComplianceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComplianceStatus where
  toText (ComplianceStatus' x) = x

instance Prelude.Hashable ComplianceStatus

instance Prelude.NFData ComplianceStatus

instance Prelude.ToByteString ComplianceStatus

instance Prelude.ToQuery ComplianceStatus

instance Prelude.ToHeader ComplianceStatus

instance Prelude.ToJSON ComplianceStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ComplianceStatus where
  parseJSON = Prelude.parseJSONText "ComplianceStatus"
