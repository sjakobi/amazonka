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
-- Module      : Network.AWS.EC2.Types.CapacityReservationInstancePlatform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CapacityReservationInstancePlatform
  ( CapacityReservationInstancePlatform
      ( ..,
        CapacityReservationInstancePlatformLinuxUNIX,
        CapacityReservationInstancePlatformLinuxWithSQLServerEnterprise,
        CapacityReservationInstancePlatformLinuxWithSQLServerStandard,
        CapacityReservationInstancePlatformLinuxWithSQLServerWeb,
        CapacityReservationInstancePlatformRedHatEnterpriseLinux,
        CapacityReservationInstancePlatformSUSELinux,
        CapacityReservationInstancePlatformWindows,
        CapacityReservationInstancePlatformWindowsWithSQLServer,
        CapacityReservationInstancePlatformWindowsWithSQLServerEnterprise,
        CapacityReservationInstancePlatformWindowsWithSQLServerStandard,
        CapacityReservationInstancePlatformWindowsWithSQLServerWeb
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype CapacityReservationInstancePlatform = CapacityReservationInstancePlatform'
  { fromCapacityReservationInstancePlatform ::
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

pattern CapacityReservationInstancePlatformLinuxUNIX :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformLinuxUNIX = CapacityReservationInstancePlatform' "Linux/UNIX"

pattern CapacityReservationInstancePlatformLinuxWithSQLServerEnterprise :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformLinuxWithSQLServerEnterprise = CapacityReservationInstancePlatform' "Linux with SQL Server Enterprise"

pattern CapacityReservationInstancePlatformLinuxWithSQLServerStandard :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformLinuxWithSQLServerStandard = CapacityReservationInstancePlatform' "Linux with SQL Server Standard"

pattern CapacityReservationInstancePlatformLinuxWithSQLServerWeb :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformLinuxWithSQLServerWeb = CapacityReservationInstancePlatform' "Linux with SQL Server Web"

pattern CapacityReservationInstancePlatformRedHatEnterpriseLinux :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformRedHatEnterpriseLinux = CapacityReservationInstancePlatform' "Red Hat Enterprise Linux"

pattern CapacityReservationInstancePlatformSUSELinux :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformSUSELinux = CapacityReservationInstancePlatform' "SUSE Linux"

pattern CapacityReservationInstancePlatformWindows :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformWindows = CapacityReservationInstancePlatform' "Windows"

pattern CapacityReservationInstancePlatformWindowsWithSQLServer :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformWindowsWithSQLServer = CapacityReservationInstancePlatform' "Windows with SQL Server"

pattern CapacityReservationInstancePlatformWindowsWithSQLServerEnterprise :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformWindowsWithSQLServerEnterprise = CapacityReservationInstancePlatform' "Windows with SQL Server Enterprise"

pattern CapacityReservationInstancePlatformWindowsWithSQLServerStandard :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformWindowsWithSQLServerStandard = CapacityReservationInstancePlatform' "Windows with SQL Server Standard"

pattern CapacityReservationInstancePlatformWindowsWithSQLServerWeb :: CapacityReservationInstancePlatform
pattern CapacityReservationInstancePlatformWindowsWithSQLServerWeb = CapacityReservationInstancePlatform' "Windows with SQL Server Web"

{-# COMPLETE
  CapacityReservationInstancePlatformLinuxUNIX,
  CapacityReservationInstancePlatformLinuxWithSQLServerEnterprise,
  CapacityReservationInstancePlatformLinuxWithSQLServerStandard,
  CapacityReservationInstancePlatformLinuxWithSQLServerWeb,
  CapacityReservationInstancePlatformRedHatEnterpriseLinux,
  CapacityReservationInstancePlatformSUSELinux,
  CapacityReservationInstancePlatformWindows,
  CapacityReservationInstancePlatformWindowsWithSQLServer,
  CapacityReservationInstancePlatformWindowsWithSQLServerEnterprise,
  CapacityReservationInstancePlatformWindowsWithSQLServerStandard,
  CapacityReservationInstancePlatformWindowsWithSQLServerWeb,
  CapacityReservationInstancePlatform'
  #-}

instance Prelude.FromText CapacityReservationInstancePlatform where
  parser = CapacityReservationInstancePlatform' Prelude.<$> Prelude.takeText

instance Prelude.ToText CapacityReservationInstancePlatform where
  toText (CapacityReservationInstancePlatform' x) = x

instance Prelude.Hashable CapacityReservationInstancePlatform

instance Prelude.NFData CapacityReservationInstancePlatform

instance Prelude.ToByteString CapacityReservationInstancePlatform

instance Prelude.ToQuery CapacityReservationInstancePlatform

instance Prelude.ToHeader CapacityReservationInstancePlatform

instance Prelude.FromXML CapacityReservationInstancePlatform where
  parseXML = Prelude.parseXMLText "CapacityReservationInstancePlatform"
