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
-- Module      : Network.AWS.EC2.Types.ExportEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ExportEnvironment
  ( ExportEnvironment
      ( ..,
        ExportEnvironmentCitrix,
        ExportEnvironmentMicrosoft,
        ExportEnvironmentVmware
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ExportEnvironment = ExportEnvironment'
  { fromExportEnvironment ::
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

pattern ExportEnvironmentCitrix :: ExportEnvironment
pattern ExportEnvironmentCitrix = ExportEnvironment' "citrix"

pattern ExportEnvironmentMicrosoft :: ExportEnvironment
pattern ExportEnvironmentMicrosoft = ExportEnvironment' "microsoft"

pattern ExportEnvironmentVmware :: ExportEnvironment
pattern ExportEnvironmentVmware = ExportEnvironment' "vmware"

{-# COMPLETE
  ExportEnvironmentCitrix,
  ExportEnvironmentMicrosoft,
  ExportEnvironmentVmware,
  ExportEnvironment'
  #-}

instance Prelude.FromText ExportEnvironment where
  parser = ExportEnvironment' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExportEnvironment where
  toText (ExportEnvironment' x) = x

instance Prelude.Hashable ExportEnvironment

instance Prelude.NFData ExportEnvironment

instance Prelude.ToByteString ExportEnvironment

instance Prelude.ToQuery ExportEnvironment

instance Prelude.ToHeader ExportEnvironment

instance Prelude.FromXML ExportEnvironment where
  parseXML = Prelude.parseXMLText "ExportEnvironment"
