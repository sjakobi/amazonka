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
-- Module      : Network.AWS.SSM.Types.OperatingSystem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OperatingSystem
  ( OperatingSystem
      ( ..,
        OperatingSystemAMAZONLINUX,
        OperatingSystemAMAZONLINUX2,
        OperatingSystemCENTOS,
        OperatingSystemDEBIAN,
        OperatingSystemMACOS,
        OperatingSystemORACLELINUX,
        OperatingSystemREDHATENTERPRISELINUX,
        OperatingSystemSUSE,
        OperatingSystemUBUNTU,
        OperatingSystemWINDOWS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OperatingSystem = OperatingSystem'
  { fromOperatingSystem ::
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

pattern OperatingSystemAMAZONLINUX :: OperatingSystem
pattern OperatingSystemAMAZONLINUX = OperatingSystem' "AMAZON_LINUX"

pattern OperatingSystemAMAZONLINUX2 :: OperatingSystem
pattern OperatingSystemAMAZONLINUX2 = OperatingSystem' "AMAZON_LINUX_2"

pattern OperatingSystemCENTOS :: OperatingSystem
pattern OperatingSystemCENTOS = OperatingSystem' "CENTOS"

pattern OperatingSystemDEBIAN :: OperatingSystem
pattern OperatingSystemDEBIAN = OperatingSystem' "DEBIAN"

pattern OperatingSystemMACOS :: OperatingSystem
pattern OperatingSystemMACOS = OperatingSystem' "MACOS"

pattern OperatingSystemORACLELINUX :: OperatingSystem
pattern OperatingSystemORACLELINUX = OperatingSystem' "ORACLE_LINUX"

pattern OperatingSystemREDHATENTERPRISELINUX :: OperatingSystem
pattern OperatingSystemREDHATENTERPRISELINUX = OperatingSystem' "REDHAT_ENTERPRISE_LINUX"

pattern OperatingSystemSUSE :: OperatingSystem
pattern OperatingSystemSUSE = OperatingSystem' "SUSE"

pattern OperatingSystemUBUNTU :: OperatingSystem
pattern OperatingSystemUBUNTU = OperatingSystem' "UBUNTU"

pattern OperatingSystemWINDOWS :: OperatingSystem
pattern OperatingSystemWINDOWS = OperatingSystem' "WINDOWS"

{-# COMPLETE
  OperatingSystemAMAZONLINUX,
  OperatingSystemAMAZONLINUX2,
  OperatingSystemCENTOS,
  OperatingSystemDEBIAN,
  OperatingSystemMACOS,
  OperatingSystemORACLELINUX,
  OperatingSystemREDHATENTERPRISELINUX,
  OperatingSystemSUSE,
  OperatingSystemUBUNTU,
  OperatingSystemWINDOWS,
  OperatingSystem'
  #-}

instance Prelude.FromText OperatingSystem where
  parser = OperatingSystem' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperatingSystem where
  toText (OperatingSystem' x) = x

instance Prelude.Hashable OperatingSystem

instance Prelude.NFData OperatingSystem

instance Prelude.ToByteString OperatingSystem

instance Prelude.ToQuery OperatingSystem

instance Prelude.ToHeader OperatingSystem

instance Prelude.ToJSON OperatingSystem where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OperatingSystem where
  parseJSON = Prelude.parseJSONText "OperatingSystem"
