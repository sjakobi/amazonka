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
-- Module      : Network.AWS.GameLift.Types.OperatingSystem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.OperatingSystem
  ( OperatingSystem
      ( ..,
        OperatingSystemAMAZONLINUX,
        OperatingSystemAMAZONLINUX2,
        OperatingSystemWINDOWS2012
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

pattern OperatingSystemWINDOWS2012 :: OperatingSystem
pattern OperatingSystemWINDOWS2012 = OperatingSystem' "WINDOWS_2012"

{-# COMPLETE
  OperatingSystemAMAZONLINUX,
  OperatingSystemAMAZONLINUX2,
  OperatingSystemWINDOWS2012,
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
