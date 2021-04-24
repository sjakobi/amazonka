{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CRIPLinuxUnix,
        CRIPLinuxWithSqlServerEnterprise,
        CRIPLinuxWithSqlServerStandard,
        CRIPLinuxWithSqlServerWeb,
        CRIPRedHatEnterpriseLinux,
        CRIPSuseLinux,
        CRIPWindows,
        CRIPWindowsWithSqlServer,
        CRIPWindowsWithSqlServerEnterprise,
        CRIPWindowsWithSqlServerStandard,
        CRIPWindowsWithSqlServerWeb
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data CapacityReservationInstancePlatform
  = CapacityReservationInstancePlatform'
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

pattern CRIPLinuxUnix :: CapacityReservationInstancePlatform
pattern CRIPLinuxUnix = CapacityReservationInstancePlatform' "Linux/UNIX"

pattern CRIPLinuxWithSqlServerEnterprise :: CapacityReservationInstancePlatform
pattern CRIPLinuxWithSqlServerEnterprise = CapacityReservationInstancePlatform' "Linux with SQL Server Enterprise"

pattern CRIPLinuxWithSqlServerStandard :: CapacityReservationInstancePlatform
pattern CRIPLinuxWithSqlServerStandard = CapacityReservationInstancePlatform' "Linux with SQL Server Standard"

pattern CRIPLinuxWithSqlServerWeb :: CapacityReservationInstancePlatform
pattern CRIPLinuxWithSqlServerWeb = CapacityReservationInstancePlatform' "Linux with SQL Server Web"

pattern CRIPRedHatEnterpriseLinux :: CapacityReservationInstancePlatform
pattern CRIPRedHatEnterpriseLinux = CapacityReservationInstancePlatform' "Red Hat Enterprise Linux"

pattern CRIPSuseLinux :: CapacityReservationInstancePlatform
pattern CRIPSuseLinux = CapacityReservationInstancePlatform' "SUSE Linux"

pattern CRIPWindows :: CapacityReservationInstancePlatform
pattern CRIPWindows = CapacityReservationInstancePlatform' "Windows"

pattern CRIPWindowsWithSqlServer :: CapacityReservationInstancePlatform
pattern CRIPWindowsWithSqlServer = CapacityReservationInstancePlatform' "Windows with SQL Server"

pattern CRIPWindowsWithSqlServerEnterprise :: CapacityReservationInstancePlatform
pattern CRIPWindowsWithSqlServerEnterprise = CapacityReservationInstancePlatform' "Windows with SQL Server Enterprise"

pattern CRIPWindowsWithSqlServerStandard :: CapacityReservationInstancePlatform
pattern CRIPWindowsWithSqlServerStandard = CapacityReservationInstancePlatform' "Windows with SQL Server Standard"

pattern CRIPWindowsWithSqlServerWeb :: CapacityReservationInstancePlatform
pattern CRIPWindowsWithSqlServerWeb = CapacityReservationInstancePlatform' "Windows with SQL Server Web"

{-# COMPLETE
  CRIPLinuxUnix,
  CRIPLinuxWithSqlServerEnterprise,
  CRIPLinuxWithSqlServerStandard,
  CRIPLinuxWithSqlServerWeb,
  CRIPRedHatEnterpriseLinux,
  CRIPSuseLinux,
  CRIPWindows,
  CRIPWindowsWithSqlServer,
  CRIPWindowsWithSqlServerEnterprise,
  CRIPWindowsWithSqlServerStandard,
  CRIPWindowsWithSqlServerWeb,
  CapacityReservationInstancePlatform'
  #-}

instance FromText CapacityReservationInstancePlatform where
  parser = (CapacityReservationInstancePlatform' . mk) <$> takeText

instance ToText CapacityReservationInstancePlatform where
  toText (CapacityReservationInstancePlatform' ci) = original ci

instance Hashable CapacityReservationInstancePlatform

instance NFData CapacityReservationInstancePlatform

instance ToByteString CapacityReservationInstancePlatform

instance ToQuery CapacityReservationInstancePlatform

instance ToHeader CapacityReservationInstancePlatform

instance FromXML CapacityReservationInstancePlatform where
  parseXML = parseXMLText "CapacityReservationInstancePlatform"
